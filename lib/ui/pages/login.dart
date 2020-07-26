import 'package:ecommerceapp/ui/components/button.dart';
import 'package:ecommerceapp/ui/components/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends StatelessWidget {
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
                  "Login",
                  style: Theme.of(context).textTheme.headline3.merge(TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
              Input(
                label: "Email",
              ),
              Input(
                label: "Password",
                secureText: true,
              ),

              InkWell(
                onTap: () {
                  openForgotPasswod(context);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text("Forgot password?"),
                      Container(
                        width: 50,
                        height: 15,
                        child: SvgPicture.asset(
                          "assets/icons/arrow-right.svg",

                        ),
                      )
                    ],
                  ),
                ),
              ),

              Button(
                text: "LOGIN",
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Or login with social account"),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    padding: EdgeInsets.symmetric(vertical: 30),
                    width: 120,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: SvgPicture.asset(
                      "assets/icons/google.svg",
                      width: 50,
                      height: 50,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    padding: EdgeInsets.symmetric(vertical: 30),
                    width: 120,
                    height: 90,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: SvgPicture.asset("assets/icons/facebook.svg"),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  void openForgotPasswod(BuildContext ctx) {
    Navigator.pushNamed(ctx, "/forgot-password");
  }
}
