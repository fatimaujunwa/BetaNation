import 'package:beta_nation/utils/app_colors.dart';
import 'package:beta_nation/utils/text_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

class VotingScreen extends StatelessWidget {
  const VotingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        margin: EdgeInsets.only(top: 73.53.h,left: 16.w,right: 16.w),
        child: Column(
          children: [
            Text('Select the position you would like to vote for',style: TextDimensions.style24500green,)
,SizedBox(height: 16.h,),

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
                  Text('Presidency',style: TextDimensions.style16500grey,),
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
                  Text('Vice Presidency',style: TextDimensions.style16500grey,),
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
                  Text('Senate',style: TextDimensions.style16500grey,),
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
                  Text('House of Representatives',style: TextDimensions.style16500grey,),
                  Icon(Icons.arrow_forward_ios,size: 20.h,)
                ],
              ),
            ),
            SizedBox(height: 8.h,)

          ],
        ),
      ),
    );
  }
}
