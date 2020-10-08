import 'package:descuentos_rd/Widgets/MainDrawer.dart';
import 'package:flutter/material.dart';
import 'package:descuentos_rd/Widgets/CustomButton.dart';

class MainScreen extends StatelessWidget {
  static const descripcion =
      'DescuentosRD es una pagina destinada a los empleados de la Republica Dominicana con la cual cualquier persona podrá realizar calculos exactos de los descuentos hechos durante el mes en base a la AFP, ARS e ISR.';
     
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Descuentos RD'),
      ),
      drawer: MainDrawer(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Que es Descuentos RD?",
              style: TextStyle(
                fontSize: screenSize.width * 0.09,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              descripcion,
              style:
                  TextStyle(fontSize: screenSize.width * 0.065),
            ),
          ),
          CustomButton(text: 'Haz tus calculos',onPressed: (){
            Navigator.of(context).pushReplacementNamed('Calculadora');
          },)
        ],
      ),
    );
  }
}
