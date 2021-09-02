import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    @required this.text,
    @required this.onPressed,
  });
  final String text;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width * 0.9,
      child: ElevatedButton(
        style: ButtonStyle(
          foregroundColor:
              MaterialStateProperty.resolveWith((states) => Colors.white),
          backgroundColor:
              MaterialStateProperty.resolveWith((states) => Colors.orange[900]),
        ),
        child: Text(text),
        onPressed: onPressed,
      ),
    );
  }
}
