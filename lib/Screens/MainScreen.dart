import 'package:descuentos_rd/Widgets/MainDrawer.dart';
import 'package:descuentos_rd/Widgets/Titulo.dart';
import 'package:flutter/material.dart';
import 'package:descuentos_rd/Widgets/CustomButton.dart';

class MainScreen extends StatelessWidget {
  static const descripcion =
      'DescuentosRD es una pagina destinada a los empleados de la Republica Dominicana con la cual cualquier persona podrá realizar calculos exactos de los descuentos hechos durante el mes en base a la AFP, ARS e ISR.';
  static const ars =
      'Las ARS o Administradora de riesgos de salud son entidades públicas, privadas o mixtas, descentralizadas, con patrimonio propio y personería jurídica, autorizadas por la Superintendencia de Salud y Riesgos Laborales a asumir y administrar el riesgo de la provisión del Plan Básico de Salud, a una determinada cantidad de beneficiarios, mediante un pago per cápita previamente establecido por el Consejo Nacional de Seguridad Social.\n\n'
      'La tasa acutal de descuentos en base a ARS es de 3.04% del sueldo.';
  static const afp = 'Una AFP o administradora de fondo de pensiones es una sociedad financiera, cuyo principal objetivo es administrar las cuentas personales de los trabajadores afiliados y otorgarles una pensión cuando estos finalicen su vida laboral, ya sea por jubilación, invalidez, vejez o accidente laboral.\n\n'
  'Se financian a través del cobro de comisiones a sus afiliados\n\n'
  'La tasa acutal de descuentos en base a AFP es de 2.87% del sueldo.';

  static const isr = 'Es el impuesto que grava toda renta, ingreso, utilidad o beneficio, obtenido por personas físicas, sociedades y sucesiones indivisas, en un período fiscal determinado.';
  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Descuentos RD'),
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
              child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Titulo(
                'Que es DescuentosRD?',
                size: screenSize.width * 0.08,
                alignment: Alignment.center,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                descripcion,
                style: TextStyle(fontSize: screenSize.width * 0.05),
              ),
            ),
            CustomButton(
              text: 'Haz tus calculos',
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('Calculadora');
              },
            ),
            Titulo('Descuentos AFP'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                afp,
                style: TextStyle(fontSize: screenSize.width * 0.05),
              ),
            ),

            Titulo('Descuentos ARS'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                ars,
                style: TextStyle(fontSize: screenSize.width * 0.05),
              ),
            ),

            Titulo('Descuentos ISR'),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                isr,
                style: TextStyle(fontSize: screenSize.width * 0.05),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
