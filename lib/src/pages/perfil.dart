import 'package:flutter/material.dart';
import 'package:virtualstore/src/pages/editPerfil.dart';

class PerfilScreen extends StatelessWidget {
  static String tag = '/perfil';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Perfil'),
        backgroundColor: Color.fromRGBO(143, 148, 251, 1),
        elevation: 0,
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints viewportConstraints) {
          return Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 30,
            ),
            //color: Theme.of(context).primaryColor,
            color: Color.fromRGBO(245, 245, 245, 1),
            width: double.infinity,
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    Image.asset(
                      'assets/img/perfil.png',
                      height: 130,
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FlatButton(
                      child: Text(
                        "Editar",
                        textAlign: TextAlign.end,
                      ),
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, EditPerfil.tag);
                      },
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Nombre"),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                      enabled: false,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Nicolas Parra',
                        contentPadding: const EdgeInsets.all(15),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Email"),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                      enabled: false,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'nicolas.parra@gmail.com',
                        contentPadding: const EdgeInsets.all(15),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Telefono"),
                    SizedBox(
                      height: 5,
                    ),
                    TextField(
                      obscureText: true,
                      style: TextStyle(fontSize: 18, color: Colors.black54),
                      enabled: false,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        hintText: '+56911223344',
                        contentPadding: const EdgeInsets.all(15),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
