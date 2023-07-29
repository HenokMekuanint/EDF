
import 'package:edf/presentation/widgets/checkout_page_widgets/addressForm.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_dimension.dart';

class BillingInformationContent extends StatefulWidget {
  @override
  _BillingInformationContentState createState() =>
      _BillingInformationContentState();
}

class _BillingInformationContentState extends State<BillingInformationContent> {
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _streetAddressController = TextEditingController();
  TextEditingController _apartmentController = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  TextEditingController _stateController = TextEditingController();
  TextEditingController _zipCodeController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _companyNameController = TextEditingController();

  String? selectedCountry;

  final List<String> countries = [
    'USA',
    'Canada',
    'UK',
    'Australia',
    'India',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:  EdgeInsets.symmetric(horizontal: AppDimension.width(50, context), vertical: AppDimension.height(10, context)),
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          SizedBox(height: AppDimension.height(20, context),),
          AddressForm(
            selectedCountry: selectedCountry,
            countries: countries,
            onCountrySelected: (String? value) {
              setState(() {
                selectedCountry = value;
              });
            },
            firstNameController: _firstNameController,
            lastNameController: _lastNameController,
            streetAddressController: _streetAddressController,
            apartmentController: _apartmentController,
            cityController: _cityController,
            stateController: _stateController,
            zipCodeController: _zipCodeController,
            emailController: _emailController,
            phoneController: _phoneController,
            companyNameController: _companyNameController,
          ),
        ],
      ),
    );
  }
}
