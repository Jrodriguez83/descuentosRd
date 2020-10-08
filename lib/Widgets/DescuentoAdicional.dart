import 'package:flutter/material.dart';

import 'CustomTextField.dart';
import 'Switch.dart';

class DescuentoAdicional extends StatefulWidget {
  DescuentoAdicional(
   this.getDescuentosAdicionales,
   this.descuentos
  );

  final Function getDescuentosAdicionales;
  final Function descuentos;
  @override
  _DescuentoAdicionalState createState() => _DescuentoAdicionalState();
}

class _DescuentoAdicionalState extends State<DescuentoAdicional> {
  var descuentos = false;
  void showDescuentos(bool value) {
    setState(() {
      descuentos = value;
      widget.descuentos(value);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          CustomSwitch('Descuento Adicional', showDescuentos),
            if (descuentos == true)
              CustomTextField(
                enabled: descuentos,
                labelText: 'Descuento Adicional',
                hintText: 'Ej: \$1,000',
                getValue: widget.getDescuentosAdicionales,
              ),
        ],
      )
    );
  }
}