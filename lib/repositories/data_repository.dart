import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:thichtruyentranh/common/configs.dart';
import 'package:thichtruyentranh/models/response/comic_detail_response.dart';
import 'package:thichtruyentranh/models/response/comics_response.dart';
import 'package:thichtruyentranh/models/response/home_response.dart';
import 'package:thichtruyentranh/network/rest_client.dart';

@lazySingleton
class DataRepository implements RestClient {
  /// MARK: - Initials;
  final dio = Dio();
  late RestClient _client;
  //final _appPref = locator<AppPreference>();

  DataRepository() {
    if (kDebugMode) {
      dio.interceptors.add(LogInterceptor(
        requestBody: true,
        responseBody: true,
        error: true,
      ));
    }

    /// Middleware token
    dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (request, handler) async {
          //final token = (await _appPref.getUser())?.accessToken;
          //debugPrint('Authorization token: ${'Bearer $token'}');
          //request.headers['Authorization'] = 'Bearer $token';
          request.headers['Accept'] = 'application/json';
          handler.next(request);
        },
      ),
    );

    _client = RestClient(dio, baseUrl: Configs.baseUrl);
  }

  @override
  Future<HomeResponse> getHome() {
    return _client.getHome();
  }

  @override
  Future<ComicsResponse> getComics({required String type, int? page}) {
    return _client.getComics(type: type, page: page);
  }

  @override
  Future<ComicDetailResponse> getComicDetail({required String slug}) {
    return _client.getComicDetail(slug: slug);
  }
}
