import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import '../media/ImageMedia.dart';

String productsBoxname = 'products_box';

@HiveType(typeId: 2)
class Product {
  @HiveField(0)
  int id;
  @HiveField(1)
  String title;
  @HiveField(2)
  ImageMedia image;
  @HiveField(3)
  DateTime createdAt;
  @HiveField(4)
  double price;

  Product({
    @required this.id,
    @required this.title,
    @required this.image,
    @required this.createdAt,
    @required this.price,
  });
}
