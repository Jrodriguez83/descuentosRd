import 'package:descuentos_rd/Widgets/DescuentoAdicional.dart';
import 'package:descuentos_rd/Widgets/IngresosExtras.dart';
import 'package:flutter/material.dart';

import 'CustomTextField.dart';
import 'Titulo.dart';

class EntrarDatos extends StatelessWidget {
  EntrarDatos({
@required this.getSalario,
@required this.getIngresosExtras,
@required this.getDescuentosAdicionales,
@required this.ingresos,
@required this.descuentos,
  });
  final Function getSalario;
  final Function getIngresosExtras;
  final Function getDescuentosAdicionales;
  final Function ingresos;
   final Function descuentos;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Titulo('Calculadora', icon: Icons.calculate_outlined,),
            CustomTextField(
              labelText: 'Introduzca su salario mensual',
              hintText: 'Ej: \$20,000',
              getValue: getSalario,
            ),
            IngresosExtras(getIngresosExtras, ingresos),
            DescuentoAdicional(getDescuentosAdicionales, descuentos),
        ],
      ),
    );
  }
}