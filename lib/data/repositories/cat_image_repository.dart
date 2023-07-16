import 'package:cat_facts/data/network/api/cat_image_api.dart';

class CatImageRepository {
  CatImageRepository(
    this._api,
  );
  final CatImageApi _api;

  Future<List<int>> getImage() async {
    return _api.getImage();
  }
}
