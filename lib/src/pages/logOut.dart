import 'package:flutter/material.dart';

class SalirPage extends StatelessWidget {
  static String tag = '/salir';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hasta pronto'),
      ),
      body: Center(
        child: Text('Gracias por visitar nuestra lista de Héroes!'),
      ),
    );
  }
}
