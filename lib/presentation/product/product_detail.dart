
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


import '../../utils/app_dimension.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});
  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  String selectedText = 'MORE INFO';

  Widget buildNavItem(String text) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedText = text;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(vertical: AppDimension.height(12,context), horizontal: AppDimension.width(24, context)),
        decoration: BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color:
                  selectedText == text ? Color(0xFF7A9A1D) : Colors.transparent,
              width: AppDimension.width(2, context),
            ),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: AppDimension.height(12, context),
            color: selectedText == text ? Color(0xFF7A9A1D) : Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  PreferredSize(
        preferredSize:  Size.fromHeight(AppDimension.height(60, context)),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(color: Color(0xFF7A9A1D)),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.chevron_left),
              Container(
                margin: EdgeInsets.only(left: AppDimension.height(15, context)),
                child: Text(
                  "EDF",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin:  EdgeInsets.only(right: AppDimension.width(15, context)),
                child: Image.asset(
                  "assets/images/logo.png",
                  width: AppDimension.width(30, context),
                  height: AppDimension.height(30, context),
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding:  EdgeInsets.symmetric(horizontal: AppDimension.width(15, context), vertical: AppDimension.height(5, context)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: AppDimension.height(30, context),
              ),
              SizedBox(
                height: AppDimension.height(15, context),
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/coffe.jpg'),
                  ),
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Ethiopian Coffee",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                height: 5,
              ),
              RatingBar.builder(
                itemSize: 20,
                minRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemCount: 5,
                itemPadding: const EdgeInsets.symmetric(horizontal: 2),
                itemBuilder: (context, _) => const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                onRatingUpdate: (rating) {},
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                '€ 50.00',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 5,
              ),
              Container(
                child: Text(
                    "Ethiopian Coffee is renowned for its exceptional quality and distinct flavors. Grown in the fertile highlands of Ethiopia,"
                    " this coffee is known for its floral and fruity notes, along with a rich and smooth taste. Ethiopian coffee is traditionally"
                    " prepared using a unique brewing method called jebena and is enjoyed for its aromatic experience and cultural significance."),
              ),
              SizedBox(
                height: 5,
              ),
              Divider(
                color: Colors.blue.shade100,
              ),
              Container(
                width: 150,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF7A9A1D),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  onPressed: () {},
                  child: Text("Add to Cart"),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              // Column(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   crossAxisAlignment: CrossAxisAlignment.start,
              //   children: [
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.start,
              //       children: [
              //         Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceAround,
              //           children: [
              //             Icon(
              //               Icons.email_outlined,
              //               color: Colors.grey,
              //             ),
              //             SizedBox(
              //               width: 5,
              //             ),
              //             Text(
              //               "Email to a friend",
              //             ),
              //           ],
              //         ),
              //         SizedBox(
              //           width: 10,
              //         ),
              //         Row(
              //           children: [
              //             Icon(
              //               Icons.heart_broken_sharp,
              //               color: Colors.grey,
              //             ),
              //             SizedBox(
              //               width: 5,
              //             ),
              //             Text(
              //               "Whislist",
              //             ),
              //           ],
              //         )
              //       ],
              //     ),
              //     Row(
              //       mainAxisAlignment: MainAxisAlignment.start,
              //       children: [
              //         Row(
              //           children: [
              //             Icon(
              //               Icons.print,
              //               color: Colors.grey,
              //             ),
              //             SizedBox(
              //               width: 5,
              //             ),
              //             Text(
              //               "print",
              //             ),
              //           ],
              //         )
              //       ],
              //     )
              //   ],
              // ),
              SizedBox(
                height: 5,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Share :',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.facebook,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        FontAwesomeIcons.twitter,
                        color: Colors.black,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        FontAwesomeIcons.facebookMessenger,
                        color: Colors.black,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        FontAwesomeIcons.instagram,
                        color: Colors.black,
                        size: 20,
                      )
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        buildNavItem("MORE INFO"),
                        buildNavItem("DATA SHEET"),
                        buildNavItem("REVIEWS"),
                      ],
                    ),
                  ),
                  const SizedBox(height: 8),
                  if (selectedText == 'MORE INFO')
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: const Text(
                        "Properties - Ethiopian Coffee is known for its unique flavors and aroma with a rich and bold taste that will satisfy coffee enthusiasts.",
                        style: TextStyle(color: Colors.black87, fontSize: 18),
                      ),
                    ),
                  if (selectedText == 'DATA SHEET')
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      height: 100,
                      child: Table(
                        border: TableBorder.all(color: Colors.grey),
                        defaultColumnWidth: IntrinsicColumnWidth(),
                        children: [
                          TableRow(
                            children: [
                              Container(
                                height: 30,
                                child: TableCell(
                                  child: Center(
                                    child: Text('Composition'),
                                  ),
                                ),
                              ),
                              Container(
                                height: 30,
                                child: TableCell(
                                  child: Center(
                                    child: Text(' Ethiopian coffe'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Container(
                                height: 30,
                                child: TableCell(
                                  child: Center(
                                    child: Text('Styles'),
                                  ),
                                ),
                              ),
                              Container(
                                height: 30,
                                child: TableCell(
                                  child: Center(
                                    child: Text('Cotton'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          TableRow(
                            children: [
                              Container(
                                height: 30,
                                child: TableCell(
                                  child: Center(
                                    child: Text('Properties'),
                                  ),
                                ),
                              ),
                              Container(
                                height: 30,
                                child: TableCell(
                                  child: Center(
                                    child: Text('Bold and aromatic'),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  if (selectedText == 'REVIEWS')
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.black87,
                        ),
                        onPressed: () {},
                        child: Text(
                          "BE THE FIRST TO WRITE YOUR REVIEW!",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
