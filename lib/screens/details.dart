import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:food_app/models/products.dart';
import 'package:food_app/widgets/custom_text.dart';
import 'package:food_app/widgets/small_button.dart';
import '../helpers/style.dart';

class Details extends StatefulWidget {
  final Product product;
  Details({@required this.product});
  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Column(
          children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: Stack(
                  children: [

                    Carousel(
                      images: [
                        AssetImage('asset/images/${widget.product.image}'),
                        AssetImage('asset/images/${widget.product.image}'),
                        AssetImage('asset/images/${widget.product.image}'),
                      ],
                      dotBgColor: white,
                      dotColor: grey,
                      dotIncreasedColor: red,
                      dotIncreaseSize: 1.5,
                      autoplay: false,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: Icon(Icons.arrow_back, color: black,),
                          onPressed: () {Navigator.pop(context);},
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right:8.0),
                          child: Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Stack(
                                  children: [
                                    Image.asset('asset/images/cart.png', width: 35, height: 35),

                                  ],
                                ),
                              ),
                              Positioned(
                                right: 1,
                                top: 2,
                                child: Container(
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(10),
                                        color: white,
                                        boxShadow: [
                                          BoxShadow(
                                            color: grey,
                                            offset: Offset(2,1),
                                            blurRadius: 3,

                                          ),
                                        ]
                                    ),
                                    padding: EdgeInsets.only(left:4, right:4),
                                    child: CustomText(text: '2', color: red, size: 16)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Positioned(
                      bottom: 60,
                      right: 10,
                      child: SmallButton(Icons.favorite),
                    ),
                    Positioned(
                      bottom: 10,
                      right: 10,
                      child: SmallButton(Icons.send,),
                    )
                  ],
                ),
              ),
            CustomText(text: widget.product.name, size: 30, weight: FontWeight.bold),
            SizedBox(height:2),
            CustomText(text: 'Rs.'+widget.product.price.toString(), size: 16, weight: FontWeight.w400),
            SizedBox(height:15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(icon: Icon(Icons.remove, size:36,),onPressed: null,),
                ),
                GestureDetector(
                  onTap: (){},
                  child: Container(
                    decoration: BoxDecoration(
                      color: red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(36,12,36,12),
                      child: CustomText(text: 'Add to Bag', color: white, size: 24, weight: FontWeight.w600),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: IconButton(icon: Icon(Icons.add, size:36, color: red),onPressed: null,),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(56.0),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,

                    children: [
                      Column(
                        children: [
                          CustomText(text:'DETAILS', size: 20, color: red),
                          Text(
                              'aaaaaaaaaaaaaaaaaaaaaaaaa',
                              style: TextStyle(
                                color: white,
                                fontStyle: FontStyle.italic,
                                fontSize: 6,
                                decoration: TextDecoration.underline,
                                decorationColor: red,
                                decorationThickness: 6,
                              )
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right:36.0),
                        child: CustomText(text:'Review',size: 20, color: grey),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text('Food is what people and animals eat to live. Food usually comes from animals and plants. '
                      'It is eaten by living things to provide energy and nutrition. Food contains the nutrition that people and animals need to be healthy.'
                      'Liquids used for energy and nutrition are often called "drinks". If someone cannot afford food they go hungry. ',
                      style: TextStyle(
                        height:1.8,
                      )),
                ],
              ),
            ),
            SizedBox(height: 100),
            Container(
              height: 100,
              padding: EdgeInsets.only(left:56,right:56),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(Icons.access_time_outlined, color: Colors.deepPurple,size: 25,),
                      SizedBox(height:25),
                      Text('12am - 3pm',style:TextStyle(
                        fontSize: 12,
                      )),

                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.my_location, color: Colors.green,size: 25,),
                      SizedBox(height:25),
                      Text('3.5km',style:TextStyle(
                        fontSize: 12,
                      )),

                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.map, color: Colors.red,size: 25,),
                      SizedBox(height:25),
                      Text('Map View',style:TextStyle(
                        fontSize: 12,
                      )),

                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.delivery_dining, color: Colors.redAccent,size: 25,),
                      SizedBox(height:25),
                      Text('Delivery',style:TextStyle(
                        fontSize: 12,
                      )),

                    ],
                  ),

                ],
              ),
            ),

          ],
        ),
      )

    );
  }
}
