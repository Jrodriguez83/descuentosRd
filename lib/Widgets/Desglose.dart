import 'package:descuentos_rd/Widgets/CustomTableCell.dart';
import 'package:flutter/material.dart';
import 'Titulo.dart';

class Desglose extends StatefulWidget {
  Desglose({
    this.ingresosBrutos = 0,
    this.descuentosAdicionales = 0,
  });

  final double ingresosBrutos;
  final double descuentosAdicionales;

  @override
  _DesgloseState createState() => _DesgloseState();
}

enum Escala {
  Exento,
  Rango1,
  Rango2,
  Rango3,
}

class _DesgloseState extends State<Desglose> {
  double descuentoAFP = 0.0;

  double descuentosARS = 0.0;

  double descuentosISR = 0.0;

  double totalDescuentos;

  Escala escala;

  void calcularISR() {
    final double sueldoAnual = (widget.ingresosBrutos - descuentoAFP - descuentosARS) * 12;

    if (sueldoAnual <= 416220.00) {
      escala = Escala.Exento;
    } else if (sueldoAnual > 416220.00 && sueldoAnual <= 624329.00) {
      escala = Escala.Rango1;
    } else if (sueldoAnual > 624329.00 && sueldoAnual <= 867123.00) {
      escala = Escala.Rango2;
    } else if (sueldoAnual > 867123.00) {
      escala = Escala.Rango3;
    }

    switch (escala) {
      case Escala.Exento:
        descuentosISR = 0.0;
        break;
      case Escala.Rango1:
        descuentosISR = ((sueldoAnual - 416220.01) * 0.15) / 12;
        break;

      case Escala.Rango2:
        descuentosISR = (31216.00 + ((sueldoAnual - 624329.01) * 0.2));
        break;

      case Escala.Rango3:
        descuentosISR = (79776.00 + ((sueldoAnual - 867123.01) * 0.25));
        break;
      default:
    }
  }

  @override
  Widget build(BuildContext context) {
    descuentoAFP = widget.ingresosBrutos * 0.0287;
    descuentosARS = widget.ingresosBrutos * 0.0304;
        calcularISR();
    totalDescuentos = descuentoAFP +
        descuentosARS +
        descuentosISR +
        widget.descuentosAdicionales;

    return Container(
      child: Column(
        children: [
          Titulo(
            'Desglose',
            icon: Icons.table_chart_outlined,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 8.0, vertical: 25),
            child: Table(
              border: TableBorder.all(),
              children: [
                TableRow(
                    decoration: BoxDecoration(
                      color: Theme.of(context).primaryColor,
                    ),
                    children: [
                      CustomTableCell(title: 'Desglose', color: Colors.white),
                      CustomTableCell(title: 'Mensual', color: Colors.white),
                      CustomTableCell(title: 'Anual', color: Colors.white),
                    ]),
                TableRow(children: [
                  CustomTableCell(title: 'Ingresos brutos'),
                  CustomTableCell(title: '\$${widget.ingresosBrutos}'),
                  CustomTableCell(title: '\$${widget.ingresosBrutos * 12}'),
                ]),
                TableRow(children: [
                  CustomTableCell(title: 'Descuentos AFP'),
                  CustomTableCell(title: '\$${descuentoAFP.toStringAsFixed(2)}'),
                  CustomTableCell(title: '\$${(descuentoAFP * 12).toStringAsFixed(2)}'),
                ]),
                TableRow(children: [
                  CustomTableCell(title: 'Descuentos ARS'),
                  CustomTableCell(title: '\$${descuentosARS.toStringAsFixed(2)}'),
                  CustomTableCell(title: '\$${(descuentosARS * 12).toStringAsFixed(2)}'),
                ]),
                TableRow(children: [
                  CustomTableCell(title: 'Descuentos ISR'),
                  CustomTableCell(title: '\$${descuentosISR.toStringAsFixed(2)}'),
                  CustomTableCell(title: '\$${(descuentosISR * 12).toStringAsFixed(2)}'),
                ]),
                TableRow(children: [
                  CustomTableCell(title: 'Descuentos Adicionales'),
                  CustomTableCell(title: '\$${widget.descuentosAdicionales.toStringAsFixed(2)}'),
                  CustomTableCell(
                      title: '\$${(widget.descuentosAdicionales * 12).toStringAsFixed(2)}'),
                ]),
                TableRow(children: [
                  CustomTableCell(title: 'Total Descuentos'),
                  CustomTableCell(title: '\$${totalDescuentos.toStringAsFixed(2)}'),
                  CustomTableCell(title: '\$${(totalDescuentos * 12).toStringAsFixed(2)}'),
                ]),
                TableRow(children: [
                  CustomTableCell(title: 'Ingresos Netos'),
                  CustomTableCell(
                      title: '\$${(widget.ingresosBrutos - totalDescuentos).toStringAsFixed(2)}'),
                  CustomTableCell(
                      title:
                          '\$${((widget.ingresosBrutos - totalDescuentos) * 12).toStringAsFixed(2)}'),
                ]),
              ],
            ),
          )
        ],
      ),
    );
  }
}
