import 'package:descuentos_rd/Screens/mainscreen.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(DescuentosRd());
}

class DescuentosRd extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainScreen(),
    );
  }
}