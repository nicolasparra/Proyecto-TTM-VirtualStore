import 'package:flutter/material.dart';

import 'package:virtualstore/src/pages/home.dart';
import 'package:virtualstore/src/pages/compras.dart';
import 'package:virtualstore/src/pages/logOut.dart';
import 'package:virtualstore/src/pages/login.dart';
import 'package:virtualstore/src/pages/sigInUp.dart';
import 'package:virtualstore/src/pages/ventas.dart';
import 'package:virtualstore/src/pages/perfil.dart';

Map<String, WidgetBuilder> getRoutes() {
  return <String, WidgetBuilder>{
    HomePage.tag: (context) => HomePage(),
    CompraScreen.tag: (context) => CompraScreen(),
    SalirPage.tag: (context) => SalirPage(),
    LoginPage.tag: (context) => LoginPage(),
    SignupScreen.tag: (context) => SignupScreen(),
    VentasScreen.tag: (context) => VentasScreen(),
    PerfilScreen.tag: (context) => PerfilScreen()
  };
}
