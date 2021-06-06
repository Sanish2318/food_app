import 'package:flutter/material.dart';
import 'package:food_app/helpers/style.dart';
import 'package:food_app/models/products.dart';
import 'package:food_app/widgets/custom_text.dart';

class ShoppingBag extends StatefulWidget {
  @override
  _ShoppingBagState createState() => _ShoppingBagState();
}

class _ShoppingBagState extends State<ShoppingBag> {
  Product product =Product(name: "Pizza", price: 1500, image: 'food1.jpg', rating: 4.2, vendor: "GoodFoods", wishList: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 75,
          backgroundColor: white,
          automaticallyImplyLeading: false,
          leading:  IconButton(
            onPressed: (){Navigator.pop(context);},
            icon: Icon(
              Icons.arrow_back_ios,
              color: black,
            ),),
          centerTitle: true,
          title: Text('Shopping Bag',style: TextStyle(
                    color:Colors.black,
                ),),

        actions: [Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8,12,8,16),
                    child: Icon(Icons.shopping_bag_outlined,color: black,size:32),
                  ),
                  Positioned(
                    top: 28,
                    right: 0,
                    child: Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: white,
                          boxShadow: [
                            BoxShadow(
                              color: black,
                              blurRadius: 3,
                              offset: Offset(2,3),
                            )
                          ]
                      ),
                      child: Center(
                        //padding: const EdgeInsets.only(left:5.0, right: 4),
                        child: Text('2', style: TextStyle(
                          color: red,
                          fontWeight: FontWeight.w900,
                        )),

                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),],



      ),
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 120,
              decoration: BoxDecoration(
                color: white,
                boxShadow: [BoxShadow(
                  blurRadius: 30,
                  color: red[50],
                  offset: Offset(0,2),
                ),],
              ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      children: [
                        Image.asset(
                            'asset/images/${product.image}',
                            height: 100,),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              RichText(text: TextSpan(children: [
                                TextSpan(text: product.name+'\n', style: TextStyle(color: black, fontSize: 24, fontWeight: FontWeight.bold)),
                                TextSpan(text: 'Rs.'+product.price.toString(), style: TextStyle(color: black, fontSize: 18, fontWeight: FontWeight.w600)),
                              ],),),
                              IconButton(icon: Icon(Icons.delete,size: 30), onPressed: null, ),
                            ],
                          ),
                        ),
                      ]
                  ),
                )
            ),
          ),
        ],

      )
    );
  }
}
