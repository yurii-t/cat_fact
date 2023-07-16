import 'package:cat_facts/data/network/api/cat_image_api.dart';
import 'package:cat_facts/data/network/api/random_fact_api.dart';
import 'package:cat_facts/data/network/constant/api_consts.dart';
import 'package:cat_facts/data/network/dio_client.dart';
import 'package:cat_facts/data/repositories/cat_image_repository.dart';
import 'package:cat_facts/data/repositories/local_repository.dart';
import 'package:cat_facts/data/repositories/random_fact_repository.dart';
import 'package:cat_facts/presentation/blocs/fact/bloc/fact_bloc.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt sl = GetIt.instance;

Future<void> init() async {
  sl
    ..registerLazySingleton<Dio>(() => const DioClient(
          ApiConsts.baseUrl,
        ).create())
    ..registerLazySingleton<RandomFactApi>(() => RandomFactApi(sl.call()))
    ..registerLazySingleton<CatImageApi>(() => CatImageApi(sl.call()))
    ..registerLazySingleton<RandomFactRepository>(
      () => RandomFactRepository(sl.call()),
    )
    ..registerLazySingleton<CatImageRepository>(
      () => CatImageRepository(sl.call()),
    )
    ..registerLazySingleton<LocalRepository>(LocalRepository.new)
    ..registerLazySingleton<FactBloc>(
      () => FactBloc(sl.call(), sl.call(), sl.call()),
    );
}
