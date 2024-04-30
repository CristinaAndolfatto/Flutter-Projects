import 'package:flutter/widgets.dart';
import 'dart:math';
import 'package:flutter/material.dart'; //we want to connect to another.dart file -> the material  design

final randomizer = Random();

class DiceRoller extends StatefulWidget {

    const  DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    // TODO: implement createState
    return _DiceRollerState();
    }

}

class _DiceRollerState extends State<DiceRoller> {
    var currentDiceRoll = 2;

    // define method roll_dice
    void rollDice() {
      setState(() { 
        // call build for updating the UI
        currentDiceRoll = randomizer.nextInt(6) + 1;
      });
    }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Column (
              mainAxisSize: MainAxisSize.min, //puts button and image in the center of the colum lenght
              children: [
              Image.asset('assets/dice-images/dice-$currentDiceRoll.png', width: 200),
              TextButton(
                onPressed:  rollDice, 
                style: TextButton.styleFrom(
                  foregroundColor: Colors.white, 
                  textStyle: const TextStyle(fontSize: 28),
                  padding: const EdgeInsets.all(20)),
                child: const Text('Roll dice!')
                )
              ]);      }
}
