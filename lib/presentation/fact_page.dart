import 'dart:typed_data';

import 'package:cat_facts/di.dart' as di;
import 'package:cat_facts/presentation/blocs/fact/bloc/fact_bloc.dart';
import 'package:cat_facts/presentation/blocs/status.dart';
import 'package:cat_facts/presentation/saved_facts_page.dart';
import 'package:cat_facts/presentation/widgets/fact_container.dart';
import 'package:cat_facts/presentation/widgets/fact_error.dart';
import 'package:cat_facts/presentation/widgets/fact_loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FactPage extends StatelessWidget {
  const FactPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
      color: Colors.black,
      fontWeight: FontWeight.bold,
    );
    final FactBloc _factBloc = di.sl.get()
      ..add(const FactEvent.getRandomCatFact());

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 231, 231),
      body: BlocBuilder<FactBloc, FactState>(
        bloc: _factBloc,
        builder: (context, state) {
          if (state.status == BlocStatus.loading) {
            return const FactLoading();
          }
          if (state.status == BlocStatus.loaded) {
            return Column(children: [
              Container(
                height: MediaQuery.sizeOf(context).height * 0.5,
                width: MediaQuery.sizeOf(context).width,
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(15),
                    bottomRight: Radius.circular(15),
                  ),
                ),
                child: Image.memory(
                  Uint8List.fromList(state.catImage ?? []),
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              FactContainer(
                catFact: state.catFact,
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {
                      _factBloc.add(const FactEvent.getRandomCatFact());
                    },
                    child: const Text(
                      'Another Fact!',
                      style: textStyle,
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                    ),
                    onPressed: () {
                      _factBloc.add(const FactEvent.getSavedCatFacts());

                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SavedFactsPage(
                            factBloc: _factBloc,
                          ),
                        ),
                      );
                    },
                    child: const Text(
                      'Fact history',
                      style: textStyle,
                    ),
                  ),
                ],
              ),
            ]);
          }

          return const FactError();
        },
      ),
    );
  }
}
