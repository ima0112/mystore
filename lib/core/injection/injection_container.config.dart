// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:io' as _i3;

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:dio/dio.dart' as _i28;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i8;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i9;
import 'package:shared_preferences/shared_preferences.dart' as _i17;

import '../../common/data/data_source/secure_storage/secure_storage_data_source.dart'
    as _i15;
import '../../common/data/data_source/secure_storage/secure_storage_data_source_impl.dart'
    as _i16;
import '../../common/data/data_source/shared_preferences/shared_preferences_data_source.dart'
    as _i18;
import '../../common/data/data_source/shared_preferences/shared_preferences_data_source_impl.dart'
    as _i19;
import '../../common/data/data_source/user_local_data_source.dart' as _i21;
import '../../common/data/data_source/user_remote_data_source.dart' as _i22;
import '../../common/data/repositories/network_info_repository_impl.dart'
    as _i13;
import '../../common/data/repositories/onboarding_repository_impl.dart' as _i35;
import '../../common/data/repositories/user_repository_impl.dart' as _i24;
import '../../common/domain/repositories/network_info_repository.dart' as _i12;
import '../../common/domain/repositories/onboarding_repository.dart' as _i34;
import '../../common/domain/repositories/user_repository.dart' as _i23;
import '../../common/domain/usecases/form_validation_use_case.dart' as _i7;
import '../../common/domain/usecases/is_connected_use_case.dart' as _i30;
import '../../common/domain/usecases/onboarding_use_case.dart' as _i36;
import '../../features/authentication/data/data_sources/auth_remote_data_source.dart'
    as _i14;
import '../../features/authentication/data/repositories/authentication_repository_impl.dart'
    as _i26;
import '../../features/authentication/domain/repositories/authentication_repository.dart'
    as _i25;
import '../../features/authentication/domain/usecase/check_user_status_use_case.dart'
    as _i27;
import '../../features/authentication/domain/usecase/forget_password_use_case.dart'
    as _i29;
import '../../features/authentication/domain/usecase/logout_user_use_case.dart'
    as _i31;
import '../../features/authentication/domain/usecase/register_user_use_case.dart'
    as _i37;
import '../../features/authentication/domain/usecase/remember_me_use_case.dart'
    as _i38;
import '../../features/authentication/domain/usecase/send_email_verification_use_case.dart'
    as _i39;
import '../../features/authentication/domain/usecase/sign_in.dart' as _i40;
import '../../features/authentication/presentation/bloc/authentication/authentication_bloc.dart'
    as _i42;
import '../../features/authentication/presentation/bloc/onboarding_controller/onboarding_controller_cubit.dart'
    as _i43;
import '../../features/authentication/presentation/bloc/sign_in_form/sign_in_form_bloc.dart'
    as _i41;
import '../../features/authentication/presentation/bloc/sign_up_form/sign_up_form_bloc.dart'
    as _i20;
import '../utils/http_client/dio_client.dart' as _i33;
import '../utils/http_client/http_client.dart' as _i32;
import '../utils/local_storage/isar_storage.dart' as _i11;
import '../utils/local_storage/local_storage.dart' as _i10;
import 'register_module.dart' as _i44;

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
  gh.factory<_i10.MyLocalStorage>(() => _i11.MyIsarStorage(gh<_i9.Isar>()));
  gh.lazySingleton<_i12.NetworkInfoRepository>(() => _i13.NetworkInfoImpl());
  gh.factory<_i14.RemoteDataSource>(() => _i14.RemoteDataSourceImpl(
        gh<_i4.FirebaseAuth>(),
        gh<_i5.FirebaseFirestore>(),
        gh<_i8.GoogleSignIn>(),
      ));
  gh.lazySingleton<_i15.SecureStorageDataSource>(
      () => _i16.SecureStorageDataSourceImpl(gh<_i6.FlutterSecureStorage>()));
  await gh.factoryAsync<_i17.SharedPreferences>(
    () => registerModule.prefs(),
    preResolve: true,
  );
  gh.lazySingleton<_i18.SharedPreferencesDataSource>(
      () => _i19.SharedPreferencesDataSourceImpl(gh<_i17.SharedPreferences>()));
  gh.factory<_i20.SignUpFormBloc>(
      () => _i20.SignUpFormBloc(gh<_i7.FormValidationUseCase>()));
  gh.factory<String>(
    () => registerModule.baseUrl,
    instanceName: 'BaseUrl',
  );
  gh.factory<_i21.UserLocalDataSource>(
      () => _i21.UserLocalDataSourceImpl(gh<_i9.Isar>()));
  gh.factory<_i22.UserRemoteDataSource>(
      () => _i22.UserRemoteDataSourceImpl(gh<_i5.FirebaseFirestore>()));
  gh.factory<_i23.UserRepository>(() => _i24.UserRepositoryImpl(
        gh<_i21.UserLocalDataSource>(),
        gh<_i22.UserRemoteDataSource>(),
      ));
  gh.factory<_i25.AuthenticationRepository>(
      () => _i26.AuthenticationRepositoryImpl(
            gh<_i15.SecureStorageDataSource>(),
            gh<_i14.RemoteDataSource>(),
            gh<_i21.UserLocalDataSource>(),
            gh<_i18.SharedPreferencesDataSource>(),
          ));
  gh.factory<_i27.CheckUserStatusUseCase>(() => _i27.CheckUserStatusUseCase(
      repository: gh<_i25.AuthenticationRepository>()));
  gh.lazySingleton<_i28.Dio>(
      () => registerModule.client(gh<String>(instanceName: 'BaseUrl')));
  gh.factory<_i29.ForgetPasswordUseCase>(
      () => _i29.ForgetPasswordUseCase(gh<_i25.AuthenticationRepository>()));
  gh.lazySingleton<_i30.IsConnectedUseCase>(() => _i30.IsConnectedUseCase(
      networkInfoRepository: gh<_i12.NetworkInfoRepository>()));
  gh.lazySingleton<_i31.LogoutUserUseCase>(() =>
      _i31.LogoutUserUseCase(repository: gh<_i25.AuthenticationRepository>()));
  gh.factory<_i32.MyHttpClient>(() => _i33.MyDioClient(dio: gh<_i28.Dio>()));
  gh.lazySingleton<_i34.OnboardingRepository>(() =>
      _i35.OnboardingRepositoryImpl(gh<_i18.SharedPreferencesDataSource>()));
  gh.lazySingleton<_i36.OnboardingUseCase>(() =>
      _i36.OnboardingUseCase(repository: gh<_i34.OnboardingRepository>()));
  gh.lazySingleton<_i37.RegisterUserUseCase>(
      () => _i37.RegisterUserUseCase(gh<_i25.AuthenticationRepository>()));
  gh.factory<_i38.RememberMeUseCase>(() =>
      _i38.RememberMeUseCase(repository: gh<_i25.AuthenticationRepository>()));
  gh.lazySingleton<_i39.SendEmailVerificationUseCase>(() =>
      _i39.SendEmailVerificationUseCase(gh<_i25.AuthenticationRepository>()));
  gh.factory<_i40.SignIn>(
      () => _i40.SignIn(gh<_i25.AuthenticationRepository>()));
  gh.factory<_i41.SignInFormBloc>(() => _i41.SignInFormBloc(
        gh<_i7.FormValidationUseCase>(),
        gh<_i38.RememberMeUseCase>(),
      ));
  gh.factory<_i42.AuthenticationBloc>(() => _i42.AuthenticationBloc(
        gh<_i31.LogoutUserUseCase>(),
        gh<_i30.IsConnectedUseCase>(),
        gh<_i37.RegisterUserUseCase>(),
        gh<_i27.CheckUserStatusUseCase>(),
        gh<_i39.SendEmailVerificationUseCase>(),
        gh<_i40.SignIn>(),
        gh<_i38.RememberMeUseCase>(),
        gh<_i29.ForgetPasswordUseCase>(),
      ));
  gh.factory<_i43.OnboardingControllerCubit>(
      () => _i43.OnboardingControllerCubit(gh<_i36.OnboardingUseCase>()));
  return getIt;
}

class _$RegisterModule extends _i44.RegisterModule {}
