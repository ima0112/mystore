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
import 'package:shared_preferences/shared_preferences.dart' as _i16;

import '../../common/data/data_source/secure_storage/secure_storage_data_source.dart'
    as _i14;
import '../../common/data/data_source/secure_storage/secure_storage_data_source_impl.dart'
    as _i15;
import '../../common/data/data_source/shared_preferences/shared_preferences_data_source.dart'
    as _i17;
import '../../common/data/data_source/shared_preferences/shared_preferences_data_source_impl.dart'
    as _i18;
import '../../common/data/data_source/user/user_local_data_source.dart' as _i20;
import '../../common/data/data_source/user/user_remote_data_source.dart'
    as _i21;
import '../../common/data/repositories/network_info_repository_impl.dart'
    as _i13;
import '../../common/data/repositories/onboarding_repository_impl.dart' as _i36;
import '../../common/data/repositories/user_repository_impl.dart' as _i23;
import '../../common/domain/repositories/network_info_repository.dart' as _i12;
import '../../common/domain/repositories/onboarding_repository.dart' as _i35;
import '../../common/domain/repositories/user_repository.dart' as _i22;
import '../../common/domain/usecases/form_validation_use_case.dart' as _i7;
import '../../common/domain/usecases/is_connected_use_case.dart' as _i30;
import '../../common/domain/usecases/manage_user_use_case.dart' as _i32;
import '../../common/domain/usecases/onboarding_use_case.dart' as _i37;
import '../../features/authentication/data/data_sources/auth_remote_data_source.dart'
    as _i24;
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
    as _i38;
import '../../features/authentication/domain/usecase/remember_me_use_case.dart'
    as _i39;
import '../../features/authentication/domain/usecase/send_email_verification_use_case.dart'
    as _i40;
import '../../features/authentication/domain/usecase/sign_in.dart' as _i41;
import '../../features/authentication/presentation/bloc/authentication/authentication_bloc.dart'
    as _i44;
import '../../features/authentication/presentation/bloc/onboarding_controller/onboarding_controller_cubit.dart'
    as _i45;
import '../../features/authentication/presentation/bloc/sign_in_form/sign_in_form_bloc.dart'
    as _i42;
import '../../features/authentication/presentation/bloc/sign_up_form/sign_up_form_bloc.dart'
    as _i19;
import '../../features/personalization/presentation/bloc/user/user_bloc.dart'
    as _i43;
import '../utils/http_client/dio_client.dart' as _i34;
import '../utils/http_client/http_client.dart' as _i33;
import '../utils/local_storage/isar_storage.dart' as _i11;
import '../utils/local_storage/local_storage.dart' as _i10;
import 'register_module.dart' as _i46;

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
  gh.lazySingleton<_i14.SecureStorageDataSource>(
      () => _i15.SecureStorageDataSourceImpl(gh<_i6.FlutterSecureStorage>()));
  await gh.factoryAsync<_i16.SharedPreferences>(
    () => registerModule.prefs(),
    preResolve: true,
  );
  gh.lazySingleton<_i17.SharedPreferencesDataSource>(
      () => _i18.SharedPreferencesDataSourceImpl(gh<_i16.SharedPreferences>()));
  gh.factory<_i19.SignUpFormBloc>(
      () => _i19.SignUpFormBloc(gh<_i7.FormValidationUseCase>()));
  gh.factory<String>(
    () => registerModule.baseUrl,
    instanceName: 'BaseUrl',
  );
  gh.factory<_i20.UserLocalDataSource>(
      () => _i20.UserLocalDataSourceImpl(gh<_i9.Isar>()));
  gh.factory<_i21.UserRemoteDataSource>(() => _i21.UserRemoteDataSourceImpl(
        gh<_i5.FirebaseFirestore>(),
        gh<_i4.FirebaseAuth>(),
      ));
  gh.factory<_i22.UserRepository>(() => _i23.UserRepositoryImpl(
        gh<_i20.UserLocalDataSource>(),
        gh<_i21.UserRemoteDataSource>(),
      ));
  gh.factory<_i24.AuthRemoteDataSource>(() => _i24.AuthRemoteDataSourceImpl(
        gh<_i4.FirebaseAuth>(),
        gh<_i5.FirebaseFirestore>(),
        gh<_i8.GoogleSignIn>(),
      ));
  gh.factory<_i25.AuthenticationRepository>(
      () => _i26.AuthenticationRepositoryImpl(
            gh<_i14.SecureStorageDataSource>(),
            gh<_i24.AuthRemoteDataSource>(),
            gh<_i20.UserLocalDataSource>(),
            gh<_i17.SharedPreferencesDataSource>(),
            gh<_i21.UserRemoteDataSource>(),
          ));
  gh.factory<_i27.CheckUserStatusUseCase>(
      () => _i27.CheckUserStatusUseCase(repository: gh<_i22.UserRepository>()));
  gh.lazySingleton<_i28.Dio>(
      () => registerModule.client(gh<String>(instanceName: 'BaseUrl')));
  gh.factory<_i29.ForgetPasswordUseCase>(
      () => _i29.ForgetPasswordUseCase(gh<_i25.AuthenticationRepository>()));
  gh.lazySingleton<_i30.IsConnectedUseCase>(() => _i30.IsConnectedUseCase(
      networkInfoRepository: gh<_i12.NetworkInfoRepository>()));
  gh.lazySingleton<_i31.LogoutUserUseCase>(() =>
      _i31.LogoutUserUseCase(repository: gh<_i25.AuthenticationRepository>()));
  gh.factory<_i32.ManageUserUseCase>(
      () => _i32.ManageUserUseCase(gh<_i22.UserRepository>()));
  gh.factory<_i33.MyHttpClient>(() => _i34.MyDioClient(dio: gh<_i28.Dio>()));
  gh.lazySingleton<_i35.OnboardingRepository>(() =>
      _i36.OnboardingRepositoryImpl(gh<_i17.SharedPreferencesDataSource>()));
  gh.lazySingleton<_i37.OnboardingUseCase>(() =>
      _i37.OnboardingUseCase(repository: gh<_i35.OnboardingRepository>()));
  gh.lazySingleton<_i38.RegisterUserUseCase>(
      () => _i38.RegisterUserUseCase(gh<_i25.AuthenticationRepository>()));
  gh.factory<_i39.RememberMeUseCase>(() =>
      _i39.RememberMeUseCase(repository: gh<_i25.AuthenticationRepository>()));
  gh.lazySingleton<_i40.SendEmailVerificationUseCase>(() =>
      _i40.SendEmailVerificationUseCase(gh<_i25.AuthenticationRepository>()));
  gh.factory<_i41.SignIn>(
      () => _i41.SignIn(gh<_i25.AuthenticationRepository>()));
  gh.factory<_i42.SignInFormBloc>(() => _i42.SignInFormBloc(
        gh<_i7.FormValidationUseCase>(),
        gh<_i39.RememberMeUseCase>(),
      ));
  gh.factory<_i43.UserBloc>(() => _i43.UserBloc(gh<_i32.ManageUserUseCase>()));
  gh.factory<_i44.AuthenticationBloc>(() => _i44.AuthenticationBloc(
        gh<_i31.LogoutUserUseCase>(),
        gh<_i30.IsConnectedUseCase>(),
        gh<_i38.RegisterUserUseCase>(),
        gh<_i27.CheckUserStatusUseCase>(),
        gh<_i40.SendEmailVerificationUseCase>(),
        gh<_i41.SignIn>(),
        gh<_i39.RememberMeUseCase>(),
        gh<_i29.ForgetPasswordUseCase>(),
      ));
  gh.factory<_i45.OnboardingControllerCubit>(
      () => _i45.OnboardingControllerCubit(gh<_i37.OnboardingUseCase>()));
  return getIt;
}

class _$RegisterModule extends _i46.RegisterModule {}
