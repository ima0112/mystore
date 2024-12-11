// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:io' as _i3;

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:dio/dio.dart' as _i25;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i9;
import 'package:shared_preferences/shared_preferences.dart' as _i18;

import '../../features/authentication/data/data_sources/local_data_source.dart'
    as _i10;
import '../../features/authentication/data/data_sources/remote_data_source.dart'
    as _i15;
import '../../features/authentication/data/repositories/authentication_repository_impl.dart'
    as _i23;
import '../../features/authentication/domain/repositories/authentication_repository.dart'
    as _i22;
import '../../features/authentication/domain/usecase/check_user_status_use_case.dart'
    as _i24;
import '../../features/authentication/domain/usecase/logout_user_use_case.dart'
    as _i27;
import '../../features/authentication/domain/usecase/register_form_validation_use_case.dart'
    as _i7;
import '../../features/authentication/domain/usecase/register_user_use_case.dart'
    as _i32;
import '../../features/authentication/domain/usecase/remember_me_use_case.dart'
    as _i33;
import '../../features/authentication/domain/usecase/send_email_verification_use_case.dart'
    as _i34;
import '../../features/authentication/domain/usecase/sign_in.dart' as _i36;
import '../../features/authentication/presentation/bloc/authentication/authentication_bloc.dart'
    as _i38;
import '../../features/authentication/presentation/bloc/onboarding_controller/onboarding_controller_cubit.dart'
    as _i40;
import '../../features/authentication/presentation/bloc/sign_in_form/sign_in_form_bloc.dart'
    as _i37;
import '../../features/authentication/presentation/bloc/sign_up_form/sign_up_form_bloc.dart'
    as _i21;
import '../local_storage/secure_storage/secure_storage_data_source.dart'
    as _i16;
import '../local_storage/secure_storage/secure_storage_data_source_impl.dart'
    as _i17;
import '../local_storage/shared_preferences/shared_preferences_data_source.dart'
    as _i19;
import '../local_storage/shared_preferences/shared_preferences_data_source_impl.dart'
    as _i20;
import '../repositories/network/network_info_repository.dart' as _i13;
import '../repositories/network/network_info_repository_impl.dart' as _i14;
import '../repositories/onboarding/onboarding_repository.dart' as _i30;
import '../repositories/onboarding/onboarding_repository_impl.dart' as _i31;
import '../usecases/network/is_connected.dart' as _i26;
import '../usecases/onboarding/is_onboarding_complete.dart' as _i39;
import '../usecases/onboarding/set_onboarding_complete.dart' as _i35;
import '../utils/http_client/dio_client.dart' as _i29;
import '../utils/http_client/http_client.dart' as _i28;
import '../utils/local_storage/isar_storage.dart' as _i12;
import '../utils/local_storage/local_storage.dart' as _i11;
import 'register_module.dart' as _i41;

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
  gh.lazySingleton<_i6.FlutterSecureStorage>(() => registerModule.storage);
  gh.lazySingleton<_i7.FormValidationUseCase>(
      () => _i7.FormValidationUseCase());
  gh.lazySingleton<_i8.GoogleSignIn>(() => registerModule.googleSignIn);
  await gh.factoryAsync<_i9.Isar>(
    () => registerModule.bd(gh<_i3.Directory>(instanceName: 'dir')),
    preResolve: true,
  );
  gh.factory<_i10.LocalDataSource>(
      () => _i10.LocalDataSourceImpl(gh<_i9.Isar>()));
  gh.factory<_i11.MyLocalStorage>(() => _i12.MyIsarStorage(gh<_i9.Isar>()));
  gh.lazySingleton<_i13.NetworkInfoRepository>(() => _i14.NetworkInfoImpl());
  gh.factory<_i15.RemoteDataSource>(() => _i15.RemoteDataSourceImpl(
        gh<_i4.FirebaseAuth>(),
        gh<_i5.FirebaseFirestore>(),
        gh<_i8.GoogleSignIn>(),
      ));
  gh.lazySingleton<_i16.SecureStorageDataSource>(
      () => _i17.SecureStorageDataSourceImpl(gh<_i6.FlutterSecureStorage>()));
  await gh.factoryAsync<_i18.SharedPreferences>(
    () => registerModule.prefs(),
    preResolve: true,
  );
  gh.lazySingleton<_i19.SharedPreferencesDataSource>(
      () => _i20.SharedPreferencesDataSourceImpl(gh<_i18.SharedPreferences>()));
  gh.factory<_i21.SignUpFormBloc>(
      () => _i21.SignUpFormBloc(gh<_i7.FormValidationUseCase>()));
  gh.factory<String>(
    () => registerModule.baseUrl,
    instanceName: 'BaseUrl',
  );
  gh.factory<_i22.AuthenticationRepository>(
      () => _i23.AuthenticationRepositoryImpl(
            gh<_i16.SecureStorageDataSource>(),
            gh<_i15.RemoteDataSource>(),
            gh<_i10.LocalDataSource>(),
            gh<_i19.SharedPreferencesDataSource>(),
          ));
  gh.factory<_i24.CheckUserStatusUseCase>(() => _i24.CheckUserStatusUseCase(
      repository: gh<_i22.AuthenticationRepository>()));
  gh.lazySingleton<_i25.Dio>(
      () => registerModule.client(gh<String>(instanceName: 'BaseUrl')));
  gh.lazySingleton<_i26.IsConnectedUseCase>(() => _i26.IsConnectedUseCase(
      networkInfoRepository: gh<_i13.NetworkInfoRepository>()));
  gh.lazySingleton<_i27.LogoutUserUseCase>(() =>
      _i27.LogoutUserUseCase(repository: gh<_i22.AuthenticationRepository>()));
  gh.factory<_i28.MyHttpClient>(() => _i29.MyDioClient(dio: gh<_i25.Dio>()));
  gh.lazySingleton<_i30.OnboardingRepository>(() =>
      _i31.OnboardingRepositoryImpl(gh<_i19.SharedPreferencesDataSource>()));
  gh.lazySingleton<_i32.RegisterUserUseCase>(
      () => _i32.RegisterUserUseCase(gh<_i22.AuthenticationRepository>()));
  gh.factory<_i33.RememberMeUseCase>(() =>
      _i33.RememberMeUseCase(repository: gh<_i22.AuthenticationRepository>()));
  gh.lazySingleton<_i34.SendEmailVerificationUseCase>(() =>
      _i34.SendEmailVerificationUseCase(gh<_i22.AuthenticationRepository>()));
  gh.lazySingleton<_i35.SetOnboardingComplete>(() =>
      _i35.SetOnboardingComplete(repository: gh<_i30.OnboardingRepository>()));
  gh.factory<_i36.SignIn>(
      () => _i36.SignIn(gh<_i22.AuthenticationRepository>()));
  gh.factory<_i37.SignInFormBloc>(() => _i37.SignInFormBloc(
        gh<_i7.FormValidationUseCase>(),
        gh<_i33.RememberMeUseCase>(),
      ));
  gh.factory<_i38.AuthenticationBloc>(() => _i38.AuthenticationBloc(
        gh<_i27.LogoutUserUseCase>(),
        gh<_i26.IsConnectedUseCase>(),
        gh<_i32.RegisterUserUseCase>(),
        gh<_i24.CheckUserStatusUseCase>(),
        gh<_i34.SendEmailVerificationUseCase>(),
        gh<_i36.SignIn>(),
        gh<_i33.RememberMeUseCase>(),
      ));
  gh.lazySingleton<_i39.IsOnboardingComplete>(() =>
      _i39.IsOnboardingComplete(repository: gh<_i30.OnboardingRepository>()));
  gh.factory<_i40.OnboardingControllerCubit>(
      () => _i40.OnboardingControllerCubit(gh<_i35.SetOnboardingComplete>()));
  return getIt;
}

class _$RegisterModule extends _i41.RegisterModule {}
