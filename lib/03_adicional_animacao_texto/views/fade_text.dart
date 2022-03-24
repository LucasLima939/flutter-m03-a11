import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class FadeText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
          child: SizedBox(
        child: DefaultTextStyle(
          style: const TextStyle(
            color: Colors.black,
            fontSize: 32.0,
            fontWeight: FontWeight.bold,
          ),
          child: Center(
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                FadeAnimatedText('Sucesso',
                    duration: Duration(seconds: 3),
                    fadeOutBegin: 0.9,
                    fadeInEnd: 0.7),
                FadeAnimatedText('é a junção de ',
                    duration: Duration(seconds: 3),
                    fadeOutBegin: 0.9,
                    fadeInEnd: 0.7),
                FadeAnimatedText('trabalho duro',
                    duration: Duration(seconds: 3),
                    fadeOutBegin: 0.9,
                    fadeInEnd: 0.7),
                FadeAnimatedText('e uma pitada de sorte',
                    duration: Duration(seconds: 3),
                    fadeOutBegin: 0.9,
                    fadeInEnd: 0.7),
              ],
            ),
          ),
        ),
      )),
    );
  }
}
