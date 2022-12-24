import 'package:beta_nation/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../text_dimensions.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.text,
    required this.controller
  }) : super(key: key);
  final TextEditingController controller;
  final String text;
  @override
  Widget build(BuildContext context) {
    return
      TextField(
      controller: controller,
      style: TextDimensions.style16400Black,
      decoration: InputDecoration(

        hintText: text,
        hintStyle: TextDimensions.style16500greyOpacity,
        filled: true,
        fillColor:AppColors.offwhite,
        border: OutlineInputBorder(
            borderRadius: new BorderRadius.circular(10.0),
            borderSide: BorderSide.none
        ),

      ),
      textAlign: TextAlign.start,
      maxLines: 1,

    );
  }
}