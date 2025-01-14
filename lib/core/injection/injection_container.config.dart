// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:io' as _i3;

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:dio/dio.dart' as _i21;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i6;
import 'package:shared_preferences/shared_preferences.dart' as _i14;

import '../../features/authentication/data/data_sources/local_data_source.dart'
    as _i7;
import '../../features/authentication/data/data_sources/remote_data_source.dart'
    as _i13;
import '../../features/authentication/data/repositories/authentication_repository_impl.dart'
    as _i19;
import '../../features/authentication/domain/repositories/authentication_repository.dart'
    as _i18;
import '../../features/authentication/domain/usecase/check_user_status_use_case.dart'
    as _i20;
import '../../features/authentication/domain/usecase/logout_user_use_case.dart'
    as _i23;
import '../../features/authentication/domain/usecase/register_form_validation_use_case.dart'
    as _i12;
import '../../features/authentication/domain/usecase/register_user_use_case.dart'
    as _i28;
import '../../features/authentication/domain/usecase/send_email_verification_use_case.dart'
    as _i29;
import '../../features/authentication/presentation/bloc/authentication/authentication_bloc.dart'
    as _i31;
import '../../features/authentication/presentation/bloc/onboarding_controller/onboarding_controller_cubit.dart'
    as _i33;
import '../../features/authentication/presentation/bloc/sign_up_form/sign_up_form_bloc.dart'
    as _i17;
import '../local_storage/shared_preferences/shared_preferences_data_source.dart'
    as _i15;
import '../local_storage/shared_preferences/shared_preferences_data_source_impl.dart'
    as _i16;
import '../repositories/network/network_info_repository.dart' as _i10;
import '../repositories/network/network_info_repository_impl.dart' as _i11;
import '../repositories/onboarding/onboarding_repository.dart' as _i26;
import '../repositories/onboarding/onboarding_repository_impl.dart' as _i27;
import '../usecases/network/is_connected.dart' as _i22;
import '../usecases/onboarding/is_onboarding_complete.dart' as _i32;
import '../usecases/onboarding/set_onboarding_complete.dart' as _i30;
import '../utils/http_client/dio_client.dart' as _i25;
import '../utils/http_client/http_client.dart' as _i24;
import '../utils/local_storage/isar_storage.dart' as _i9;
import '../utils/local_storage/local_storage.dart' as _i8;
import 'register_module.dart' as _i34;

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
  gh.factory<_i17.SignUpFormBloc>(
      () => _i17.SignUpFormBloc(gh<_i12.RegisterFormValidationUseCase>()));
  gh.factory<String>(
    () => registerModule.baseUrl,
    instanceName: 'BaseUrl',
  );
  gh.factory<_i18.AuthenticationRepository>(
      () => _i19.AuthenticationRepositoryImpl(
            remoteDataSource: gh<_i13.RemoteDataSource>(),
            localDataSource: gh<_i7.LocalDataSource>(),
          ));
  gh.factory<_i20.CheckUserStatusUseCase>(() => _i20.CheckUserStatusUseCase(
      repository: gh<_i18.AuthenticationRepository>()));
  gh.lazySingleton<_i21.Dio>(
      () => registerModule.client(gh<String>(instanceName: 'BaseUrl')));
  gh.lazySingleton<_i22.IsConnectedUseCase>(() => _i22.IsConnectedUseCase(
      networkInfoRepository: gh<_i10.NetworkInfoRepository>()));
  gh.lazySingleton<_i23.LogoutUserUseCase>(() =>
      _i23.LogoutUserUseCase(repository: gh<_i18.AuthenticationRepository>()));
  gh.factory<_i24.MyHttpClient>(() => _i25.MyDioClient(dio: gh<_i21.Dio>()));
  gh.lazySingleton<_i26.OnboardingRepository>(() =>
      _i27.OnboardingRepositoryImpl(gh<_i15.SharedPreferencesDataSource>()));
  gh.lazySingleton<_i28.RegisterUserUseCase>(
      () => _i28.RegisterUserUseCase(gh<_i18.AuthenticationRepository>()));
  gh.lazySingleton<_i29.SendEmailVerificationUseCase>(() =>
      _i29.SendEmailVerificationUseCase(gh<_i18.AuthenticationRepository>()));
  gh.lazySingleton<_i30.SetOnboardingComplete>(() =>
      _i30.SetOnboardingComplete(repository: gh<_i26.OnboardingRepository>()));
  gh.factory<_i31.AuthenticationBloc>(() => _i31.AuthenticationBloc(
        gh<_i23.LogoutUserUseCase>(),
        gh<_i22.IsConnectedUseCase>(),
        gh<_i28.RegisterUserUseCase>(),
        gh<_i20.CheckUserStatusUseCase>(),
        gh<_i29.SendEmailVerificationUseCase>(),
      ));
  gh.lazySingleton<_i32.IsOnboardingComplete>(() =>
      _i32.IsOnboardingComplete(repository: gh<_i26.OnboardingRepository>()));
  gh.factory<_i33.OnboardingControllerCubit>(
      () => _i33.OnboardingControllerCubit(gh<_i30.SetOnboardingComplete>()));
  return getIt;
}

class _$RegisterModule extends _i34.RegisterModule {}
