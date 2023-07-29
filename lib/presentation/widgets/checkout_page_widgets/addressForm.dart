
import 'package:edf/presentation/widgets/checkout_page_widgets/reusableDialog.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_dimension.dart';
import '../custom_textfield.dart';

class AddressForm extends StatelessWidget {
  final String? selectedCountry;
  final List<String> countries;
  final void Function(String?) onCountrySelected;
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController companyNameController;
  final TextEditingController streetAddressController;
  final TextEditingController apartmentController;
  final TextEditingController cityController;
  final TextEditingController stateController;
  final TextEditingController zipCodeController;
  final TextEditingController emailController;
  final TextEditingController phoneController;

  AddressForm({
    required this.selectedCountry,
    required this.countries,
    required this.onCountrySelected,
    required this.firstNameController,
    required this.lastNameController,
    required this.companyNameController,
    required this.streetAddressController,
    required this.apartmentController,
    required this.cityController,
    required this.stateController,
    required this.zipCodeController,
    required this.emailController,
    required this.phoneController,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        GestureDetector(
          onTap: () {
            ReusableDialog.show(context, countries, selectedCountry,
                (String? value) {
              onCountrySelected(value);
              Navigator.pop(context);
            });
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                selectedCountry == null ? 'Select Country' : selectedCountry!,
              ),
              Transform.rotate(
                angle: 89.5,
                child: Icon(Icons.chevron_right),
              ),
            ],
          ),
        ),
        CustomTextField(
          controller: firstNameController,
          hintText: 'First Name',
        ),
        CustomTextField(
          controller: lastNameController,
          hintText: 'Last Name',
        ),
        CustomTextField(
          controller: companyNameController,
          hintText: 'Company Name',
        ),
        CustomTextField(
          controller: streetAddressController,
          hintText: 'Street Address',
        ),
        SizedBox(height: AppDimension.height(10, context)),
        CustomTextField(
          controller: apartmentController,
          hintText: 'Apartment, Suite, Unit, etc. (optional)',
        
        ),
        SizedBox(height: AppDimension.height(10, context)),
        CustomTextField(
          controller: cityController,
          hintText: 'Town/City',
        ),
        SizedBox(height: AppDimension.height(10, context)),
        CustomTextField(
          controller: stateController,
          hintText: 'State/County',
        ),
        SizedBox(height: AppDimension.height(10, context)),
        CustomTextField(
          controller: zipCodeController,
          hintText: 'Postcode/ZIP',
        ),
        SizedBox(height: AppDimension.height(10, context)),
        CustomTextField(
          controller: emailController,
          hintText: 'Email Address',
        ),
        SizedBox(height: AppDimension.height(10, context)),
        CustomTextField(
          controller: phoneController,
          hintText: 'Phone Number',
        ),
      ],
    );
  }
}
