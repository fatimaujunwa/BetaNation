import 'package:beta_nation/utils/app_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../text_dimensions.dart';
import 'dart:developer';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key? key,
    required this.text,
    required this.controller,
    this.width=382
  }) : super(key: key);
  final TextEditingController controller;
  final String text;
  final double width;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {

  @override
  Widget build(BuildContext context) {
    return
      Container(
        
      //  color: Colors.blue,
        width: widget.width.w,
        child: TextFormField(
          validator: (value) {
            if(value==''){
              
              return 'This field is required';

            }
            return null;
            
          },
        controller: widget.controller,
        style: TextDimensions.style16400Black,
        
        
        decoration: InputDecoration(

          hintText: widget.text,
          hintStyle: TextDimensions.style16500greyOpacity,
          filled: true,
          fillColor: AppColors.offwhite,
          errorBorder: OutlineInputBorder(
             borderRadius: new BorderRadius.circular(10.0),
            borderSide: BorderSide(color: AppColors.red)

          ),
          
          border: OutlineInputBorder(
              borderRadius: new BorderRadius.circular(10.0),
              borderSide: BorderSide.none
          ),

        ),
        textAlign: TextAlign.start,
        maxLines: 1,

    ),
      );
  }
}