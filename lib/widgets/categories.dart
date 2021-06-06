import 'package:flutter/material.dart';
import 'package:food_app/models/category.dart';
import 'file:///C:/Sanish/HERALD/4th%20Semester/Human%20Computer%20Interaction/Crash%20Course/Food_App/food_app/lib/helpers/style.dart';
import 'custom_text.dart';

List <Category> categoriesList = [
  Category(name: "Salad", image: 'salad.png'),
  Category(name: "Steak", image: 'steak.png'),
  Category(name: "Breakfast", image: 'breakfast.png'),
  Category(name: "Fast Food", image: 'sandwich.jpg'),
  Category(name: "Deserts", image: 'ice-cream.png'),
  Category(name: "Beer", image: 'beer.png'),
];

class Categories extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categoriesList.length,
          itemBuilder: (_, index){
            return Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(5),
                            boxShadow: [
                              BoxShadow(
                                color: red[50],
                                offset: Offset(5,6),
                                blurRadius: 10,
                              ),
                            ],
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Image.asset('asset/images/${categoriesList[index].image}', width: 60, height: 60, fit: BoxFit.contain),
                          ),
                        ),
                        SizedBox(height: 10,),
                        CustomText(text: categoriesList[index].name,size: 14, color: black,),
                      ]
                  ),
                ),
                SizedBox(width:15),
              ],
            );

          }
      ),
    );
  }
}

