// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:io' as _i3;

import 'package:dio/dio.dart' as _i10;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i4;
import 'package:shared_preferences/shared_preferences.dart' as _i7;

import '../../features/authentication/presentation/bloc/onboarding_controller/onboarding_controller_cubit.dart'
    as _i17;
import '../local_storage/shared_preferences/shared_preferences_data_source.dart'
    as _i8;
import '../local_storage/shared_preferences/shared_preferences_data_source_impl.dart'
    as _i9;
import '../repositories/onboarding/onboarding_repository.dart' as _i13;
import '../repositories/onboarding/onboarding_repository_impl.dart' as _i14;
import '../usecases/onboarding/is_onboarding_complete.dart' as _i16;
import '../usecases/onboarding/set_onboarding_complete.dart' as _i15;
import '../utils/http_client/dio_client.dart' as _i12;
import '../utils/http_client/http_client.dart' as _i11;
import '../utils/local_storage/isar_storage.dart' as _i6;
import '../utils/local_storage/local_storage.dart' as _i5;
import 'register_module.dart' as _i18;

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
  await gh.factoryAsync<_i4.Isar>(
    () => registerModule.bd(gh<_i3.Directory>(instanceName: 'dir')),
    preResolve: true,
  );
  gh.factory<_i5.MyLocalStorage>(() => _i6.MyIsarStorage(gh<_i4.Isar>()));
  await gh.factoryAsync<_i7.SharedPreferences>(
    () => registerModule.prefs(),
    preResolve: true,
  );
  gh.lazySingleton<_i8.SharedPreferencesDataSource>(
      () => _i9.SharedPreferencesDataSourceImpl(gh<_i7.SharedPreferences>()));
  gh.factory<String>(
    () => registerModule.baseUrl,
    instanceName: 'BaseUrl',
  );
  gh.lazySingleton<_i10.Dio>(
      () => registerModule.client(gh<String>(instanceName: 'BaseUrl')));
  gh.factory<_i11.MyHttpClient>(() => _i12.MyDioClient(dio: gh<_i10.Dio>()));
  gh.lazySingleton<_i13.OnboardingRepository>(() =>
      _i14.OnboardingRepositoryImpl(gh<_i8.SharedPreferencesDataSource>()));
  gh.lazySingleton<_i15.SetOnboardingComplete>(() =>
      _i15.SetOnboardingComplete(repository: gh<_i13.OnboardingRepository>()));
  gh.lazySingleton<_i16.IsOnboardingComplete>(() =>
      _i16.IsOnboardingComplete(repository: gh<_i13.OnboardingRepository>()));
  gh.factory<_i17.OnboardingControllerCubit>(
      () => _i17.OnboardingControllerCubit(gh<_i15.SetOnboardingComplete>()));
  return getIt;
}

class _$RegisterModule extends _i18.RegisterModule {}
