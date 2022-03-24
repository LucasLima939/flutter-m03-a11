import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class FlickerText extends StatelessWidget {
  const FlickerText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          width: 250.0,
          child: DefaultTextStyle(
            style: const TextStyle(
              color: Colors.black,
              fontSize: 30,
            ),
            child: AnimatedTextKit(
              repeatForever: true,
              animatedTexts: [
                FlickerAnimatedText('Flutter é um framework',
                    speed: Duration(milliseconds: 1000), entryEnd: 0.7),
                FlickerAnimatedText('muito útil',
                    speed: Duration(milliseconds: 1000), entryEnd: 0.7),
                FlickerAnimatedText("e eficiente",
                    speed: Duration(milliseconds: 1000), entryEnd: 0.7),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
