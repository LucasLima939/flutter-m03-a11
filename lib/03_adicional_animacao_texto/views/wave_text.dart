import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class WaveText extends StatelessWidget {
  const WaveText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: DefaultTextStyle(
          style: const TextStyle(
            color: Colors.black,
            fontSize: 25.0,
          ),
          child: AnimatedTextKit(
            animatedTexts: [
              WavyAnimatedText("Cubos", speed: Duration(milliseconds: 200)),
              WavyAnimatedText('academy', speed: Duration(milliseconds: 200)),
            ],
            isRepeatingAnimation: true,
            repeatForever: true,
          ),
        ),
      ),
    );
  }
}
