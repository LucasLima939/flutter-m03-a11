import 'package:flutter/material.dart';

import 'views/views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            _roundedButton('Rotação de texto',
                onTap: () => push(context, RotateText())),
            _roundedButton('Digitação de texto',
                onTap: () => push(context, TypedText())),
            _roundedButton('Aparição de texto',
                onTap: () => push(context, FadeText())),
            _roundedButton('Escala de texto',
                onTap: () => push(context, ScaleText())),
            _roundedButton('Liquify text',
                onTap: () => push(context, LiquifyText())),
            _roundedButton('Ondulação de texto',
                onTap: () => push(context, WaveText())),
            _roundedButton('Flicker text',
                onTap: () => push(context, FlickerText())),
            _roundedButton('Colorizer text',
                onTap: () => push(context, ColorizerText())),
          ],
        ),
      ),
    );
  }

  push(BuildContext context, Widget page) =>
      Navigator.push(context, MaterialPageRoute(builder: (context) => page));

  Widget _roundedButton(String text, {required Function() onTap}) =>
      ElevatedButton(
        onPressed: onTap,
        child: Text(text, style: const TextStyle(fontWeight: FontWeight.bold)),
        style: ElevatedButton.styleFrom(
            primary: Colors.pink, onPrimary: Colors.white),
      );
}
