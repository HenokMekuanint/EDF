import 'package:edf/presentation/widgets/checkout_page_widgets/reusableDialog.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_dimension.dart';
import '../custom_textfield.dart';

class PaymentMethodContent extends StatefulWidget {
  @override
  _PaymentMethodContentState createState() => _PaymentMethodContentState();
}

class _PaymentMethodContentState extends State<PaymentMethodContent> {
  TextEditingController _cardNameController = TextEditingController();
  TextEditingController _cardNumberController = TextEditingController();
  TextEditingController _cardVerificationNumberController =
      TextEditingController();

  String? selectedPaymentMethod = 'check';
  String? selectedCard;
  String? selectedMonth;
  String? selectedYear;

  final List<String> cardTypes = [
    'Card Type 1',
    'Card Type 2',
    'Card Type 3',
  ];
  final List<String> months = [
    'Jan',
    'Feb',
    'Mar',
    'Apr',
    'May',
    'Jun',
    'Jul',
    'Aug',
    'Sep',
    'Oct',
    'Nov',
    'Dec',
  ];

  final List<String> years = [
    '2015',
    '2016',
    '2017',
    '2018',
    '2019',
    '2020',
    '2021',
    '2022',
    '2023',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: const Text(
                    'Check/Money Order',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  leading: Radio<String>(
                    value: 'check',
                    groupValue: selectedPaymentMethod,
                    onChanged: (value) {
                      setState(() {
                        selectedPaymentMethod = value;
                      });
                    },
                    activeColor: Color(0xFF7A9A1D),
                  ),
                ),
                ListTile(
                  title: const Text(
                    'Credit Card',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  leading: Radio<String>(
                    value: 'creditCard',
                    groupValue: selectedPaymentMethod,
                    onChanged: (value) {
                      setState(() {
                        selectedPaymentMethod = value;
                      });
                    },
                    activeColor: Color(0xFF7A9A1D),
                  ),
                ),
              ],
            ),
            SizedBox(height: AppDimension.height(20, context)),
            if (selectedPaymentMethod == 'creditCard')
              Container(
                padding: EdgeInsets.symmetric(
                    horizontal: AppDimension.width(50, context)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Name on Card *",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: AppDimension.height(10, context)),
                        CustomTextField(
                            controller: _cardNameController, hintText: "Enter")
                      ],
                    ),
                    SizedBox(
                      height: AppDimension.height(20, context),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Credit Card Type *",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: AppDimension.height(15, context)),
                        GestureDetector(
                          onTap: () {
                            ReusableDialog.show(
                                context, cardTypes, selectedCard,
                                (String? value) {
                              setState(() {
                                selectedCard = value;
                              });
                              Navigator.pop(context);
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                selectedCard == null
                                    ? 'Please Select'
                                    : selectedCard!,
                              ),
                              Transform.rotate(
                                angle: 89.5,
                                child: Icon(Icons.chevron_right),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: AppDimension.height(20, context),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Credit Card Number *",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: AppDimension.height(10, context)),
                        CustomTextField(
                            controller: _cardNumberController,
                            hintText: "Enter")
                      ],
                    ),
                    SizedBox(
                      height: AppDimension.height(20, context),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Expiration Date",
                          style: TextStyle(
                              color: Colors.black, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: AppDimension.height(15, context),
                        ),
                        Column(
                          children: [
                            GestureDetector(
                              onTap: () {
                                ReusableDialog.show(
                                    context, months, selectedMonth,
                                    (String? value) {
                                  setState(() {
                                    selectedMonth = value;
                                  });
                                  Navigator.pop(context);
                                });
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    selectedMonth == null
                                        ? 'Month'
                                        : selectedMonth!,
                                  ),
                                  Transform.rotate(
                                    angle: 89.5,
                                    child: Icon(Icons.chevron_right),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: AppDimension.height(20, context),
                            ),
                            GestureDetector(
                              onTap: () {
                                ReusableDialog.show(
                                    context, years, selectedYear,
                                    (String? value) {
                                  setState(() {
                                    selectedYear = value;
                                  });
                                  Navigator.pop(context);
                                });
                              },
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    selectedYear == null
                                        ? 'Year'
                                        : selectedYear!,
                                  ),
                                  Transform.rotate(
                                    angle: 89.5,
                                    child: Icon(Icons.chevron_right),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: AppDimension.height(20, context)),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Card Verification Number *",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            SizedBox(height: AppDimension.height(10, context)),
                            CustomTextField(
                                controller: _cardVerificationNumberController,
                                hintText: "Enter")
                          ],
                        ),
                        SizedBox(
                          height: AppDimension.height(10, context),
                        ),
                      ],
                    ),
                  ],
                ),
              )
          ],
        ),
      ),
    );
  }
}
