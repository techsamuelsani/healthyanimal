import '../models/index.dart';

class TikTokBaseService {
  Future<void> init(String username) async {}

  Future<void> reInit(String response) async {}

  String getUserRequestUrl() {
    return '';
  }

  String getRequestUrl([int count = 10]) {
    return '';
  }

  Future<List<TikTokVideoInfo>> parseVideoInfo({
    required String response,
  }) async {
    return [];
  }
}
