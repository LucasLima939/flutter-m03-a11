import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class TypedText extends StatelessWidget {
  const TypedText({Key? key}) : super(key: key);

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
              fontSize: 30.0,
              fontFamily: 'popin',
            ),
            child: AnimatedTextKit(isRepeatingAnimation: true, animatedTexts: [
              TyperAnimatedText(
                  'Educação é aquilo que a maior parte das pessoas recebe,',
                  speed: Duration(milliseconds: 100)),
              TyperAnimatedText(' muitos transmitem',
                  speed: Duration(milliseconds: 100)),
              TyperAnimatedText(' e poucos possuem',
                  speed: Duration(milliseconds: 100)),
            ]),
          ),
        ),
      ),
    );
  }
}
