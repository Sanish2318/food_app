import 'package:flutter/material.dart';
import 'package:food_app/widgets/custom_text.dart';

class NavigationItem extends StatelessWidget {
  final String image;
  final String name;
  final Function onTap;

  NavigationItem({@required this.image, @required this.name, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: onTap ?? null,
        child: Column(
          children: [
            Image.asset('asset/images/${image}', width: 28, height: 28,),
            CustomText(text: '${name}', size: 14),
          ],
        ),
      ),
    );
  }


}
