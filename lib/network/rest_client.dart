import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:thichtruyentranh/models/response/home_response.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'https://otruyenapi.com')
abstract class RestClient {
  /// MARK: - Initials;
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/v1/api/home')
  Future<HomeResponse> getHome();
}
