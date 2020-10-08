import 'package:flutter/material.dart';

class CustomTableCell extends StatelessWidget {
  CustomTableCell({
    @required this.title,
    this.color = Colors.black,
  });
  final String title;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return TableCell(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
      title,
      style: TextStyle(color: color, fontSize: 20),
    ),
        ));
  }
}
