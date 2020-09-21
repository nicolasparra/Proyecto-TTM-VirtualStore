import 'package:flutter/material.dart';

class VentasScreen extends StatelessWidget {
  static String tag = '/ventas';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('VENTAS DE PRODUCTOS'),
        backgroundColor: Color.fromRGBO(143, 148, 251, 1),
        elevation: 0,
      ),
    );
  }
}
