
import 'package:edf/presentation/widgets/checkout_page_widgets/addressForm.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_dimension.dart';

class ShippingInformationContent extends StatefulWidget {
  @override
  _ShippingInformationContentState createState() =>
      _ShippingInformationContentState();
}

class _ShippingInformationContentState
    extends State<ShippingInformationContent> {
  bool _addressForm = false;
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _streetAdressController = TextEditingController();
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: AppDimension.height(20, context)),
          Text(
            "Shipping Address",
            style: TextStyle(
              color: Colors.black,
              fontSize: AppDimension.height(16, context),
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: AppDimension.height(10, context)),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Address",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize : AppDimension.height(16, context),
                ),
              ),
              SizedBox(width: AppDimension.width(AppDimension.height(15, context), context)),
              Expanded(
                child: Text(
                  "Bootexperts, Banasree D-Block Dhaka 1219,Bangladesh,",
                  style: TextStyle(fontSize: AppDimension.height(14, context)),
                  softWrap: true,
                  
                ),
              ),
             
            ],
          ),
          SizedBox(
            height: AppDimension.height(AppDimension.height(10, context), context),
          ),
          Row(
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    _addressForm = !_addressForm;
                  });
                },
                child: Icon(
                  Icons.radio_button_checked,
                  color: _addressForm ? Color(0xFF7A9A1D) : Colors.black,
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Text('Ship to a different address',style: TextStyle(fontSize: AppDimension.height(16, context)),),
            ],
          ),
          if (_addressForm)
            Column(
              children: [
                SizedBox(
                  height: AppDimension.height(AppDimension.height(15, context), context),
                ),
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
                  companyNameController: _companyNameController,
                  streetAddressController: _streetAdressController,
                  apartmentController: _apartmentController,
                  cityController: _cityController,
                  stateController: _stateController,
                  zipCodeController: _zipCodeController,
                  emailController: _emailController,
                  phoneController: _phoneController,
                ),
              ],
            ),
           
        ],
      ),
    );
  }
}
