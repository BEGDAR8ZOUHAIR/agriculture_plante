import 'package:flutter/material.dart';

class Product {
  String name;
  String image;
  String description;
  double price;
  String unit;
  double  rating;
  
  Product({
    required this.name,
    required this.image,
    required this.description,
    required this.price,
    required this.unit, 
    required this.rating
  });
}