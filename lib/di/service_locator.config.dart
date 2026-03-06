// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:dio/dio.dart' as _i361;
import 'package:fox_player/core/app_config.dart' as _i680;
import 'package:fox_player/core/network/dio_provider.dart' as _i508;
import 'package:fox_player/core/network/network_module.dart' as _i342;
import 'package:fox_player/core/router/router_manager.dart' as _i819;
import 'package:fox_player/services/auth_service.dart' as _i777;
import 'package:fox_player/services/mine_service.dart' as _i12;
import 'package:fox_player/services/video_service.dart' as _i120;
import 'package:fox_player/viewmodels/auth_view_model.dart' as _i728;
import 'package:fox_player/viewmodels/mine_view_model.dart' as _i232;
import 'package:fox_player/viewmodels/video_view_model.dart' as _i13;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
  // initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(this, environment, environmentFilter);
    final networkModule = _$NetworkModule();
    gh.factory<_i728.AuthViewModel>(() => _i728.AuthViewModel());
    gh.singleton<_i680.AppConfig>(() => _i680.AppConfig());
    gh.singleton<_i361.Dio>(() => networkModule.dio);
    gh.lazySingleton<_i819.RouterManager>(() => _i819.RouterManager());
    gh.singleton<_i508.DioProvider>(() => _i508.DioProvider(gh<_i361.Dio>()));
    gh.lazySingleton<_i777.AuthService>(
      () => _i777.AuthService(gh<_i508.DioProvider>()),
    );
    gh.lazySingleton<_i12.MineService>(
      () => _i12.MineService(gh<_i508.DioProvider>()),
    );
    gh.lazySingleton<_i120.VideoService>(
      () => _i120.VideoService(gh<_i508.DioProvider>()),
    );
    gh.factory<_i13.VideoViewModel>(
      () => _i13.VideoViewModel(gh<_i120.VideoService>()),
    );
    gh.factory<_i232.MineViewModel>(
      () => _i232.MineViewModel(gh<_i12.MineService>()),
    );
    return this;
  }
}

class _$NetworkModule extends _i342.NetworkModule {}
