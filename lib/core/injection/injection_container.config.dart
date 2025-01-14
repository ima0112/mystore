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
import 'package:isar/isar.dart' as _i7;
import 'package:shared_preferences/shared_preferences.dart' as _i14;

import '../../features/authentication/data/data_sources/local_data_source.dart'
    as _i8;
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
    as _i6;
import '../../features/authentication/domain/usecase/register_user_use_case.dart'
    as _i28;
import '../../features/authentication/domain/usecase/remember_me_use_case.dart'
    as _i29;
import '../../features/authentication/domain/usecase/send_email_verification_use_case.dart'
    as _i30;
import '../../features/authentication/domain/usecase/sign_in_with_email_password.dart'
    as _i33;
import '../../features/authentication/presentation/bloc/authentication/authentication_bloc.dart'
    as _i34;
import '../../features/authentication/presentation/bloc/onboarding_controller/onboarding_controller_cubit.dart'
    as _i36;
import '../../features/authentication/presentation/bloc/sign_in_form/sign_in_form_bloc.dart'
    as _i32;
import '../../features/authentication/presentation/bloc/sign_up_form/sign_up_form_bloc.dart'
    as _i17;
import '../local_storage/shared_preferences/shared_preferences_data_source.dart'
    as _i15;
import '../local_storage/shared_preferences/shared_preferences_data_source_impl.dart'
    as _i16;
import '../repositories/network/network_info_repository.dart' as _i11;
import '../repositories/network/network_info_repository_impl.dart' as _i12;
import '../repositories/onboarding/onboarding_repository.dart' as _i26;
import '../repositories/onboarding/onboarding_repository_impl.dart' as _i27;
import '../usecases/network/is_connected.dart' as _i22;
import '../usecases/onboarding/is_onboarding_complete.dart' as _i35;
import '../usecases/onboarding/set_onboarding_complete.dart' as _i31;
import '../utils/http_client/dio_client.dart' as _i25;
import '../utils/http_client/http_client.dart' as _i24;
import '../utils/local_storage/isar_storage.dart' as _i10;
import '../utils/local_storage/local_storage.dart' as _i9;
import 'register_module.dart' as _i37;

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
  gh.lazySingleton<_i6.FormValidationUseCase>(
      () => _i6.FormValidationUseCase());
  await gh.factoryAsync<_i7.Isar>(
    () => registerModule.bd(gh<_i3.Directory>(instanceName: 'dir')),
    preResolve: true,
  );
  gh.factory<_i8.LocalDataSource>(
      () => _i8.LocalDataSourceImpl(gh<_i7.Isar>()));
  gh.factory<_i9.MyLocalStorage>(() => _i10.MyIsarStorage(gh<_i7.Isar>()));
  gh.lazySingleton<_i11.NetworkInfoRepository>(() => _i12.NetworkInfoImpl());
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
      () => _i17.SignUpFormBloc(gh<_i6.FormValidationUseCase>()));
  gh.factory<String>(
    () => registerModule.baseUrl,
    instanceName: 'BaseUrl',
  );
  gh.factory<_i18.AuthenticationRepository>(
      () => _i19.AuthenticationRepositoryImpl(
            remoteDataSource: gh<_i13.RemoteDataSource>(),
            localDataSource: gh<_i8.LocalDataSource>(),
            sharedPreferencesDataSource: gh<_i15.SharedPreferencesDataSource>(),
          ));
  gh.factory<_i20.CheckUserStatusUseCase>(() => _i20.CheckUserStatusUseCase(
      repository: gh<_i18.AuthenticationRepository>()));
  gh.lazySingleton<_i21.Dio>(
      () => registerModule.client(gh<String>(instanceName: 'BaseUrl')));
  gh.lazySingleton<_i22.IsConnectedUseCase>(() => _i22.IsConnectedUseCase(
      networkInfoRepository: gh<_i11.NetworkInfoRepository>()));
  gh.lazySingleton<_i23.LogoutUserUseCase>(() =>
      _i23.LogoutUserUseCase(repository: gh<_i18.AuthenticationRepository>()));
  gh.factory<_i24.MyHttpClient>(() => _i25.MyDioClient(dio: gh<_i21.Dio>()));
  gh.lazySingleton<_i26.OnboardingRepository>(() =>
      _i27.OnboardingRepositoryImpl(gh<_i15.SharedPreferencesDataSource>()));
  gh.lazySingleton<_i28.RegisterUserUseCase>(
      () => _i28.RegisterUserUseCase(gh<_i18.AuthenticationRepository>()));
  gh.factory<_i29.RememberMeUseCase>(() =>
      _i29.RememberMeUseCase(repository: gh<_i18.AuthenticationRepository>()));
  gh.lazySingleton<_i30.SendEmailVerificationUseCase>(() =>
      _i30.SendEmailVerificationUseCase(gh<_i18.AuthenticationRepository>()));
  gh.lazySingleton<_i31.SetOnboardingComplete>(() =>
      _i31.SetOnboardingComplete(repository: gh<_i26.OnboardingRepository>()));
  gh.factory<_i32.SignInFormBloc>(() => _i32.SignInFormBloc(
        gh<_i6.FormValidationUseCase>(),
        gh<_i29.RememberMeUseCase>(),
      ));
  gh.factory<_i33.SignInWithEmailAndPasswordUseCase>(() =>
      _i33.SignInWithEmailAndPasswordUseCase(
          gh<_i18.AuthenticationRepository>()));
  gh.factory<_i34.AuthenticationBloc>(() => _i34.AuthenticationBloc(
        gh<_i23.LogoutUserUseCase>(),
        gh<_i22.IsConnectedUseCase>(),
        gh<_i28.RegisterUserUseCase>(),
        gh<_i20.CheckUserStatusUseCase>(),
        gh<_i30.SendEmailVerificationUseCase>(),
        gh<_i33.SignInWithEmailAndPasswordUseCase>(),
        gh<_i29.RememberMeUseCase>(),
      ));
  gh.lazySingleton<_i35.IsOnboardingComplete>(() =>
      _i35.IsOnboardingComplete(repository: gh<_i26.OnboardingRepository>()));
  gh.factory<_i36.OnboardingControllerCubit>(
      () => _i36.OnboardingControllerCubit(gh<_i31.SetOnboardingComplete>()));
  return getIt;
}

class _$RegisterModule extends _i37.RegisterModule {}
