import 'package:flutter/material.dart';

class CustomSwitch extends StatefulWidget {
  CustomSwitch(
    this.title,
    this.changeStatus
  );
  final String title;
  final Function changeStatus;
  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  var value = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Text(widget.title),
          Switch(
              value: value,
              onChanged: (newValue) {
                setState(() {
                widget.changeStatus(newValue);
                  value = newValue;
                });
              }),
        ],
      ),
    );
  }
}
