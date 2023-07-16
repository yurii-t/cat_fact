import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'cat_fact.freezed.dart';
part 'cat_fact.g.dart';

@freezed
@HiveType(typeId: 1)
class CatFact with _$CatFact {
  const factory CatFact({
    @HiveField(0) @JsonKey(name: '_id') String? id,
    @HiveField(1) String? text,
    @HiveField(2) String? createdAt,
  }) = _CatFact;

  factory CatFact.fromJson(Map<String, dynamic> json) =>
      _$CatFactFromJson(json);
}
