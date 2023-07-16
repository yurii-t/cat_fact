import 'package:cat_facts/data/models/cat_fact.dart';
import 'package:cat_facts/data/network/api/random_fact_api.dart';

class RandomFactRepository {
  RandomFactRepository(
    this._api,
  );
  final RandomFactApi _api;

  Future<CatFact> getRandomFact() async {
    return _api.getRandomFact();
  }
}
