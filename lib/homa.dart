import 'package:carousel_slider/carousel_slider.dart';
import 'package:edf/utils/app_dimension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Home extends StatefulWidget {
  @override
  State<Home> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<Home> with SingleTickerProviderStateMixin {
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
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Stack(
                  children: [
                    CarouselSlider.builder(
                      options: CarouselOptions(
                        height: 200,
                        viewportFraction: 1,
                        autoPlay: true,
                        enableInfiniteScroll: true,
                        autoPlayAnimationDuration:
                            const Duration(milliseconds: 600),
                        onPageChanged: (index, reason) {
                          setState(() {
                            _activeDotIndex = index;
                            pageIndex = index;
                          });
                        },
                      ),
                      itemBuilder: (_, index, realIndex) {
                        return Container(
                          height: 200,
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
                        ;
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
                                fontSize: 20,
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
                                fontSize: 20,
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
                              fontSize: 15,
                            ),
                          ),
                          SizedBox(
                            height: AppDimension.height(5, context),
                          ),
                          AnimatedSmoothIndicator(
                            activeIndex: _activeDotIndex,
                            count: 2,
                            effect: CustomizableEffect(
                              spacing: 5,
                              activeDotDecoration: DotDecoration(
                                  color: Color(0xFF0D6DC4),
                                  rotationAngle: 45.0),
                              dotDecoration: DotDecoration(
                                rotationAngle: 45.0,
                                color: Color(0xFFFFFFFF),
                                width: 10,
                                height: 10,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 5, vertical: 10),
                child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 10.0,
                    mainAxisSpacing: 10.0,
                    mainAxisExtent: 270,
                  ),
                  itemCount: 8,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: (){
                        
                      },
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                        margin: EdgeInsets.symmetric(vertical: 8, horizontal: 13),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Color(0XFFE6E6E6),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.black.withOpacity(0.4),
                                  spreadRadius: 1,
                                  blurRadius: 4)
                            ]),
                        child: Column(
                          children: [
                            Container(
                              height: 160,
                              width: double.infinity,
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Image.asset(
                                      FoodImages[index],
                                      fit: BoxFit.cover,
                                      
                                    ),
                                  ),
                            ),
                            SizedBox(height: 10,),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  children: [
                                    Text(
                                      truncateString("description", (AppDimension.myDeviceWidth*0.04).toInt()),
                                    ),
                                    
                                  ],
                                ),
                    
                                Text("18.5\$")
                              ],
                            ),
                    SizedBox(
                                        height: AppDimension.height(20, context),
                                      ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CircleAvatar(
                                  backgroundColor: Colors.black,
                                  radius: AppDimension.height(15, context),
                                  child: Icon(
                                    Icons.favorite,
                                    color: Colors.white,
                                    size: AppDimension.height(20, context),
                                  ),
                                ),
                    
                                      
                                Container(
                                  width: 120,
                                  height: 35,
                                  child: ElevatedButton(
                                    
                                  onPressed: (){}, 
                                  child:
                                  Text( truncateString("Add To Chart", (AppDimension.myDeviceWidth*0.04).toInt()) 
                                  ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ))
            ],
          ),
        ));
  }
}
