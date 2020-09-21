import 'package:flutter/services.dart';
import 'dart:convert';

class _ProductosProviders {
  List<dynamic> productos = [];

  _ProductosProviders();

  Future<List<dynamic>> loadproductos() async {
    final String productosJson =
        await rootBundle.loadString('assets/json/productos.json');
    Map<String, dynamic> prodcutMap = json.decode(productosJson);
    productos = prodcutMap['productos'];

    return productos;
  }
}

final productosProviders = new _ProductosProviders();
