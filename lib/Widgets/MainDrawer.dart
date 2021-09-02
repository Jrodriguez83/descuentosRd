import 'package:flutter/material.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.symmetric(vertical: 40.0),
          child: Image.asset('assets/images/descuentos.jpg'),
        ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Inicio'),
            onTap: (){
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          ListTile(
            leading: Icon(Icons.calculate_outlined),
            title: Text('Calculadora'),
            onTap: (){
              Navigator.of(context).pushReplacementNamed('Calculadora');
            },
          ),
        ],
      ),
    );
  }
}
