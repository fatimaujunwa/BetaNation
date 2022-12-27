import 'package:beta_nation/utils/text_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Column(children: [
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
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 73.h),
                      height: 150.h,width: 150.w,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8.r),
                          color: AppColors.green
                      ),
                    ),
                  ],
                ),
              )


            ],
          ),

        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Fatima Ujunwa',style: TextDimensions.style18400green,),
            SizedBox(height: 8.h,),
            Text('0987654321',style: TextDimensions.style16500grey,)
            ,SizedBox(height: 24.h,),
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
                  Text('Bio Data',style: TextDimensions.style16500grey,),
                  Icon(Icons.arrow_forward_ios,size: 20.h,)
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
                  Text('Uploaded Documents',style: TextDimensions.style16500grey,),
                  Icon(Icons.arrow_forward_ios,size: 20.h,)
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
                  Text('Change Password',style: TextDimensions.style16500grey,),
                  Icon(Icons.arrow_forward_ios,size: 20.h,)
                ],
              ),
            ),

        ],)

      ],)

    );
  }
}
