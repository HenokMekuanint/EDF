import 'package:edf/presentation/auth/login/login_page.dart';
import 'package:edf/splash_screen.dart';
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
    
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  LoginPage(),
    );
  }
}


