import 'package:descuentos_rd/Screens/Calculadora.dart';
import 'package:descuentos_rd/Screens/mainscreen.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(DescuentosRd());
}

class DescuentosRd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.cyan[900]
      ),
      home: Calculadora(),
    );
  }
}