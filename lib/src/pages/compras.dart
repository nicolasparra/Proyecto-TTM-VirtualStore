import 'package:flutter/material.dart';

class CompraScreen extends StatelessWidget {
  static String tag = '/compras';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COMPRAS DE PRODUCTOS'),
        backgroundColor: Color.fromRGBO(143, 148, 251, 1),
        elevation: 0,
      ),
    );
  }
}
