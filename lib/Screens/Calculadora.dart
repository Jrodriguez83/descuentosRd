import 'package:descuentos_rd/Widgets/CustomButton.dart';
import 'package:descuentos_rd/Widgets/CustomTextField.dart';
import 'package:flutter/material.dart';

class Calculadora extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(bottom: 8.0),
              child: Text('Calculadora'),
            ),
            CustomTextField(
              labelText: 'Introduzca su salario mensual',
              hintText: 'Ej: \$20,000',
            ),
            CustomTextField(
                labelText: 'Ingresos Extras', hintText: 'Ej: \$2,000'),
            CustomTextField(
                labelText: 'Descuento Adicional', hintText: 'Ej: \$1,000'),
            CustomButton(text: 'Calcular',onPressed:(){}),
          ],
        ),
      ),
    );
  }
}
