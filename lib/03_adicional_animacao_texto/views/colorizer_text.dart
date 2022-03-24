import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class ColorizerText extends StatelessWidget {
  const ColorizerText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<MaterialColor> colorizeColors = [
      Colors.red,
      Colors.yellow,
      Colors.purple,
      Colors.blue,
    ];

    const colorizeTextStyle = TextStyle(
      fontSize: 40.0,
      fontFamily: 'SF',
    );

    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          child: Center(
            child: AnimatedTextKit(
              animatedTexts: [
                ColorizeAnimatedText(
                  'Cubos',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
                ColorizeAnimatedText(
                  'Academy',
                  textStyle: colorizeTextStyle,
                  colors: colorizeColors,
                ),
              ],
              isRepeatingAnimation: true,
              repeatForever: true,
            ),
          ),
        ),
      ),
    );
  }
}
