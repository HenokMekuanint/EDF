import 'dart:async';

import 'package:edf/presentation/scroll_home_page.dart';
import 'package:edf/utils/app_dimension.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 5), () {
      Navigator.popAndPushNamed(
        context,
        '/login',
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.brown,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/logo.png",
              height: AppDimension.height(200, context),
              width: AppDimension.width(150, context),
            ),
            SizedBox(
              height: AppDimension.height(20, context),
            ),
            Text(
              "Ethiopia Digital Farmers",
              style: TextStyle(
                  color: Colors.green,
                  fontSize: AppDimension.height(40, context),
                  fontWeight: FontWeight.w500),
            )
          ],
        ),
      ),
    );
  }
}
