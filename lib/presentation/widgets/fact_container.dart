import 'package:cat_facts/data/models/cat_fact.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class FactContainer extends StatelessWidget {
  const FactContainer({
    required this.catFact,
    Key? key,
  }) : super(key: key);
  final CatFact? catFact;

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontWeight: FontWeight.bold);

    return Container(
      width: MediaQuery.sizeOf(context).width,
      margin: const EdgeInsets.all(15),
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Random Fact:',
              style: textStyle,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Flexible(
            child: Text(
              catFact?.text ?? '',
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Text(
              '${DateFormat('EEEE, MMM d, yyyy', Intl.systemLocale).format(DateTime.parse(catFact?.createdAt ?? ''))}',
              style: textStyle,
            ),
          ),
        ],
      ),
    );
  }
}
