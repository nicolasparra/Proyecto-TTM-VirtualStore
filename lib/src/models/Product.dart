import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;
  Product({
    this.id,
    this.image,
    this.title,
    this.price,
    this.description,
    this.size,
    this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      title: "Olla de cocina",
      price: 8000,
      size: 12,
      description: dummyText,
      image: "assets/img/olla.png",
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      title: "Tetera",
      price: 6000,
      size: 8,
      description: dummyText,
      image: "assets/img/tetera.png",
      color: Color(0xFFD3A984)),
  Product(
      id: 3,
      title: "Cuchara",
      price: 500,
      size: 10,
      description: dummyText,
      image: "assets/img/cuchara.png",
      color: Color(0xFF989493)),
  Product(
      id: 4,
      title: "Bolso",
      price: 3000,
      size: 11,
      description: dummyText,
      image: "assets/img/bag_4.png",
      color: Color(0xFFE6B398)),
  Product(
      id: 5,
      title: "Calefon",
      price: 150000,
      size: 12,
      description: dummyText,
      image: "assets/img/calefon.jpg",
      color: Color(0xFFFB7883)),
  Product(
    id: 6,
    title: "Cocina",
    price: 100000,
    size: 12,
    description: dummyText,
    image: "assets/img/cocina.jpg",
    color: Color(0xFFAEAEAE),
  ),
];

String dummyText =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since. When an unknown printer took a galley.";
