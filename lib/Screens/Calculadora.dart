import 'package:descuentos_rd/Widgets/CustomButton.dart';
import 'package:descuentos_rd/Widgets/CustomTextField.dart';
import 'package:descuentos_rd/Widgets/Desglose.dart';
import 'package:descuentos_rd/Widgets/MainDrawer.dart';
import 'package:descuentos_rd/Widgets/Switch.dart';
import 'package:descuentos_rd/Widgets/Titulo.dart';
import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override
  _CalculadoraState createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  var ingresos = false;
  var descuentos = false;
  var ingresosBrutos = 0.0;
  double salarioM = 0.0;
  double ingresoE = 0.0;
  double descuentoA = 0.0;

  void getSalario(String salario) {
    salarioM = double.parse(salario);
  }

  void getIngresosExtras(String salario) {
    ingresoE = double.parse(salario);
  }

  void getDescuentosAdicionales(String descuento) {
    descuentoA = double.parse(descuento);
  }

  void showIngresos(bool value) {
    setState(() {
      ingresos = value;
    });
  }

  void showDescuentos(bool value) {
    setState(() {
      descuentos = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculadora"),
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Titulo('Calculadora'),
            CustomTextField(
              labelText: 'Introduzca su salario mensual',
              hintText: 'Ej: \$20,000',
              getValue: getSalario,
            ),
            CustomSwitch('Ingresos Extras', showIngresos),
            if (ingresos == true)
              CustomTextField(
                labelText: 'Ingresos Extras',
                hintText: 'Ej: \$2,000',
                getValue: getIngresosExtras,
              ),
            CustomSwitch('Descuento Adicional', showDescuentos),
            if (descuentos == true)
              CustomTextField(
                labelText: 'Descuento Adicional',
                hintText: 'Ej: \$1,000',
                getValue: getDescuentosAdicionales,
              ),
            CustomButton(
              text: 'Calcular',
              onPressed: () {
                setState(() {
                  ingresosBrutos = salarioM + ingresoE;
                });
              },
            ),
            SizedBox(
              height: 20,
            ),
            Desglose(
              ingresosBrutos: ingresosBrutos, descuentosAdicionales: descuentoA,
            ),
          ],
        ),
      ),
    );
  }
}
