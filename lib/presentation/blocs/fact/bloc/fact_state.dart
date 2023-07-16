part of 'fact_bloc.dart';

@freezed
class FactState with _$FactState {
  const factory FactState({
    required BlocStatus status,
    required List<CatFact> catFacts,
    CatFact? catFact,
    List<int>? catImage,
    Object? error,
  }) = _FactState;
}
