import 'package:carousel_slider/carousel_slider.dart';
import 'package:edf/presentation/widgets/custom_App_bar.dart';
import 'package:edf/presentation/scroll_home_page.dart';
import 'package:edf/utils/app_dimension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Home>  with SingleTickerProviderStateMixin  {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: CustomAppBar(),
        body: SafeArea(
          child: SingleChildScrollView(
            child:scrollHomePage() ,
          ),
        )
        );
  }
}
