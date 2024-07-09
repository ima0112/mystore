// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i6;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:isar/isar.dart' as _i5;

import 'register_module.dart' as _i9;
import 'utils/http_client/dio_client.dart' as _i8;
import 'utils/http_client/http_client.dart' as _i7;
import 'utils/local_storage/isar_storage.dart' as _i4;
import 'utils/local_storage/local_storage.dart' as _i3;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final registerModule = _$RegisterModule();
  gh.factory<_i3.MyLocalStorage>(() => _i4.MyIsarStorage(gh<_i5.Isar>()));
  gh.factory<String>(
    () => registerModule.baseUrl,
    instanceName: 'BaseUrl',
  );
  gh.lazySingleton<_i6.Dio>(
      () => registerModule.client(gh<String>(instanceName: 'BaseUrl')));
  gh.factory<_i7.MyHttpClient>(() => _i8.MyDioClient(dio: gh<_i6.Dio>()));
  return getIt;
}

class _$RegisterModule extends _i9.RegisterModule {}
