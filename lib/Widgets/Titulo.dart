import 'package:flutter/material.dart';

class Titulo extends StatelessWidget {
  Titulo(
    this.texto,
  );
 final String texto;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.only(bottom: 8.0),
      child: Text(
        texto,
        style: TextStyle(
          fontSize: 24,
        ),
      ),
    );
  }
}
