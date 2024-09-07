// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i7;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i5;
import 'package:shared_preferences/shared_preferences.dart' as _i6;

import 'data/services/onboarding_service.dart' as _i10;
import 'features/authentication/bloc/onboarding_controller/onboarding_controller_cubit.dart'
    as _i11;
import 'register_module.dart' as _i12;
import 'utils/http_client/dio_client.dart' as _i9;
import 'utils/http_client/http_client.dart' as _i8;
import 'utils/local_storage/isar_storage.dart' as _i4;
import 'utils/local_storage/local_storage.dart' as _i3;

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
  gh.factory<String>(
    () => registerModule.baseUrl,
    instanceName: 'BaseUrl',
  );
  gh.lazySingleton<_i7.Dio>(
      () => registerModule.client(gh<String>(instanceName: 'BaseUrl')));
  gh.factory<_i8.MyHttpClient>(() => _i9.MyDioClient(dio: gh<_i7.Dio>()));
  gh.lazySingleton<_i10.OnboardingService>(
      () => _i10.OnboardingService(gh<_i6.SharedPreferences>()));
  gh.factory<_i11.OnboardingControllerCubit>(
      () => _i11.OnboardingControllerCubit(gh<_i10.OnboardingService>()));
  return getIt;
}

class _$RegisterModule extends _i12.RegisterModule {}
