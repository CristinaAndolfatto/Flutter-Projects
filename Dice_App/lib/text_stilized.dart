import 'package:flutter/material.dart'; //we want to connect to another.dart file -> the material  design

class TextStilized extends StatelessWidget{
  const TextStilized(this.text, {super.key}); //this dice a Dart che il primo argomento posizionale del costruttore sarà la variabile con lo STESSO nome che definirò dentro la classe

  final String text; //final perchè il testo deve essere assegnato solo con argomento in ingresso e poi internamente non  sarà più cambiato

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