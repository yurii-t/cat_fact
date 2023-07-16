import 'package:cat_facts/data/models/cat_fact.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LocalRepository {
  Future<void> saveFact(CatFact catFact) async {
    await Hive.box<CatFact>('catFacts').add(catFact);
  }

  Future<List<CatFact>> getFact() async {
    return Hive.box<CatFact>('catFacts').values.toList();
  }
}
