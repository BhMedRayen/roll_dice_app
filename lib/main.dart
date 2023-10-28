import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const RollDiceWidget());
}

class RollDiceWidget extends StatefulWidget {
  const RollDiceWidget({super.key});

  @override
  State<RollDiceWidget> createState() => _RollDiceWidgetState();
}

class _RollDiceWidgetState extends State<RollDiceWidget> {
  var indexImage = 1;

  void clickDice() {
    setState(() {
      indexImage = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 162, 46, 118),
            Color.fromARGB(255, 117, 17, 117)
          ]),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                'assets/images/dice-$indexImage.png',
                width: 200,
              ),
              // Image.asset('assets\images\dice-$indexImage.png',width: 200,),
              ElevatedButton.icon(
                  onPressed: clickDice,
                  icon: const Icon(Icons.arrow_right),
                  label: const Text("Roll dice")),
            ],
          ),
        ),
      )),
    );
  }
}
