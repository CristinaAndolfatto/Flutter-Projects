import 'package:flutter/material.dart';

class TextLabel extends StatelessWidget{
  const TextLabel(this.textLabel, {super.key});

  final String textLabel;

  @override
  Widget build(context) {
    return Text(textLabel, 
              style: const TextStyle(
                color: Colors.white,
                fontSize: 25
              )
            );
  }

}