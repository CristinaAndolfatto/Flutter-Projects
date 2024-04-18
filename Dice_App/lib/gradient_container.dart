import 'package:dice_app/dice_roller.dart';
import 'package:flutter/material.dart'; //we want to connect to another.dart file -> the material  design
//import 'package:dice_app/text_stilized.dart';

const startGradient = Alignment.topLeft;
const endGradient = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
 //constructor method
const GradientContainer({super.key, required this.colors});//named argument vengono definiti con {}

final List<Color> colors;

 @override // here we override the build method of StateLessWidget
 Widget build(context){ 
  return Container( 
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: colors,
              begin: startGradient,
              end: endGradient),
              ),
          child: const Center(
            child: DiceRoller(),
          ),
        );
 }
}