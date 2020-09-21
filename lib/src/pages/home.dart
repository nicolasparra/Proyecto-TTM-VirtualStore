import 'package:flutter/material.dart';
import 'package:virtualstore/src/pages/drawer.dart';
import 'package:virtualstore/src/pages/componentsHome/body.dart';

class HomePage extends StatelessWidget {
  static String tag = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LISTA DE PRODUCTOS'),
        backgroundColor: Color.fromRGBO(143, 148, 251, 1),
      ),
      drawer: DrawerPage(),
      body: Body(),
    );
  }
}
