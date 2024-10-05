import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:thichtruyentranh/models/response/comic_detail_response.dart';
import 'package:thichtruyentranh/models/response/comics_response.dart';
import 'package:thichtruyentranh/models/response/home_response.dart';
import 'package:thichtruyentranh/models/response/search_comic_response.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'https://otruyenapi.com')
abstract class RestClient {
  /// MARK: - Initials;
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/v1/api/home')
  Future<HomeResponse> getHome();

  @GET('/v1/api/danh-sach/{type}?page={page}')
  Future<ComicsResponse> getComics({
    @Path('type') required String type,
    @Path('page') int? page,
  });

  @GET('/v1/api/truyen-tranh/{slug}')
  Future<ComicDetailResponse> getComicDetail({
    @Path('slug') required String slug,
  });

  @GET('/v1/api/tim-kiem?keyword={name}')
  Future<SearchComicResponse> searchComics({
    @Path('name') required String name,
  });
}
