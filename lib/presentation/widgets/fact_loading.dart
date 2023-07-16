import 'package:flutter/material.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class FactLoading extends StatelessWidget {
  const FactLoading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: LoadingAnimationWidget.stretchedDots(
        color: Colors.black,
        size: 50,
      ),
    );
  }
}
