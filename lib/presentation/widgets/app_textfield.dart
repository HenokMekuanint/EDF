import 'package:edf/utils/app_colors.dart';
import 'package:flutter/material.dart';

import '../../utils/app_dimension.dart';

class AppTextField extends StatelessWidget {
  final TextEditingController textEditingController;
  final String hintText;
  final IconData icon;
  bool isObscure;
  AppTextField(
      {super.key,
      required this.textEditingController,
      required this.icon,
      required this.hintText,
      this.isObscure = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(
      //     left: AppDimension.height(20, context),
      //     right: AppDimension.height(20, context)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimension.height(15, context)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              blurRadius: 3,
              spreadRadius: 1,
              offset: Offset(1, 1),
              color: Colors.grey.withOpacity(0.2),
            )
          ]),
      child: TextField(
        obscureText: isObscure ? true : false,
        controller: textEditingController,
        decoration: InputDecoration(
          hintText: hintText,
          suffixIcon: Icon(
            icon,
            color: AppColors.bgDarkLight,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              AppDimension.height(15, context),
            ),
            borderSide: const BorderSide(
              width: 1.0,
              color: Colors.white,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              AppDimension.height(15, context),
            ),
            borderSide: const BorderSide(
              width: 1.0,
              color: Colors.white,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              AppDimension.height(15, context),
            ),
          ),
        ),
      ),
    );
  }
}
