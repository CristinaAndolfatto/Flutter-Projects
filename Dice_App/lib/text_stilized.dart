import 'package:flutter/material.dart'; //we want to connect to another.dart file -> the material  design

class TextStilized extends StatelessWidget{
  const TextStilized(this.text, {super.key}); 

  final String text;

  @override 
  Widget build(context) {
    return Text(text, 
            style: const TextStyle(
              color: Color.fromARGB(255, 255, 255, 255), 
              fontWeight: FontWeight.bold,
              fontSize: 28.0,
              )
            );
  }
}