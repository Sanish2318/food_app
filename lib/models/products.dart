import 'package:flutter/cupertino.dart';

class Product{
  final String name;
  final int price;
  final String image;
  final double rating;
  final String vendor;
  final bool wishList;

  Product({@required this.name,@required  this.price,@required  this.image, @required this.wishList, @required this.vendor, @required this.rating});


}