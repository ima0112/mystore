// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:io' as _i3;

import 'package:cloud_firestore/cloud_firestore.dart' as _i5;
import 'package:dio/dio.dart' as _i32;
import 'package:firebase_auth/firebase_auth.dart' as _i4;
import 'package:firebase_storage/firebase_storage.dart' as _i6;
import 'package:flutter_secure_storage/flutter_secure_storage.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:google_sign_in/google_sign_in.dart' as _i9;
import 'package:image_picker/image_picker.dart' as _i10;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i13;
import 'package:shared_preferences/shared_preferences.dart' as _i20;

import '../../common/data/data_source/image_picker/image_picker_data_source.dart'
    as _i11;
import '../../common/data/data_source/image_picker/image_picker_data_source_impl.dart'
    as _i12;
import '../../common/data/data_source/secure_storage/secure_storage_data_source.dart'
    as _i18;
import '../../common/data/data_source/secure_storage/secure_storage_data_source_impl.dart'
    as _i19;
import '../../common/data/data_source/shared_preferences/shared_preferences_data_source.dart'
    as _i21;
import '../../common/data/data_source/shared_preferences/shared_preferences_data_source_impl.dart'
    as _i22;
import '../../common/data/data_source/user/user_local_data_source.dart' as _i24;
import '../../common/data/data_source/user/user_remote_data_source.dart'
    as _i25;
import '../../common/data/repositories/file_storage_repository_impl.dart'
    as _i34;
import '../../common/data/repositories/network_info_repository_impl.dart'
    as _i17;
import '../../common/data/repositories/onboarding_repository_impl.dart' as _i42;
import '../../common/data/repositories/user_repository_impl.dart' as _i27;
import '../../common/domain/repositories/file_storage_repository.dart' as _i33;
import '../../common/domain/repositories/network_info_repository.dart' as _i16;
import '../../common/domain/repositories/onboarding_repository.dart' as _i41;
import '../../common/domain/repositories/user_repository.dart' as _i26;
import '../../common/domain/usecases/form_validation_use_case.dart' as _i8;
import '../../common/domain/usecases/is_connected_use_case.dart' as _i36;
import '../../common/domain/usecases/manage_user_use_case.dart' as _i38;
import '../../common/domain/usecases/onboarding_use_case.dart' as _i43;
import '../../features/authentication/data/data_sources/auth_remote_data_source.dart'
    as _i28;
import '../../features/authentication/data/repositories/authentication_repository_impl.dart'
    as _i30;
import '../../features/authentication/domain/repositories/authentication_repository.dart'
    as _i29;
import '../../features/authentication/domain/usecase/check_user_status_use_case.dart'
    as _i31;
import '../../features/authentication/domain/usecase/forget_password_use_case.dart'
    as _i35;
import '../../features/authentication/domain/usecase/logout_user_use_case.dart'
    as _i37;
import '../../features/authentication/domain/usecase/register_user_use_case.dart'
    as _i45;
import '../../features/authentication/domain/usecase/remember_me_use_case.dart'
    as _i46;
import '../../features/authentication/domain/usecase/send_email_verification_use_case.dart'
    as _i47;
import '../../features/authentication/domain/usecase/sign_in.dart' as _i48;
import '../../features/authentication/presentation/bloc/authentication/authentication_bloc.dart'
    as _i51;
import '../../features/authentication/presentation/bloc/onboarding_controller/onboarding_controller_cubit.dart'
    as _i52;
import '../../features/authentication/presentation/bloc/sign_in_form/sign_in_form_bloc.dart'
    as _i49;
import '../../features/authentication/presentation/bloc/sign_up_form/sign_up_form_bloc.dart'
    as _i23;
import '../../features/personalization/domain/usecase/profile_image_use_case.dart'
    as _i44;
import '../../features/personalization/presentation/bloc/user/user_bloc.dart'
    as _i50;
import '../utils/http_client/dio_client.dart' as _i40;
import '../utils/http_client/http_client.dart' as _i39;
import '../utils/local_storage/isar_storage.dart' as _i15;
import '../utils/local_storage/local_storage.dart' as _i14;
import 'register_module.dart' as _i53;

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
  gh.lazySingleton<_i6.FirebaseStorage>(() => registerModule.firebaseStorage);
  gh.lazySingleton<_i7.FlutterSecureStorage>(() => registerModule.storage);
  gh.lazySingleton<_i8.FormValidationUseCase>(
      () => _i8.FormValidationUseCase());
  gh.lazySingleton<_i9.GoogleSignIn>(() => registerModule.googleSignIn);
  gh.lazySingleton<_i10.ImagePicker>(() => registerModule.imagePicker);
  gh.factory<_i11.ImagePickerDataSource>(
      () => _i12.ImagePickerDataSourceImpl(gh<_i10.ImagePicker>()));
  await gh.factoryAsync<_i13.Isar>(
    () => registerModule.bd(gh<_i3.Directory>(instanceName: 'dir')),
    preResolve: true,
  );
  gh.factory<_i14.MyLocalStorage>(() => _i15.MyIsarStorage(gh<_i13.Isar>()));
  gh.lazySingleton<_i16.NetworkInfoRepository>(() => _i17.NetworkInfoImpl());
  gh.lazySingleton<_i18.SecureStorageDataSource>(
      () => _i19.SecureStorageDataSourceImpl(gh<_i7.FlutterSecureStorage>()));
  await gh.factoryAsync<_i20.SharedPreferences>(
    () => registerModule.prefs(),
    preResolve: true,
  );
  gh.lazySingleton<_i21.SharedPreferencesDataSource>(
      () => _i22.SharedPreferencesDataSourceImpl(gh<_i20.SharedPreferences>()));
  gh.factory<_i23.SignUpFormBloc>(
      () => _i23.SignUpFormBloc(gh<_i8.FormValidationUseCase>()));
  gh.factory<String>(
    () => registerModule.baseUrl,
    instanceName: 'BaseUrl',
  );
  gh.factory<_i24.UserLocalDataSource>(
      () => _i24.UserLocalDataSourceImpl(gh<_i13.Isar>()));
  gh.factory<_i25.UserRemoteDataSource>(() => _i25.UserRemoteDataSourceImpl(
        gh<_i5.FirebaseFirestore>(),
        gh<_i4.FirebaseAuth>(),
      ));
  gh.factory<_i26.UserRepository>(() => _i27.UserRepositoryImpl(
        gh<_i24.UserLocalDataSource>(),
        gh<_i25.UserRemoteDataSource>(),
      ));
  gh.factory<_i28.AuthRemoteDataSource>(() => _i28.AuthRemoteDataSourceImpl(
        gh<_i4.FirebaseAuth>(),
        gh<_i5.FirebaseFirestore>(),
        gh<_i9.GoogleSignIn>(),
      ));
  gh.factory<_i29.AuthenticationRepository>(
      () => _i30.AuthenticationRepositoryImpl(
            gh<_i18.SecureStorageDataSource>(),
            gh<_i28.AuthRemoteDataSource>(),
            gh<_i24.UserLocalDataSource>(),
            gh<_i21.SharedPreferencesDataSource>(),
            gh<_i25.UserRemoteDataSource>(),
          ));
  gh.factory<_i31.CheckUserStatusUseCase>(
      () => _i31.CheckUserStatusUseCase(repository: gh<_i26.UserRepository>()));
  gh.lazySingleton<_i32.Dio>(
      () => registerModule.client(gh<String>(instanceName: 'BaseUrl')));
  gh.factory<_i33.FileStorageRepository>(
      () => _i34.FileStorageRepositoryImpl(gh<_i6.FirebaseStorage>()));
  gh.factory<_i35.ForgetPasswordUseCase>(
      () => _i35.ForgetPasswordUseCase(gh<_i29.AuthenticationRepository>()));
  gh.lazySingleton<_i36.IsConnectedUseCase>(() => _i36.IsConnectedUseCase(
      networkInfoRepository: gh<_i16.NetworkInfoRepository>()));
  gh.lazySingleton<_i37.LogoutUserUseCase>(() =>
      _i37.LogoutUserUseCase(repository: gh<_i29.AuthenticationRepository>()));
  gh.factory<_i38.ManageUserUseCase>(
      () => _i38.ManageUserUseCase(gh<_i26.UserRepository>()));
  gh.factory<_i39.MyHttpClient>(() => _i40.MyDioClient(dio: gh<_i32.Dio>()));
  gh.lazySingleton<_i41.OnboardingRepository>(() =>
      _i42.OnboardingRepositoryImpl(gh<_i21.SharedPreferencesDataSource>()));
  gh.lazySingleton<_i43.OnboardingUseCase>(() =>
      _i43.OnboardingUseCase(repository: gh<_i41.OnboardingRepository>()));
  gh.factory<_i44.ProfileImageUseCase>(() => _i44.ProfileImageUseCase(
        gh<_i33.FileStorageRepository>(),
        gh<_i26.UserRepository>(),
      ));
  gh.lazySingleton<_i45.RegisterUserUseCase>(
      () => _i45.RegisterUserUseCase(gh<_i29.AuthenticationRepository>()));
  gh.factory<_i46.RememberMeUseCase>(() =>
      _i46.RememberMeUseCase(repository: gh<_i29.AuthenticationRepository>()));
  gh.lazySingleton<_i47.SendEmailVerificationUseCase>(() =>
      _i47.SendEmailVerificationUseCase(gh<_i29.AuthenticationRepository>()));
  gh.factory<_i48.SignIn>(
      () => _i48.SignIn(gh<_i29.AuthenticationRepository>()));
  gh.factory<_i49.SignInFormBloc>(() => _i49.SignInFormBloc(
        gh<_i8.FormValidationUseCase>(),
        gh<_i46.RememberMeUseCase>(),
      ));
  gh.factory<_i50.UserBloc>(() => _i50.UserBloc(
        gh<_i38.ManageUserUseCase>(),
        gh<_i44.ProfileImageUseCase>(),
      ));
  gh.factory<_i51.AuthenticationBloc>(() => _i51.AuthenticationBloc(
        gh<_i37.LogoutUserUseCase>(),
        gh<_i36.IsConnectedUseCase>(),
        gh<_i45.RegisterUserUseCase>(),
        gh<_i31.CheckUserStatusUseCase>(),
        gh<_i47.SendEmailVerificationUseCase>(),
        gh<_i48.SignIn>(),
        gh<_i46.RememberMeUseCase>(),
        gh<_i35.ForgetPasswordUseCase>(),
      ));
  gh.factory<_i52.OnboardingControllerCubit>(
      () => _i52.OnboardingControllerCubit(gh<_i43.OnboardingUseCase>()));
  return getIt;
}

class _$RegisterModule extends _i53.RegisterModule {}
