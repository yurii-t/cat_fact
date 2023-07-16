import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:cat_facts/data/models/cat_fact.dart';
import 'package:cat_facts/data/repositories/cat_image_repository.dart';
import 'package:cat_facts/data/repositories/local_repository.dart';
import 'package:cat_facts/data/repositories/random_fact_repository.dart';
import 'package:cat_facts/presentation/blocs/status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'fact_event.dart';
part 'fact_state.dart';
part 'fact_bloc.freezed.dart';

class FactBloc extends Bloc<FactEvent, FactState> {
  final RandomFactRepository _randomFactRepository;
  final CatImageRepository _catImageRepository;
  final LocalRepository _localRepository;
  FactBloc(
    this._randomFactRepository,
    this._catImageRepository,
    this._localRepository,
  ) : super(const FactState(status: BlocStatus.loading, catFacts: [])) {
    on<FactEvent>((event, emit) async {
      try {
        await event.when<Future<void>>(
          getRandomCatFact: () => _getRandomCatFact(emit: emit),
          getSavedCatFacts: () => _getSavedCatFacts(emit: emit),
        );
      } on Exception catch (error) {
        emit(await _errorState(error));
        log('error: $error');
      }
    });
  }

  Future<void> _getRandomCatFact({
    required Emitter<FactState> emit,
  }) async {
    emit(state.copyWith(
      status: BlocStatus.loading,
    ));
    try {
      final imageUrl = await _catImageRepository.getImage();
      final fact = await _randomFactRepository.getRandomFact();
      await _localRepository.saveFact(fact);

      emit(state.copyWith(
        status: BlocStatus.loaded,
        catFact: fact,
        catImage: imageUrl,
      ));
    } on Exception catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<void> _getSavedCatFacts({
    required Emitter<FactState> emit,
  }) async {
    try {
      final catFacts = await _localRepository.getFact();

      emit(state.copyWith(
        catFacts: catFacts,
      ));
    } on Exception catch (e) {
      emit(state.copyWith(error: e.toString()));
    }
  }

  Future<FactState> _errorState(Object error) async => FactState(
        status: BlocStatus.error,
        catFact: state.catFact,
        catImage: state.catImage,
        error: error,
        catFacts: state.catFacts,
      );
}
