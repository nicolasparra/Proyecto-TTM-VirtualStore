import 'package:flutter/material.dart';

class PerfilScreen extends StatelessWidget {
  static String tag = '/perfil';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PERFIL'),
        backgroundColor: Color.fromRGBO(143, 148, 251, 1),
        elevation: 0,
      ),
    );
  }
}
