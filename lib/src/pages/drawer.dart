import 'package:flutter/material.dart';

import 'package:virtualstore/src/utils/colorHex.dart';
import 'package:virtualstore/src/pages/login.dart';
import 'package:virtualstore/src/pages/compras.dart';
import 'package:virtualstore/src/pages/ventas.dart';
import 'package:virtualstore/src/pages/perfil.dart';

class DrawerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Color.fromRGBO(143, 148, 251, 1),
              image: DecorationImage(
                  image: AssetImage('assets/img/backgroundDrawer.jpg'),
                  fit: BoxFit.cover),
            ),
            child: Text(
              'VirtualStore',
              style: TextStyle(
                fontSize: 28.0,
                color: Color(hexToColor("#2c3e50")),
              ),
            ),
          ),
          ListTile(
            title: Text('Compras'),
            leading: Icon(Icons.add_shopping_cart),
            onTap: () => Navigator.pushNamed(context, CompraScreen.tag),
          ),
          ListTile(
            title: Text('Ventas'),
            leading: Icon(Icons.local_atm),
            onTap: () => Navigator.pushNamed(context, VentasScreen.tag),
          ),
          ListTile(
            title: Text('Perfil'),
            leading: Icon(Icons.account_circle),
            onTap: () => Navigator.pushNamed(context, PerfilScreen.tag),
          ),
          ListTile(
            title: Text('Salir'),
            leading: Icon(Icons.exit_to_app),
            onTap: () => Navigator.pushReplacementNamed(context, LoginPage.tag),
          ),
        ],
      ),
    );
  }
}
