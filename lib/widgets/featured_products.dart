import 'package:flutter/material.dart';
import 'custom_text.dart';
import 'package:food_app/screens/commons.dart';
import 'package:food_app/models/products.dart';

List<Product> productList = [
  Product(name: "Pizza", price: 1500, image: 'food1.jpg', rating: 4.2, vendor: "GoodFoods", wishList: true),
  Product(name: "Burger", price: 800, image: 'food3.jpg', rating: 4.5, vendor: "GoodFoods", wishList: true),
  Product(name: "MO:MO:", price: 250, image: 'food2.jpg', rating: 5.0, vendor: "GoodFoods", wishList: true),
];

class Featured extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
        height: 260,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: productList.length,
            itemBuilder: (_, index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Container(
                      height: 260,
                      width: 220,
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: grey[300],
                              offset: Offset(1,1),
                              blurRadius: 20,
                            ),
                          ]
                      ),
                      child: Column(

                          children: [
                            Image.asset('asset/images/${productList[index].image}', height: 140, width: 140, fit: BoxFit.contain),
                            SizedBox(height:10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: CustomText(text: '${productList[index].name}'),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: Colors.white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: grey[300],
                                            offset: Offset(1,1),
                                            blurRadius: 4,
                                          )
                                        ]
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.all(4.0),
                                      child: productList[index].wishList ? Icon(Icons.favorite, size: 18, color: red):
                                      Icon(Icons.favorite_border, size: 18, color: red,),

                                    ),
                                  ),
                                ),
                              ],
                            ),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Row(
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(left:8.0),
                                      child: CustomText(text: '${productList[index].rating}', size: 12, color: grey),
                                    ),
                                    SizedBox(width: 2),
                                    Icon(Icons.star, color: red, size: 16),
                                    Icon(Icons.star, color: red, size: 16),
                                    Icon(Icons.star, color: red, size: 16),
                                    Icon(Icons.star, color: red, size: 16),
                                    Icon(Icons.star, color: grey, size: 16),
                                  ],
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(right: 8.0),
                                  child: CustomText(text: 'Rs. ${productList[index].price}', color:black, size: 12, weight: FontWeight.bold),
                                ),
                              ],
                            )
                          ]
                      ),
                    ),
                    SizedBox(width: 5),
                  ],
                ),
              );
            })
    );
  }
}
