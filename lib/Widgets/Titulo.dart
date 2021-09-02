import 'package:flutter/material.dart';

class Titulo extends StatelessWidget {
  Titulo(
    this.texto,
    {this.size = 24,
    this.alignment = Alignment.centerLeft,
    this.icon,
    }
  );
 final String texto;
 final double size;
 final Alignment alignment;
 final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      alignment: alignment,
      padding: EdgeInsets.only(bottom: 8.0),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(width: 5))
      ),
      child: Row(
        children: [
          Icon(icon),
          Text(
            texto,
            style: TextStyle(
              fontSize: size,
            ),
          ),
        ],
      ),
    );
  }
}
