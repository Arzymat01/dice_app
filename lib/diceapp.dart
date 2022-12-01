import 'dart:math';

import 'package:flutter/material.dart';

class Diceapp extends StatefulWidget {
  const Diceapp({Key? key}) : super(key: key);

  @override
  _DiceappState createState() => _DiceappState();
}

class _DiceappState extends State<Diceapp> {
  int leftnumber = 4;
  int rightnumber = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'DICEAPP',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w900,
          ),
        ),
        backgroundColor: Colors.black,
        centerTitle: true,
        elevation: 0,
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            setState(() {
              rightnumber = Random().nextInt(7);
            });
            setState(() {
              leftnumber = Random().nextInt(7);
            });
          },
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Image.asset(
                    'assets/dice${leftnumber == 0 ? leftnumber = 1 : leftnumber}.png',
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Image.asset(
                    'assets/dice${rightnumber == 0 ? rightnumber = 1 : rightnumber}.png',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
