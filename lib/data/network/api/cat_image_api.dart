import 'package:cat_facts/data/network/constant/api_consts.dart';

import 'package:dio/dio.dart';

import 'package:retrofit/retrofit.dart';
part 'cat_image_api.g.dart';

@RestApi(
  baseUrl: ApiConsts.imageUrl,
)
abstract class CatImageApi {
  factory CatImageApi(Dio dio) = _CatImageApi;

  @GET('')
  @DioResponseType(ResponseType.bytes)
  Future<List<int>> getImage();
}
