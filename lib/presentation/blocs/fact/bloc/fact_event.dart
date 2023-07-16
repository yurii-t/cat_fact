part of 'fact_bloc.dart';

@freezed
class FactEvent with _$FactEvent {
  const factory FactEvent.getRandomCatFact() = _GetRandomCatFact;
  const factory FactEvent.getSavedCatFacts() = _GetSavedCatFacts;
}
