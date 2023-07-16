import 'package:cat_facts/data/models/cat_fact.dart';
import 'package:cat_facts/presentation/blocs/fact/bloc/fact_bloc.dart';
import 'package:cat_facts/presentation/widgets/fact_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SavedFactsPage extends StatelessWidget {
  const SavedFactsPage({
    required this.factBloc,
    Key? key,
  }) : super(key: key);

  final FactBloc factBloc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 231, 231),
      appBar: AppBar(
        title: const Text('Facts History'),
        leading: IconButton(
          onPressed: Navigator.of(context).pop,
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: BlocSelector<FactBloc, FactState, List<CatFact>>(
        bloc: factBloc,
        selector: (state) {
          return state.catFacts;
        },
        builder: (context, catFacts) {
          return Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: catFacts.length,
                  itemBuilder: (context, index) {
                    final catFact = catFacts[index];

                    return FactContainer(catFact: catFact);
                  },
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
