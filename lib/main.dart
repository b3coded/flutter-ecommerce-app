import 'package:ecommerceapp/ui/pages/forgot_password.dart';
import 'package:ecommerceapp/ui/pages/login.dart';
import 'package:ecommerceapp/ui/pages/signup.dart';
import 'package:ecommerceapp/ui/themes/dark.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Ecommerce',
      theme: darkTheme,
      routes: {
        "/": (ctx) => SignUpScreen(),
        "/login": (ctx) =>   LoginScreen(),
        "/forgot-password": (ctx) => ForgotPasswordScreen(),
      },
      initialRoute: "/",
    );
  }
}
