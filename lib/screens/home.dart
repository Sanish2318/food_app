import 'package:flutter/material.dart';
import 'package:food_app/widgets/categories.dart';
import 'package:food_app/widgets/custom_text.dart';
import 'package:food_app/widgets/featured_products.dart';
import 'package:food_app/widgets/navigation_items.dart';
import 'commons.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      //SafeArea will avoid contents of the app to appear over the top mobile display
      body: SafeArea(
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
                  child: CustomText(
                    text: "What are you looking for?",
                    size: 18,),
                ),
                Stack(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 4.0),
                      child: IconButton(icon: Icon(Icons.notifications_none), onPressed: (){}),
                    ),
                    Positioned(
                      top: 18,
                      right: 13,
                      child: Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                          color: red,
                          borderRadius: BorderRadius.circular(20),
                        )
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: white,
                  boxShadow: [
                    BoxShadow(
                      color: grey[300],
                      offset: Offset(1,1),
                      blurRadius: 4,
                    )
                  ]
                ),
                child: ListTile(
                  leading: Icon(Icons.search,color: red),
                  trailing: Icon(Icons.filter_list,color: red),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: 'Find food or Restaurant',
                      border: InputBorder.none,
                    )
                  ),
                ),
              ),
            ),

            SizedBox(
              height: 5,
            ),
            Categories(),
            // SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(text: 'Featured', size: 20, color: grey,),
            ),

           Featured(),
            SizedBox(height:5),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(text: 'Popular', size: 20, color: grey,),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(20,),
                      child: Image.asset("asset/images/popular_food2.jpg")),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: red,
                            ),
                            child: Icon(Icons.favorite, color: white,size: 18)),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Container(
                          width: 55,
                          height: 25,

                          decoration: BoxDecoration(
                            color: white,
                            borderRadius: BorderRadius.circular(5),
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.star, color: Colors.orangeAccent,size:18),
                              Text('4.5'),
                            ],
                          ),
                        ),
                      )
                    ]
                  ),
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                            ),
                            gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                  Colors.black.withOpacity(0.8),
                                Colors.black.withOpacity(0.7),
                                Colors.black.withOpacity(0.6),
                                Colors.black.withOpacity(0.4),
                                Colors.black.withOpacity(0.1),
                                Colors.black.withOpacity(0.05),
                                Colors.black.withOpacity(0.025),

                              ],
                          )
                        ),
                      ),
                    ),
                  )
                ),
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(16, 8, 8, 4),
                          child: RichText(text: TextSpan(children: [
                            TextSpan(text:'Pancakes\n', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600) ),
                            TextSpan(text:'by: ', style: TextStyle(fontSize: 16, color: grey) ),
                            TextSpan(text:'Pizza hut\n', style: TextStyle(fontSize: 16,) ),
                          ],),),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(16),
                          child: RichText(text: TextSpan(text: '\$12.99', style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w300,
                          ))),
                        ),
                      ],
                    ),
                  )
                ),

              ],
            ),
            
          ]
        ),
      ),

      bottomNavigationBar: Container(
        height: 60,
        color: white,
        child: Padding(
          padding: const EdgeInsets.only(left:20.0, right: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              NavigationItem(image: 'home.png',name: 'Home'),
              NavigationItem(image: 'target.png',name: 'Nearby'),
              NavigationItem(image: 'cart.png',name: 'Cart'),
              NavigationItem(image: 'me.png',name: 'Me'),
            ]
          ),
        )
      ),
    );
  }
}
