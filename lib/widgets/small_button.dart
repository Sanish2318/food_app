import 'package:flutter/material.dart';
import 'package:food_app/helpers/style.dart';
import 'package:food_app/models/products.dart';

import 'featured_products.dart';

class SmallButton extends StatelessWidget {
  final IconData icon;

  SmallButton(this.icon);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: grey[300],
              offset: Offset(2,1),
              blurRadius: 4,
            )
          ]
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child:  Icon(icon, size: 14, color: red,),
      ),
    );
  }
}
