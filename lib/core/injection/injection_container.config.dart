// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:io' as _i3;

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:dio/dio.dart' as _i19;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i6;
import 'package:shared_preferences/shared_preferences.dart' as _i14;

import '../../features/authentication/data/data_sources/local_data_source.dart'
    as _i7;
import '../../features/authentication/data/data_sources/remote_data_source.dart'
    as _i13;
import '../../features/authentication/data/repositories/authentication_repository.dart'
    as _i17;
import '../../features/authentication/domain/repositories/authentication_repository_impl.dart'
    as _i18;
import '../../features/authentication/domain/usecase/register_form_validation_use_case.dart'
    as _i12;
import '../../features/authentication/domain/usecase/register_user_use_case.dart'
    as _i25;
import '../../features/authentication/presentation/bloc/authentication/authentication_bloc.dart'
    as _i27;
import '../../features/authentication/presentation/bloc/onboarding_controller/onboarding_controller_cubit.dart'
    as _i29;
import '../../features/authentication/presentation/bloc/sign_up_form/sign_up_form_bloc.dart'
    as _i30;
import '../local_storage/shared_preferences/shared_preferences_data_source.dart'
    as _i15;
import '../local_storage/shared_preferences/shared_preferences_data_source_impl.dart'
    as _i16;
import '../repositories/network/network_info_repository.dart' as _i10;
import '../repositories/network/network_info_repository_impl.dart' as _i11;
import '../repositories/onboarding/onboarding_repository.dart' as _i23;
import '../repositories/onboarding/onboarding_repository_impl.dart' as _i24;
import '../usecases/network/is_connected.dart' as _i20;
import '../usecases/onboarding/is_onboarding_complete.dart' as _i28;
import '../usecases/onboarding/set_onboarding_complete.dart' as _i26;
import '../utils/http_client/dio_client.dart' as _i22;
import '../utils/http_client/http_client.dart' as _i21;
import '../utils/local_storage/isar_storage.dart' as _i9;
import '../utils/local_storage/local_storage.dart' as _i8;
import 'register_module.dart' as _i31;

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  await gh.factoryAsync<_i3.Directory>(
    () => registerModule.appDocumentsDir(),
    instanceName: 'dir',
    preResolve: true,
  );
  gh.lazySingleton<_i4.FirebaseAuth>(() => registerModule.firebaseAuth);
  gh.lazySingleton<_i5.FirebaseFirestore>(() => registerModule.firestore);
  await gh.factoryAsync<_i6.Isar>(
    () => registerModule.bd(gh<_i3.Directory>(instanceName: 'dir')),
    preResolve: true,
  );
  gh.factory<_i7.LocalDataSource>(
      () => _i7.LocalDataSourceImpl(gh<_i6.Isar>()));
  gh.factory<_i8.MyLocalStorage>(() => _i9.MyIsarStorage(gh<_i6.Isar>()));
  gh.lazySingleton<_i10.NetworkInfoRepository>(() => _i11.NetworkInfoImpl());
  gh.lazySingleton<_i12.RegisterFormValidationUseCase>(
      () => _i12.RegisterFormValidationUseCase());
  gh.factory<_i13.RemoteDataSource>(() => _i13.RemoteDataSourceImpl(
        gh<_i4.FirebaseAuth>(),
        gh<_i5.FirebaseFirestore>(),
      ));
  await gh.factoryAsync<_i14.SharedPreferences>(
    () => registerModule.prefs(),
    preResolve: true,
  );
  gh.lazySingleton<_i15.SharedPreferencesDataSource>(
      () => _i16.SharedPreferencesDataSourceImpl(gh<_i14.SharedPreferences>()));
  gh.factory<String>(
    () => registerModule.baseUrl,
    instanceName: 'BaseUrl',
  );
  gh.factory<_i17.AuthenticationRepository>(
      () => _i18.AuthenticationRepositoryImpl(
            remoteDataSource: gh<_i13.RemoteDataSource>(),
            localDataSource: gh<_i7.LocalDataSource>(),
          ));
  gh.lazySingleton<_i19.Dio>(
      () => registerModule.client(gh<String>(instanceName: 'BaseUrl')));
  gh.lazySingleton<_i20.IsConnectedUseCase>(() => _i20.IsConnectedUseCase(
      networkInfoRepository: gh<_i10.NetworkInfoRepository>()));
  gh.factory<_i21.MyHttpClient>(() => _i22.MyDioClient(dio: gh<_i19.Dio>()));
  gh.lazySingleton<_i23.OnboardingRepository>(() =>
      _i24.OnboardingRepositoryImpl(gh<_i15.SharedPreferencesDataSource>()));
  gh.lazySingleton<_i25.RegisterUserUseCase>(
      () => _i25.RegisterUserUseCase(gh<_i17.AuthenticationRepository>()));
  gh.lazySingleton<_i26.SetOnboardingComplete>(() =>
      _i26.SetOnboardingComplete(repository: gh<_i23.OnboardingRepository>()));
  gh.factory<_i27.AuthenticationBloc>(() => _i27.AuthenticationBloc(
        gh<_i20.IsConnectedUseCase>(),
        gh<_i25.RegisterUserUseCase>(),
      ));
  gh.lazySingleton<_i28.IsOnboardingComplete>(() =>
      _i28.IsOnboardingComplete(repository: gh<_i23.OnboardingRepository>()));
  gh.factory<_i29.OnboardingControllerCubit>(
      () => _i29.OnboardingControllerCubit(gh<_i26.SetOnboardingComplete>()));
  gh.factory<_i30.SignUpFormBloc>(() => _i30.SignUpFormBloc(
        gh<_i12.RegisterFormValidationUseCase>(),
        gh<_i27.AuthenticationBloc>(),
      ));
  return getIt;
}

class _$RegisterModule extends _i31.RegisterModule {}
