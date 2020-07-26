import 'package:ecommerceapp/ui/components/button.dart';
import 'package:ecommerceapp/ui/components/input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpScreen extends StatelessWidget {
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
                  "Sign up",
                  style: Theme.of(context).textTheme.headline3.merge(TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold)),
                ),
              ),
              Input(
                label: "Name",
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
                  openLogin(context);
                },
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text("Already have an account?"),
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
                text: "SIGN UP",
              ),

              Spacer(),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Or sign up with social account"
                  ),
                ],
              ),

              SizedBox(height: 20,),

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

  void openLogin(BuildContext ctx) {
    Navigator.pushNamed(ctx, "/login");
  }
}
