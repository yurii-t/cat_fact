import 'package:cat_facts/data/models/cat_fact.dart';

import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
part 'random_fact_api.g.dart';

@RestApi()
abstract class RandomFactApi {
  factory RandomFactApi(Dio dio) = _RandomFactApi;

  @GET('/facts/random')
  Future<CatFact> getRandomFact();
}
