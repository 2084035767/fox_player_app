import 'package:fox_player/core/network/dio_provider.dart';
import 'package:fox_player/core/utils/logger.dart';
import 'package:fox_player/models/user.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class MineService {
  final DioProvider dio;
  MineService(this.dio);

  Future<User> fetchProfile() async {
    try {
      final res = await dio.get('/profile');
      return User.fromJson(res);
    } catch (e) {
      Logging.error('Error fetching profile: $e');
      rethrow;
    }
  }
}
