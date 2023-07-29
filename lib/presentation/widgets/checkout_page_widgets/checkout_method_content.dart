
import 'package:flutter/material.dart';

import '../../../utils/app_dimension.dart';
import '../custom_textfield.dart';

enum Auth { login, signup }

class CheckoutMethodContent extends StatefulWidget {
  @override
  _CheckoutMethodContentState createState() => _CheckoutMethodContentState();
}

class _CheckoutMethodContentState extends State<CheckoutMethodContent> {
  Auth _auth = Auth.login;
  final _signInFormKey = GlobalKey<FormState>();
  final _signUpFormKey = GlobalKey<FormState>();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _companyNameController = TextEditingController();
  TextEditingController _streetAddressController = TextEditingController();
  TextEditingController _apartmentController = TextEditingController();
  TextEditingController _cityController = TextEditingController();
  TextEditingController _stateController = TextEditingController();
  TextEditingController _zipCodeController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  String selectedText = "";

  Widget buildNavItem(String text, Widget content) {
    bool isSelected = selectedText == text;
    Color textColor = isSelected
        ? Colors.white
        : (text == selectedText ? Color(0xFF7A9A1D) : Colors.black);

    return GestureDetector(
      onTap: () {
        setState(() {
          if (isSelected) {
            selectedText = "";
          } else {
            selectedText = text;
          }
        });
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(
                vertical: AppDimension.height(12, context),
                horizontal: AppDimension.width(40, context)),
            width: AppDimension.width(290, context),
            decoration: BoxDecoration(
              color: isSelected ? Color(0xFF7A9A1D) : Colors.white,
            ),
            child: Text(
              text,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.normal,
                color: Colors.black,
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
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          Container(
            height: AppDimension.height(45, context),
            padding: EdgeInsets.symmetric(
                horizontal: AppDimension.width(10, context)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: ListTile(
                    tileColor:
                        _auth == Auth.login ? Color(0xFF7A9A1D) : Colors.white,
                    title: const Text(
                      'Login',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: Radio(
                      activeColor: Color(0xFF7A9A1D),
                      value: Auth.login,
                      groupValue: _auth,
                      onChanged: (Auth? val) {
                        setState(() {
                          _auth = val!;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: ListTile(
                    tileColor:
                        _auth == Auth.signup ? Color(0xFF7A9A1D) : Colors.white,
                    title: const Text(
                      'Register',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    leading: Radio(
                      activeColor: Color(0xFF7A9A1D),
                      value: Auth.signup,
                      groupValue: _auth,
                      onChanged: (Auth? val) {
                        setState(() {
                          _auth = val!;
                        });
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          if (_auth == Auth.login) SignInForm(),
          if (_auth == Auth.signup) SignUpForm()
        ],
      ),
    );
  }

  Widget SignInForm() {
    return Container(
      padding:
          EdgeInsets.symmetric(horizontal: AppDimension.width(50, context)),
      child: Form(
        key: _signInFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomTextField(
              controller: _emailController,
              hintText: 'Email',
            ),
            SizedBox(
              height: AppDimension.height(10, context),
            ),
            CustomTextField(
              controller: _passwordController,
              hintText: 'Password',
            ),
            SizedBox(height: AppDimension.height(10, context)),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF7A9A1D),
                minimumSize:  Size(AppDimension.height(30, context), AppDimension.width(45, context)),
              ),
              child: Text(
                "Login",
                style: TextStyle(fontSize: AppDimension.height(20, context)),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget SignUpForm() {
    return Container(
      padding:  EdgeInsets.symmetric(horizontal: AppDimension.width(50, context)),
      child: Form(
        key: _signUpFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             SizedBox(height: AppDimension.height(10, context)),
            CustomTextField(
              controller: _nameController,
              hintText: 'Your Name',
            ),
            CustomTextField(
              controller: _emailController,
              hintText: 'Email',
            ),
            SizedBox(height: AppDimension.height(10, context)),
            CustomTextField(
              controller: _passwordController,
              hintText: 'Password',
            ),
             SizedBox(height: AppDimension.height(10, context)),
            CustomTextField(
              controller: _passwordController,
              hintText: 'Confirm Password',
            ),
           SizedBox(height: AppDimension.height(10, context)),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF7A9A1D),
                minimumSize: Size(AppDimension.height(30, context), AppDimension.width(45, context)),
              ),
              child: Text(
                "Register",
                style: TextStyle(fontSize: AppDimension.height(20, context)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
