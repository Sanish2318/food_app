import 'package:flutter/material.dart';
import 'package:food_app/helpers/screen_navigation.dart';
import 'package:food_app/helpers/style.dart';
import 'package:food_app/screens/login.dart';
import 'package:food_app/widgets/custom_text.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SingleChildScrollView(
          child: Column(

            children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('asset/images/lg.png',width: 250, height: 250,),
                ],
              ),
              Image(image: NetworkImage('https://i.pinimg.com/originals/e5/07/d7/e507d704d4b6fdcb17116762fcd99acd.gif')),
              SizedBox(height: 50),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Username',
                        border: InputBorder.none,
                        icon: Icon(Icons.person),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Emails',
                        border: InputBorder.none,
                        icon: Icon(Icons.email),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: grey),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10.0),
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Password',
                        border: InputBorder.none,
                        icon: Icon(Icons.lock),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: null,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16,8,16,8),
                  child: Text('Register', style: TextStyle(
                    color: white,
                    fontSize: 20,
                  )),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(red),
                ),
              ),
              SizedBox(height: 5),
              GestureDetector(
                  onTap: (){changeScreen(context, LoginScreen());},
                  child: CustomText(text: 'Login', size: 18)),


            ],
          )
      ),
    );
  }
}
