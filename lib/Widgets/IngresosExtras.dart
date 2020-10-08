import 'package:flutter/material.dart';

import 'CustomTextField.dart';
import 'Switch.dart';

class IngresosExtras extends StatefulWidget {

  IngresosExtras(
   this.getIngresosExtras,
   this.ingresos,
  );

  final Function getIngresosExtras;
  final Function ingresos;
  @override
  _IngresosExtrasState createState() => _IngresosExtrasState();
}

class _IngresosExtrasState extends State<IngresosExtras> {

  var ingresos = false;

  void showIngresos(bool value) {
    setState(() {
      ingresos = value;
      widget.ingresos(value);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomSwitch('Ingresos Extras', showIngresos),
            if (ingresos == true)
              CustomTextField(
                enabled: ingresos,
                labelText: 'Ingresos Extras',
                hintText: 'Ej: \$2,000',
                getValue: widget.getIngresosExtras,
              ),
        ],
      ),
    );
  }
}