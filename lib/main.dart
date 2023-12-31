import 'package:edf/presentation/checkout/checkout.dart';
import 'package:edf/presentation/product/product_detail.dart';
import 'package:edf/presentation/scroll_home_page.dart';
import 'package:edf/presentation/main_home_page.dart';
import 'package:edf/presentation/auth/login/login_page.dart';
import 'package:edf/presentation/splash_screen.dart';
import 'package:flutter/material.dart';

import 'presentation/auth/signup/signup_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignUpPage(),
        '/home': (context) => Home(),
        '/product_detail': (context) => const ProductDetailPage(),
        '/checkout': (context) => CheckoutMethodScreen(),
      },
    );
  }
}
