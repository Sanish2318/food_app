import 'package:flutter/material.dart';
import 'file:///C:/Sanish/HERALD/4th%20Semester/Human%20Computer%20Interaction/Crash%20Course/Food_App/food_app/lib/helpers/style.dart';

class CustomText extends StatelessWidget {
  final String text;
  final double size;
  final Color color;
  final FontWeight weight;


  CustomText({@required this.text, this.size, this.color, this.weight});

  @override
  Widget build(BuildContext context) {
    return Text(text,style: TextStyle(
      fontSize: size ?? 16,
      fontWeight: weight?? FontWeight.normal,
      color:  color ?? black,
    ));
  }
}
