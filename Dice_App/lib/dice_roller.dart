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

    // define method roll_dice: quando viene premuto cambio immagine
    void rollDice() {
      setState(() { 
        // dice a flkutter che deve rieseguire il metodo build per avere una UI updated
        currentDiceRoll = randomizer.nextInt(6) + 1;
      });
    }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Column (
              mainAxisSize: MainAxisSize.min, //puts button and image in the center of the colum klenght
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
              ]); //N.B. column serve per mettere in colonna  più widget (per la riga c'è row)
     }
}//questa è funzione che va sempre messa quando creo StatefukWidget e deve avere  nome della classe con _ davanti
