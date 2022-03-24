import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class ScaleText extends StatelessWidget {
  const ScaleText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          child: DefaultTextStyle(
            style: const TextStyle(
              color: Colors.black,
              fontSize: 50.0,
              fontFamily: 'SF',
            ),
            child: Center(
              child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  ScaleAnimatedText('Eat', scalingFactor: 0.2),
                  ScaleAnimatedText('Code', scalingFactor: 0.2),
                  ScaleAnimatedText('Sleep', scalingFactor: 0.2),
                  ScaleAnimatedText('Repeat', scalingFactor: 0.2),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
