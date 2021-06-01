import 'package:flutter/material.dart';

class MyHome extends StatefulWidget {
  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        //color: Colors.black,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('asset/images/parkvillage_a - Copy.jpg'),

          )
        )
      ),
    );
  }
}
