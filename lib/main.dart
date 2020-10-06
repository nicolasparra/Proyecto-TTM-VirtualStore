import 'package:flutter/material.dart';

// import 'package:virtualstore/src/pages/home.dart';
import 'package:virtualstore/src/pages/login.dart';
import 'package:virtualstore/src/routes/routes.dart';
// import 'package:flutter_secure_storage/flutter_secure_storage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  // final storage = new FlutterSecureStorage();

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
