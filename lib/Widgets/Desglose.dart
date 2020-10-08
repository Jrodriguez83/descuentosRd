import 'package:descuentos_rd/Widgets/CustomTableCell.dart';
import 'package:flutter/material.dart';
import 'Titulo.dart';

class Desglose extends StatefulWidget {
  Desglose({
    this.ingresosBrutos = 0,
    this.descuentosAdicionales = 0,
  });

  final ingresosBrutos;
  final descuentosAdicionales;

  @override
  _DesgloseState createState() => _DesgloseState();
}

class _DesgloseState extends State<Desglose> {
  double descuentoAFP = 0.0;

  double descuentosARS = 0.0;

  double descuentosISR = 0.0;

  double totalDescuentos;

  @override
  Widget build(BuildContext context) {
    totalDescuentos = descuentoAFP+descuentosARS+descuentosISR+widget.descuentosAdicionales;
    return Container(
      margin: EdgeInsets.all(8),
      child: Column(
        children: [
          Titulo('Desglose'),
          Table(
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
                CustomTableCell(title: '\$$descuentoAFP'),
                CustomTableCell(title: '\$${descuentoAFP*12}'),
              ]),
              TableRow(children: [
                CustomTableCell(title: 'Descuentos ARS'),
                CustomTableCell(title: '\$$descuentosARS'),
                CustomTableCell(title: '\$${descuentosARS*12}'),
              ]),
              TableRow(children: [
                CustomTableCell(title: 'Descuentos ISR'),
                CustomTableCell(title: '\$$descuentosISR'),
                CustomTableCell(title: '\$${descuentosISR*12}'),
              ]),
              TableRow(children: [
                CustomTableCell(title: 'Descuentos Adicionales'),
                CustomTableCell(title: '\$${widget.descuentosAdicionales}'),
                CustomTableCell(title: '\$${widget.descuentosAdicionales * 12}'),
              ]),
              TableRow(children: [
                CustomTableCell(title: 'Total Descuentos'),
                CustomTableCell(title: '\$$totalDescuentos'),
                CustomTableCell(title: '\$${totalDescuentos*12}'),
              ]),
              TableRow(children: [
                CustomTableCell(title: 'Ingresos Netos'),
                CustomTableCell(title: '\$${widget.ingresosBrutos-totalDescuentos}'),
                CustomTableCell(title: '\$${(widget.ingresosBrutos-totalDescuentos)*12}'),
              ]),
            ],
          )
        ],
      ),
    );
  }
}
