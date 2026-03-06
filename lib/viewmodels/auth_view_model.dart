import 'package:fox_player/core/utils/logger.dart';
import 'package:fox_player/models/user.dart';
import 'package:fox_player/services/device_user_manager.dart';
import 'package:injectable/injectable.dart';
import 'package:signals_flutter/signals_flutter.dart';

@injectable
class AuthViewModel {
  AuthViewModel();

  final Signal<User?> user = Signal<User?>(null);

  // Future<void> login(String email, String password) async {
  //   user.value = AsyncState.loading();
  //   try {
  //     final data = await _api.login(email, password);
  //     user.value = AsyncState.data(data);
  //   } catch (e) {
  //     user.value = AsyncState.error(e);
  //   }
  // }
  Future<void> load() async {
    try {
      final data = await DeviceUserManager.instance.getOrCreateDefaultUser();
      // Logging.error(data.toString());
      user.value = data;
      // Logging.error(user.toString());
    } catch (e) {
      Logging.error(e.toString());
    }
  }

  Future<void> logout() async {
    await DeviceUserManager.instance.clearUser();
    user.value = user();
  }

  void dispose() {
    user.dispose();
  }
}
