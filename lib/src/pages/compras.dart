import 'package:flutter/material.dart';
import 'package:virtualstore/src/models/Product.dart';

class CompraScreen extends StatelessWidget {
  static String tag = '/compras';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Compras realizadas'),
        backgroundColor: Color.fromRGBO(143, 148, 251, 1),
        elevation: 0,
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
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage(products[index].image),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          products[index].title,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Text(
                          "00/00/00",
                          textAlign: TextAlign.center,
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Text(
                "\$" + products[index].price.toString(),
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              )
            ],
          ),
        ],
      )),
    );
  }
}
