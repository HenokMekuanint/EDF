import 'dart:math';

import 'package:flutter/material.dart';

import '../../../utils/app_dimension.dart';

class ReusableDialog {
  static void show(BuildContext context, List<String> items,
      String? selectedValue, Function(String?) onSelect) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: Expanded(
            child: AlertDialog(
              actionsAlignment: MainAxisAlignment.center,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                      Radius.circular(AppDimension.height(40, context)))),
              alignment: Alignment.center,
              
              backgroundColor: Colors.black,
              content: Column(
                children: items.map((item) {
                  return _buildRadioItem(item, selectedValue, onSelect);
                }).toList(),
              ),
            ),
          ),
        );
      },
    );
  }

  static Widget _buildRadioItem(
      String item, String? selectedValue, Function(String?) onSelect) {
    final unselectedColor = MaterialStateColor.resolveWith((states) {
      if (states.contains(MaterialState.selected)) {
        return Colors.blue;
      }
      return Colors.white;
    });
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          item,
          style: TextStyle(
            fontSize: 16,
            color: Colors.white,
          ),
        ),
        Radio(
          value: item,
          groupValue: selectedValue,
          onChanged: onSelect,
          activeColor: Colors.blue,
          fillColor: unselectedColor,
        ),
      ],
    );
  }
}
