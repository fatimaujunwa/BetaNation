import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';
import '../utils/text_dimensions.dart';
import '../utils/widgets/button_widget.dart';

class UploadedDoc extends StatelessWidget {
  const UploadedDoc({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
      body: Container(

        child: Column(children: [
          Container(
            height: 277.5.h,width: 414.w,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image(
                    fit: BoxFit.fill,

                    image: AssetImage("images/Rectangle 6.png"),
                    height: MediaQuery.of(context).size.height,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    gradient: LinearGradient(
                      begin: Alignment.center,
                      end: Alignment.bottomCenter,
                      colors: [

                        AppColors.white.withOpacity(0),
                        AppColors.white,
                        // // Colors.green
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16.w,top: 121.h),
                  child: Row(

                    children: [
                      Icon(Icons.arrow_back_ios_new,size: 20.h,color: AppColors.grey,),
                      SizedBox(width: 15.5,),
                      Text('Uploaded Documents',style: TextDimensions.style24500black,),
                    ],),
                ),



              ],
            ),

          ),
          Container(
            margin: EdgeInsets.only(

                left: 16.w,
                right: 16.w



            ),
            child: Column(


              children: [
                Container(
                  padding: EdgeInsets.only(left: 16.25.w,right: 17.19.w),
                  height: 50.h,width: 381.81.w,
                  decoration: BoxDecoration(
                    color: AppColors.offwhite,
                    borderRadius: BorderRadius.circular(8.r),

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Document1.docx',style: TextDimensions.style16500grey,),
Text('Change',style: TextDimensions.style16500green,)
                    ],
                  ),
                ),
                SizedBox(height: 8.h,),
                Container(
                  padding: EdgeInsets.only(left: 16.25.w,right: 17.19.w),
                  height: 50.h,width: 381.81.w,
                  decoration: BoxDecoration(
                    color: AppColors.offwhite,
                    borderRadius: BorderRadius.circular(8.r),

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('Document1.docx',style: TextDimensions.style16500grey,),
                      Text('Change',style: TextDimensions.style16500green,)

                    ],
                  ),
                ),

              ],),
          )

        ],),
      ),
    );
  }
}
