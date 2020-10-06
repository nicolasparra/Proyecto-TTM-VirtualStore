import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:virtualstore/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
// import 'package:virtualstore/src/utils/connected.dart';

class AuthService {
  Map<String, String> _headers = {
    'Content-Type': 'application/json',
    'Authorization': 'mi\$up34Token'
  };

  Future<bool> login(_mail, _password) async {
    final response = await http.post(baseUrl + "/auth/login",
        headers: this._headers,
        body: jsonEncode({"email": _mail, "password": _password}));
    print('Código status del GET: ${response.statusCode}');
    if (response.statusCode == 200) {
      Map<String, dynamic> token = jsonDecode(response.body);
      // print('${token['data']}');
      // guardarToken(token['data']);
      // SharedPreferences prefs = await SharedPreferences.getInstance();
      // await prefs.setString('token', token['data']);
      return true;
    } else {
      return false;
    }
  }

  Future<bool> registro(_mail, _password, _nombre) async {
    final response = await http.post(baseUrl + "/auth/registroUser",
        headers: this._headers,
        body: jsonEncode(
            {"email": _mail, "password": _password, "nombre": _nombre}));
    print('Código status del POST: ${response.statusCode}');
    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  guardarToken(_token) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('token', _token);
  }

  imprimirtoken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    print(prefs.getInt('token'));
  }
}
