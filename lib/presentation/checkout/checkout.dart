
import 'package:flutter/material.dart';

import '../../utils/app_dimension.dart';
import '../widgets/checkout_page_widgets/billing_information_widget.dart';
import '../widgets/checkout_page_widgets/checkout_method_content.dart';
import '../widgets/checkout_page_widgets/payment_method_content.dart';
import '../widgets/checkout_page_widgets/shipping_information_Content.dart';

enum Auth { login, signup }

enum PaymentMethod { check, creditCard }

class CheckoutMethodScreen extends StatefulWidget {
  @override
  _CheckoutMethodScreenState createState() => _CheckoutMethodScreenState();
}

class _CheckoutMethodScreenState extends State<CheckoutMethodScreen> {
  String selectedText = " 1. CHECKOUT  METHOD";

  String? selectedContent = " 1. CHECKOUT  METHOD";
  String? lastFocusedText = " 1. CHECKOUT  METHOD";

  Widget buildContent(String text, Widget content) {
    bool isSelected = selectedContent == text;
    bool isFocused = lastFocusedText == text;

    Color textColor = isFocused
        ? isSelected
            ? Colors.white
            : Color(0xFF7A9A1D)
        : Colors.black;
    Color backgroundColor = isSelected ? Color(0xFF7A9A1D) : Colors.white;

    return GestureDetector(
      onTap: () {
        setState(() {
          if (isSelected) {
            selectedContent = null;
          } else {
            selectedContent = text;
          }
          lastFocusedText = text;
        });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppDimension.height(12, context),
                horizontal: AppDimension.width(40, context)),
            width: AppDimension.width(300, context),
            decoration: BoxDecoration(
              color: backgroundColor,
            ),
            child: Text(
              text,
              style: TextStyle(
                fontSize: AppDimension.height(16, context),
                fontWeight: FontWeight.normal,
                color: textColor,
              ),
            ),
          ),
          if (isSelected) content,
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
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
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
          SizedBox(height: AppDimension.height(30, context)),
            Stack(children: [
              Container(
                height: AppDimension.height(160, context),
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage('assets/images/checkout.png'),
                  ),
                ),
              ),
              Positioned(
                top: AppDimension.height(60, context),
                left: AppDimension.width(120, context),
                child: Text(
                  "CHECKOUT",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: AppDimension.height(30, context),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ]),
            SizedBox(height: AppDimension.height(15, context)),
            buildContent(
              " 1. CHECKOUT  METHOD",
              CheckoutMethodContent(),
            ),
             SizedBox(height: AppDimension.height(5, context)),
            buildContent(
              "2. BILLING  INFORMATION",
              BillingInformationContent(),
            ),
             SizedBox(height: AppDimension.height(5, context)),
            buildContent(
              "3. SHIPPING  INFORMATION",
              ShippingInformationContent(),
            ),
             SizedBox(height: AppDimension.height(5, context)),
            buildContent(
              "4. PAYMENT  METHOD",
              PaymentMethodContent(),
            ),
            SizedBox(
              height: AppDimension.height(40, context),
            ),
            Container(
              width: AppDimension.width(120, context),
              child: Text(
                "No Products in the cart",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: AppDimension.height(22, context),
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: AppDimension.height(20, context),
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: AppDimension.width(120, context),
                child: Text(
                  "Go to Shop Page",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            SizedBox(height: AppDimension.height(10, context))
          ],
        ),
      ),
    );
  }
}
