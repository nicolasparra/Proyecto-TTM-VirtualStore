import 'package:flutter/material.dart';
import 'package:virtualstore/src/pages/home.dart';
import 'package:virtualstore/src/pages/sigInUp.dart';
import 'package:virtualstore/src/Animation/FadeAnimation.dart';
import 'package:virtualstore/src/services/auth_service.dart';

class LoginPage extends StatefulWidget {
  static String tag = '/login';

  @override
  State<StatefulWidget> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  String _mail;
  String _password;

  Future<void> _login() async {
    final form = _formKey.currentState;
    if (form.validate()) {
      form.save();
      bool login = await AuthService().login(_mail, _password);
      if (login) {
        Navigator.pushReplacementNamed(context, HomePage.tag);
      } else {
        _neverSatisfied();
      }
    }
  }

  Future<void> _neverSatisfied() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Usuario no autentificado'),
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(10.0))),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                    'Correo electronico y/o contraseña sin coincidencias. Intentelo nuevamente')
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Cerrar'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SingleChildScrollView(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  height: 400,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/img/backgroundLogin.png'),
                          fit: BoxFit.fill)),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        left: 30,
                        width: 80,
                        height: 300,
                        child: FadeAnimation(
                            1,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/img/store.png'))),
                            )),
                      ),
                      Positioned(
                        left: 160,
                        width: 80,
                        height: 250,
                        child: FadeAnimation(
                            1.3,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/img/dolar.png'))),
                            )),
                      ),
                      Positioned(
                        right: 40,
                        top: 40,
                        width: 80,
                        height: 150,
                        child: FadeAnimation(
                            1.5,
                            Container(
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/img/clock.png'))),
                            )),
                      ),
                      Positioned(
                        child: FadeAnimation(
                            1.6,
                            Container(
                              margin: EdgeInsets.only(top: 80),
                              child: Center(
                                child: Text(
                                  "VirtualStore",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: <Widget>[
                        FadeAnimation(
                            1.8,
                            Container(
                              padding: EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        color:
                                            Color.fromRGBO(143, 148, 251, .2),
                                        blurRadius: 20.0,
                                        offset: Offset(0, 10))
                                  ]),
                              child: Column(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(8.0),
                                    decoration: BoxDecoration(
                                        border: Border(
                                            bottom: BorderSide(
                                                color: Colors.grey[100]))),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Correo Electronico",
                                          hintStyle: TextStyle(
                                              color: Colors.grey[400])),
                                      validator: (val) {
                                        if (val.isEmpty) {
                                          return 'Porfavor Ingrese Un Correo';
                                        } else {
                                          return null;
                                        }
                                      },
                                      onSaved: (val) {
                                        print(val);
                                        setState(() {
                                          _mail = val;
                                        });
                                      },
                                    ),
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(8.0),
                                    child: TextFormField(
                                      decoration: InputDecoration(
                                          border: InputBorder.none,
                                          hintText: "Contraseña",
                                          hintStyle: TextStyle(
                                              color: Colors.grey[400])),
                                      validator: (val) {
                                        if (val.isEmpty) {
                                          return 'Porfavor Ingrese Una Contraseña';
                                        } else {
                                          return null;
                                        }
                                      },
                                      onSaved: (val) {
                                        setState(() {
                                          _password = val;
                                        });
                                      },
                                    ),
                                  )
                                ],
                              ),
                            )),
                        SizedBox(
                          height: 30,
                        ),
                        FadeAnimation(
                            2,
                            Container(
                              height: 50,
                              width: 181,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  gradient: LinearGradient(colors: [
                                    Color.fromRGBO(143, 148, 251, 1),
                                    Color.fromRGBO(143, 148, 251, .6),
                                  ])),
                              child: Center(
                                  // child: Text(
                                  //   "Login",
                                  //   style: TextStyle(
                                  //       color: Colors.white,
                                  //       fontWeight: FontWeight.bold),
                                  // ),
                                  child: RaisedButton(
                                      onPressed: () {
                                        _login();
                                        // Navigator.pushReplacementNamed(
                                        //     context, HomePage.tag);
                                      },
                                      color: Color.fromRGBO(143, 148, 251, 1),
                                      child: Text('Ingresar',
                                          style: TextStyle(
                                              fontSize: 40,
                                              color: Colors.white)),
                                      shape: new RoundedRectangleBorder(
                                          borderRadius:
                                              new BorderRadius.circular(
                                                  10.0)))),
                            )),
                        SizedBox(
                          height: 70,
                        ),
                        FadeAnimation(
                            1.5,
                            // Text(
                            //   "Registrarse",
                            //   style: TextStyle(
                            //       color: Color.fromRGBO(143, 148, 251, 1)),

                            // )
                            new GestureDetector(
                              onTap: () {
                                // Navigator.pushNamed(context, "myRoute");
                                Navigator.pushNamed(context, SignupScreen.tag);
                              },
                              child: new Text("Registrarse"),
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
