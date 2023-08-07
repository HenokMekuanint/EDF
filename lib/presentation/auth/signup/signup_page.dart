import 'package:edf/presentation/auth/login/login_page.dart';
import 'package:flutter/material.dart';

import '../../../utils/app_colors.dart';
import '../../../utils/app_dimension.dart';
import '../../widgets/app_textfield.dart';

class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/images/img1.jpg"),
          ),
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          SizedBox(height: AppDimension.height(50, context)),
          Padding(
            padding: EdgeInsets.only(
                left: AppDimension.width(20, context),
                right: AppDimension.width(20, context)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Icon(
                    Icons.arrow_back,
                    size: AppDimension.height(50, context),
                    color: AppColors.bgDark,
                  ),
                ),
                SizedBox(width: AppDimension.width(20, context)),
                Text(
                  "Sign Up",
                  style: TextStyle(
                    fontSize: AppDimension.height(30, context),
                    fontWeight: FontWeight.bold,
                    color: AppColors.bgDark,
                  ),
                ),
              ],
            ),

            // write me the form for sign up
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(
                  left: AppDimension.width(20, context),
                  right: AppDimension.width(20, context),
                  top: AppDimension.height(20, context),
                ),
                padding: EdgeInsets.only(
                    left: AppDimension.width(15, context),
                    right: AppDimension.width(15, context),
                    top: AppDimension.height(20, context),
                    bottom: AppDimension.height(40, context)),
                decoration: BoxDecoration(
                  color: AppColors.bgLight.withOpacity(0.9),
                  borderRadius: BorderRadius.circular(
                    AppDimension.height(16, context),
                  ),
                ),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: AppDimension.height(10, context),
                      ),
                      Text(
                        "First Name",
                        style: TextStyle(
                          color: AppColors.textBlackColor,
                          fontWeight: FontWeight.w500,
                          fontSize: AppDimension.height(16, context),
                        ),
                      ),
                      SizedBox(
                        height: AppDimension.height(5, context),
                      ),
                      AppTextField(
                        hintText: "First Name",
                        textEditingController: firstNameController,
                        icon: Icons.person,
                      ),
                      SizedBox(
                        height: AppDimension.height(10, context),
                      ),
                      Text(
                        "Last Name",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.textBlackColor,
                          fontSize: AppDimension.height(16, context),
                        ),
                      ),
                      SizedBox(
                        height: AppDimension.height(5, context),
                      ),
                      AppTextField(
                        hintText: "Last Name",
                        textEditingController: lastNameController,
                        icon: Icons.person,
                      ),
                      SizedBox(
                        height: AppDimension.height(10, context),
                      ),
                      Text(
                        "Email",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.textBlackColor,
                          fontSize: AppDimension.height(16, context),
                        ),
                      ),
                      SizedBox(
                        height: AppDimension.height(5, context),
                      ),
                      AppTextField(
                        hintText: "Email",
                        textEditingController: emailController,
                        icon: Icons.email,
                      ),
                      SizedBox(
                        height: AppDimension.height(10, context),
                      ),
                      Text(
                        "Password",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.textBlackColor,
                          fontSize: AppDimension.height(16, context),
                        ),
                      ),
                      SizedBox(
                        height: AppDimension.height(5, context),
                      ),
                      AppTextField(
                        hintText: "Password",
                        textEditingController: passwordController,
                        icon: Icons.lock,
                        isObscure: true,
                      ),
                      SizedBox(
                        height: AppDimension.height(10, context),
                      ),
                      Text(
                        "Confirm Password",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.textBlackColor,
                          fontSize: AppDimension.height(16, context),
                        ),
                      ),
                      SizedBox(
                        height: AppDimension.height(5, context),
                      ),
                      AppTextField(
                        hintText: "Confirm Password",
                        textEditingController: confirmPasswordController,
                        icon: Icons.lock,
                      ),
                      SizedBox(
                        height: AppDimension.height(30, context),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.popAndPushNamed(context, '/home');
                            },
                            child: Container(
                              height: AppDimension.height(60, context),
                              width: AppDimension.width(300, context),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(
                                      AppDimension.height(15, context)),
                                  color: Colors.blue,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 3,
                                      spreadRadius: 1,
                                      offset: Offset(1, 1),
                                      color: Colors.grey.withOpacity(0.2),
                                    )
                                  ]),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Sign Up",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize:
                                            AppDimension.height(20, context)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: AppDimension.height(5, context),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                "Do you have account already?",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: AppDimension.height(20, context)),
                              ),
                            ],
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => LoginPage()));
                                },
                                child: Text("Login",
                                    style: TextStyle(
                                        color: Colors.blue,
                                        fontSize:
                                            AppDimension.height(20, context),
                                        fontWeight: FontWeight.w600)),
                              ),
                            ],
                          )
                        ],
                      )
                    ]),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
