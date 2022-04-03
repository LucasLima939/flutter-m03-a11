import 'package:flutter/material.dart';

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

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _animation;
  @override
  void initState() {
    _animation =
        AnimationController(duration: Duration(seconds: 20), vsync: this)
          ..repeat();
    super.initState();
  }

  @override
  void dispose() {
    _animation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation Controller'),
      ),
      body: Center(
        child: RotationTransition(
            turns: _animation, child: Image.asset('assets/galaxy.png')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_animation.isAnimating) {
            _animation.stop();
          } else {
            _animation.forward();
          }
        },
        child: Text('Pause'),
      ),
    );
  }
}
