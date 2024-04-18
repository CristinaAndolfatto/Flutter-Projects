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
} // N.B. this function does not have to be re-called again because flutter do it automatically as first operation
// THIS MUST BE PRESENT AT FIRST INSTRUCTION IN EACH main.dart FILE

// N.B. MaterialApp è un core widget che si userà in tutte le app
// è il main widget (è una classe) che fa configurazione app dietro le quinte
// ma comunque stiamo creando un widget per l'applicazione
// N.B. MaterialApp è classe con una serie di parametri denominati già predefiniti che io posso controllare (per esempio title, theme, ecc ecc)
// N.B. tipi di parametri sono due: posizionali (quelli che ho sempre usato, dò nome generico e poi quando chiamo la funzione con gli argomenti, i parametri che avevo definito prendono il valore in base alla posizione degli argomenti che passo alla funzione VS parametri named sono parametri che sono definiti nella funzione con nome specifico e possono anche essere omessi)

//N.B. const values sono salvate in memoria così posso usaresempre quello e ottimizzo consumo memoria, senza creare tante variabili

// MaterialApp widget serve per impostare app nel suo complesso ma Scaffold è utile per app con più schermate
// + scaffold mi permette di impostare bene colori/ecc

//N.B. sevado sopra con mouse a constructor mi dà suggerimento sui parametri da utilizzare
//(nome parametro è a destra del tipo di parametro)

// N.B. per usare auto-formatting su un widget tree, basta che aggiungo virgola alla fine di ogni parentesi e poi premere tasto destro e fare "Format Document"

//N.B.data can have multiple types! -> tipo Text è sia String che Object

