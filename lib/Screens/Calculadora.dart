import 'package:descuentos_rd/Widgets/CustomButton.dart';
import 'package:descuentos_rd/Widgets/Desglose.dart';
import 'package:descuentos_rd/Widgets/EntrarDatos.dart';
import 'package:descuentos_rd/Widgets/MainDrawer.dart';
import 'package:flutter/material.dart';

class Calculadora extends StatefulWidget {
  @override
  _CalculadoraState createState() => _CalculadoraState();
}

class _CalculadoraState extends State<Calculadora> {
  
  
  var ingresosBrutos = 0.0;
  double salarioM = 0.0;
  double ingresoE = 0.0;
  double descuentoA = 0.0;
  bool ingresos = true;
  bool descuento;

  void getSalario(String salario) {
    salarioM = double.parse(salario);
  }

  void getIngresosExtras(String salario) {
    ingresoE = double.parse(salario);
  }

  void getDescuentosAdicionales(String descuento) {
    descuentoA = double.parse(descuento);
  }

  void getIngresos(bool value){
    ingresos = value;
  }
  void getDescuento(bool value){
    descuento = value;
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
            EntrarDatos(
              getDescuentosAdicionales: getDescuentosAdicionales,
              getIngresosExtras: getIngresosExtras,
              getSalario: getSalario,
              ingresos: getIngresos,
              descuentos: getDescuento,
            ),
            CustomButton(
              text: 'Calcular',
              onPressed: () {
                setState(() {
                  if(ingresos){
                  ingresosBrutos = salarioM + ingresoE;
                  }else{
                    ingresoE = 0.0;
                    ingresosBrutos = salarioM + ingresoE;
                  }
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
