import 'package:carousel_slider/carousel_slider.dart';
import 'package:edf/utils/app_dimension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class scrollHomePage extends StatefulWidget {
  @override
  State<scrollHomePage> createState() => _scrollHomePageState();
}

class _scrollHomePageState extends State<scrollHomePage>
    with SingleTickerProviderStateMixin {
  var _activeDotIndex = 0;
  int pageIndex = 0;

  List<String> promoImages = [
    "assets/images/img1.png",
    "assets/images/img2.png",
  ];

  List<String> headline1 = [
    "We are ...",
    "Welcome To",
  ];

  List<String> headline2 = [
    "Ethiopian Digital Farmers",
    "Ethiopian Digital Farmers"
  ];

  List<String> headline3 = [
    "we are passionate about revolutionizing the way farming is done. We believe that the integration of technology and agriculture can bring forth a new era of sustain and efficient farming practices.",
    "Join us on our mission to shape the future of agriculture. See more for today and unlock a world of possibilities for your farming endeavors. Together, let's cultivate a brighter future for agriculture!"
  ];

  List<String> FoodImages = [
    "assets/images/avocado.jpg",
    "assets/images/banana.jpg",
    "assets/images/beans.jpg",
    "assets/images/cabbage.jpg",
    "assets/images/coffe.jpg",
    "assets/images/cotton.jpg",
    "assets/images/mango.jpg",
    "assets/images/seed.jpg",
  ];

  String truncateString(String text, int maxLength) {
    if (text.length > maxLength) {
      return text.substring(0, maxLength) + "...";
    } else {
      return text;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: AppDimension.width(20, context), vertical: AppDimension.height(15, context)),
          child: Stack(
            children: [
              CarouselSlider.builder(
                options: CarouselOptions(
                  height: AppDimension.height(250, context),
                  viewportFraction: 1,
                  autoPlay: true,
                  enableInfiniteScroll: true,
                  autoPlayAnimationDuration: const Duration(milliseconds: 600),
                  onPageChanged: (index, reason) {
                    setState(() {
                      _activeDotIndex = index;
                      pageIndex = index;
                    });
                  },
                ),
                itemBuilder: (_, index, realIndex) {
                  return Container(
                    height: AppDimension.height(250, context),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(promoImages[index]),
                      ),
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          const Color(0x00000000),
                          const Color(0xFF000000),
                        ],
                      ),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Color.fromARGB(100, 0, 0, 0)),
                    ),
                  );
                },
                itemCount: 2,
              ),
              Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: AppDimension.height(40, context),
                    ),
                    Text(
                      headline1[pageIndex],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: AppDimension.height(25, context),
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: AppDimension.height(15, context),
                    ),
                    Text(
                      headline2[pageIndex],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: AppDimension.height(18, context),
                          fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: AppDimension.height(20, context),
                    ),
                    Text(
                      headline3[pageIndex],
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: AppDimension.height(18, context),
                      ),
                    ),
                    SizedBox(
                      height: AppDimension.height(15, context),
                    ),
                    AnimatedSmoothIndicator(
                      activeIndex: _activeDotIndex,
                      count: 2,
                      effect: CustomizableEffect(
                        spacing: 5,
                        activeDotDecoration: DotDecoration(
                            color: Color(0xFF0D6DC4), rotationAngle: 45.0),
                        dotDecoration: DotDecoration(
                          rotationAngle: 45.0,
                          color: Color(0xFFFFFFFF),
                          width: AppDimension.height(10, context),
                          height: AppDimension.height(10, context),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: AppDimension.width(13, context), vertical: AppDimension.height(20, context)),
          child: GridView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20.0,
              mainAxisSpacing: 20.0,
              mainAxisExtent: AppDimension.height(340, context),
            ),
            itemCount: 8,
            itemBuilder: (BuildContext context, int index) {
              return GestureDetector(
                onTap: () {},
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0XFFE6E6E6),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          Container(
                            height: AppDimension.height(220, context),
                            width: double.infinity,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                FoodImages[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              SizedBox(
                                width: AppDimension.width(10, context),
                              ),
                              Icon(
                                Icons.favorite_border,
                                color: Colors.red,
                                size: AppDimension.height(30, context),
                              )
                            ],
                          ),
                        ],
                      ),
                      Container(
                        padding: EdgeInsets.only(top: AppDimension.height(10, context)),
                        child: Text(
                          " Product Title,",
                          style: TextStyle(
                              fontSize: AppDimension.height(15, context),
                              color: Color(0xFF4C53A5),
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: AppDimension.height(10, context)),
                        child: Text(
                          truncateString("description",
                              (AppDimension.myDeviceWidth * 0.04).toInt()),
                          style:
                              TextStyle(fontSize: AppDimension.height(15, context), color: Color(0xFF4c53A5)),
                        ),
                      ),
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: AppDimension.height(12, context), horizontal: AppDimension.width(5, context)),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "\$55",
                              style: TextStyle(
                                  fontSize: AppDimension.height(20, context),
                                  fontWeight: FontWeight.bold,
                                  color: Color(0xFF4c53A5)),
                            ),
                            Container(
                              height: AppDimension.height(30, context),
                              width: AppDimension.width(90, context),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.black54,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                onPressed: () {},
                                child: Text(
                                  "Add To Chart",
                                  style: TextStyle(
                                      color: Colors.white, fontSize: AppDimension.height(13, context)),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        )
      ],
    );
  }
}

