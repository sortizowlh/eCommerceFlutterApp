import 'package:e_commerce/screens/register_page.dart';
import 'package:e_commerce/widgets/custom_btn.dart';
import 'package:e_commerce/widgets/custom_input.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(          
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //header title
              Container(
                padding: EdgeInsets.only(top:24),
                child: Text("Welcome user,\nLogin to your account", textAlign: TextAlign.center, style: Constants.boldHeading,)
              ),

              //Input fields
              Column(
                children: [
                  CustomInput(hintext: "Email...",),
                  CustomInput(hintext: "Password...",),
                  CustomBtn(
                    text: "Login",
                    onPressed: () {
                      print("Login btn");
                    },
                    outlineBtn: false,
                  )
                ],
              ),
              
              //register button
              Padding(
                padding: const EdgeInsets.only(bottom: 16.0),
                child: CustomBtn(
                  text: "Create a new account",
                  onPressed: () {
                    Navigator.push(
                      context, 
                      MaterialPageRoute(builder: (context) => RegisterPage())
                    );
                  },
                  outlineBtn: true,
                ),
              )
            ],
          ),
        ),
      )
    );
  }
}
