import 'package:flutter/material.dart';

//import 'package:virtualstore/src/pages/home.dart';
import 'package:virtualstore/src/pages/login.dart';
import 'package:virtualstore/src/routes/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      //   visualDensity: VisualDensity.adaptivePlatformDensity,
      // ),
      //home: HomePage(),
      //initialRoute: HomePage.tag,
      initialRoute: LoginPage.tag,
      routes: getRoutes(),
    );
  }
}
