import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    @required this.labelText,
    @required this.hintText,
    @required this.getValue,
  });

  final String labelText;
  final String hintText;
  final Function getValue;
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: TextField(
        keyboardType: TextInputType.number,
        decoration:
            InputDecoration(labelText: labelText, hintText: hintText),
        controller: controller,
        onChanged: (newValue){
          getValue(newValue);
        },
      ),
    );
  }
}
