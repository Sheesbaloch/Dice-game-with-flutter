import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var leftDiceNumbers = 3;
  var RightDiceNumbers = 5;
  void diceface() {
    setState(() {
      leftDiceNumbers = Random().nextInt(6) + 1;
      RightDiceNumbers = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        elevation: 10,
        // shadowColor: Colors.black,
        backgroundColor: const Color.fromARGB(255, 252, 57, 43),

        title: const Text(
          'PLAY',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: TextButton(
                  onPressed: () {
                    diceface();
                  },
                  child: Image.asset('assets/images/dice$leftDiceNumbers.jpg')),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {
                    diceface();
                  },
                  child:
                      Image.asset('assets/images/dice$RightDiceNumbers.jpg')),
            ),
          ],
        ),
      ),
    );
  }
}
