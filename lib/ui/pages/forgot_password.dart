import 'package:ecommerceapp/ui/components/button.dart';
import 'package:ecommerceapp/ui/components/input.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(bottom: 60),
                  child: Text(
                    "Forgot password",
                    style: Theme.of(context).textTheme.headline3.merge(TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold)),
                  ),
                ),

                Text("Please, enter your email address. You will receive a link to create a new password via email.", style: TextStyle(color: Colors.white),),
                Input(
                  label: "Email",
                ),
                Button(
                  text: "SEND",
                ),
              ],
            ),
          )),
    );
  }
}
