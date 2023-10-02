import 'dart:math';

import 'package:flutter/material.dart';

class AnimetedScreen extends StatefulWidget {
   
  const AnimetedScreen({Key? key}) : super(key: key);

  @override
  State<AnimetedScreen> createState() => _AnimetedScreenState();
}

class _AnimetedScreenState extends State<AnimetedScreen> {
  double  _width = 50;
  double _height = 50;
  Color _color = Colors.green;
  BorderRadiusGeometry _borderRadios = BorderRadius.circular(10);

  void changeShape(){
   setState(() {
    final random = Random();
      _width = random.nextInt(300).toDouble();
      _height = random.nextInt(300).toDouble();

      _color = Color.fromRGBO(
        random.nextInt(256),
        random.nextInt(256), 
        random.nextInt(256),
         1);

         _borderRadios = BorderRadius.circular(random.nextInt(100).toDouble() + 10);
   });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Animated'),
      ),
      body: Center(
         child: AnimatedContainer(
          duration: const Duration( milliseconds: 400),
          curve: Curves.easeOutCubic,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadios
             ),
         )
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon( Icons.play_circle_outline, size: 40),
        onPressed: changeShape
      ),
    );
  }
}