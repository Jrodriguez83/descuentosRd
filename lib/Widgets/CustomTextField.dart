import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    @required this.labelText,
    @required this.hintText,
    @required this.getValue,
    this.enabled,
  });

  final String labelText;
  final String hintText;
  final Function getValue;
  final bool enabled;
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8.0),
      child: TextField(
        enabled: enabled,
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
