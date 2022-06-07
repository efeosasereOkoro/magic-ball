import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
            title: const Text('Roll Ball'), backgroundColor: Colors.blue),
        body: const DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int ballNumber = 1;
  
//  DicePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    void rollBall() {
      setState(() {
        ballNumber = Random().nextInt(5) + 1;
        
      });
    }

    return Center(
           child: Row(
        children: [
          
          Expanded(
            child: TextButton(
              onPressed: () {
                rollBall();
              },
              child: (Image.asset('images/ball$ballNumber.png')),
            ),
          ),
          
        ],
      ),
    );
  }
}
