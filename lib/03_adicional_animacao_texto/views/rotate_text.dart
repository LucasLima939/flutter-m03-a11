import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class RotateText extends StatelessWidget {
  const RotateText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: const BoxDecoration(color: Colors.red),
              height: 300.0,
              width: 350.0,
              child: Center(
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const SizedBox(width: 10.0, height: 100.0),
                    const Text(
                      'Flutter',
                      style: TextStyle(fontSize: 40.0),
                    ),
                    const SizedBox(width: 15.0, height: 100.0),
                    DefaultTextStyle(
                      style: const TextStyle(
                        fontSize: 35.0,
                      ),
                      child: AnimatedTextKit(
                          repeatForever: true,
                          isRepeatingAnimation: true,
                          animatedTexts: [
                            RotateAnimatedText('Cubos'),
                            RotateAnimatedText('Academy'),
                          ]),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
