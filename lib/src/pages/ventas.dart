import 'package:flutter/material.dart';
import 'package:virtualstore/src/models/Product.dart';
import 'package:virtualstore/src/pages/newProduct.dart';

class VentasScreen extends StatelessWidget {
  static String tag = '/ventas';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Productos en venta'),
        backgroundColor: Color.fromRGBO(143, 148, 251, 1),
        elevation: 0,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              Navigator.pushReplacementNamed(context, NewProduct.tag);
            },
          )
        ],
      ),
      body: ProductList(),
    );
  }
}

class ProductList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (BuildContext context, int index) =>
              buildProductCard(context, index)),
    );
  }

  Widget buildProductCard(BuildContext context, int index) {
    return new Container(
      child: Card(
          child: Padding(
              padding: EdgeInsets.all(12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        radius: 60,
                        backgroundImage: AssetImage(products[index].image),
                      )
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        products[index].title,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.lightBlue),
                      )
                    ],
                  ),
                ],
              ))),
    );
  }
}
