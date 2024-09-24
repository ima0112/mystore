// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i9;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i5;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import '../../features/authentication/presentation/bloc/onboarding_controller/onboarding_controller_cubit.dart'
    as _i16;
import '../local_storage/shared_preferences/shared_preferences_data_source.dart'
    as _i7;
import '../local_storage/shared_preferences/shared_preferences_data_source_impl.dart'
    as _i8;
import '../repositories/onboarding/onboarding_repository.dart' as _i12;
import '../repositories/onboarding/onboarding_repository_impl.dart' as _i13;
import '../usecases/onboarding/is_onboarding_complete.dart' as _i15;
import '../usecases/onboarding/set_onboarding_complete.dart' as _i14;
import '../utils/http_client/dio_client.dart' as _i11;
import '../utils/http_client/http_client.dart' as _i10;
import '../utils/local_storage/isar_storage.dart' as _i4;
import '../utils/local_storage/local_storage.dart' as _i3;
import 'register_module.dart' as _i17;

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
  gh.factory<_i3.MyLocalStorage>(() => _i4.MyIsarStorage(gh<_i5.Isar>()));
  await gh.factoryAsync<_i6.SharedPreferences>(
    () => registerModule.prefs(),
    preResolve: true,
  );
  gh.lazySingleton<_i7.SharedPreferencesDataSource>(
      () => _i8.SharedPreferencesDataSourceImpl(gh<_i6.SharedPreferences>()));
  gh.factory<String>(
    () => registerModule.baseUrl,
    instanceName: 'BaseUrl',
  );
  gh.lazySingleton<_i9.Dio>(
      () => registerModule.client(gh<String>(instanceName: 'BaseUrl')));
  gh.factory<_i10.MyHttpClient>(() => _i11.MyDioClient(dio: gh<_i9.Dio>()));
  gh.lazySingleton<_i12.OnboardingRepository>(() =>
      _i13.OnboardingRepositoryImpl(gh<_i7.SharedPreferencesDataSource>()));
  gh.lazySingleton<_i14.SetOnboardingComplete>(() =>
      _i14.SetOnboardingComplete(repository: gh<_i12.OnboardingRepository>()));
  gh.lazySingleton<_i15.IsOnboardingComplete>(() =>
      _i15.IsOnboardingComplete(repository: gh<_i12.OnboardingRepository>()));
  gh.factory<_i16.OnboardingControllerCubit>(
      () => _i16.OnboardingControllerCubit(gh<_i14.SetOnboardingComplete>()));
  return getIt;
}

class _$RegisterModule extends _i17.RegisterModule {}
