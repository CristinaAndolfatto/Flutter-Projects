import 'package:flutter/material.dart'; //we want to connect to another.dart file -> the material  design
import 'package:dice_app/gradient_container.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';



void main() {
  Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);

  //this DEFINE FUNCTION -> void is the return type and the function body is in thecurly braces
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(colors: [Colors.deepPurple, Colors.purple]),
      ),
    )
  ); // function to run the app provide by the Flutter framework ->shows  user interface in the screen
} 
