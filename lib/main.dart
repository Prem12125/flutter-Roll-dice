import 'package:flutter/material.dart';
import 'dart:math'; // Import the dart:math library

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 230, 92, 218),
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.pink,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({super.key});

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;
  Random random = Random(); // Create an instance of the Random class

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  leftDiceNumber = random.nextInt(6) +
                      1; // Generate a random number between 1 and 6
                  print("left Dice Number=$leftDiceNumber");
                });
              },
              child: Image(
                image: AssetImage('images/dice$leftDiceNumber.png'),
              ),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  rightDiceNumber = random.nextInt(6) + 1;
                });
                print("Right Dice Number is $rightDiceNumber");
              },
              child: Image(
                image: AssetImage('images/dice$rightDiceNumber.png'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
