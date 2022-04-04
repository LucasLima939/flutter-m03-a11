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
  late AnimationController _animationController;

  @override
  void initState() {
    super.initState();
    _animationController =
        AnimationController(duration: const Duration(seconds: 2), vsync: this)
          ..repeat();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animation Controller'),
      ),
      body: Center(
        child: Stack(
            children: [LightTransitioned(animation: _animationController)]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          if (_animationController.isAnimating) {
            _animationController.stop();
          } else {
            _animationController.forward();
          }
        },
        child: Text('Pause'),
      ),
    );
  }
}

class LightTransitioned extends AnimatedWidget {
  final AnimationController animation;
  const LightTransitioned({required this.animation})
      : super(listenable: animation);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: [
          0,
          animation.value,
        ],
        colors: const [
          Colors.yellow,
          Colors.transparent,
        ],
      )),
      height: 400,
      width: 400,
    );
  }
}
