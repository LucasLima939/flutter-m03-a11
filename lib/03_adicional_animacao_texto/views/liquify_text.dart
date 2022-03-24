import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class LiquifyText extends StatelessWidget {
  const LiquifyText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: SizedBox(
          child: Center(
            child: TextLiquidFill(
              text: 'Flutter Devs',
              waveDuration: Duration(seconds: 5),
              waveColor: Colors.blue,
              boxBackgroundColor: Colors.green,
              textStyle: TextStyle(
                fontSize: 50.0,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
