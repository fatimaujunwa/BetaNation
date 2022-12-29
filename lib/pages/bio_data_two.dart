import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';
import '../utils/text_dimensions.dart';
import '../utils/widgets/button_widget.dart';

class BioDataScreenTwo extends StatelessWidget {
  const BioDataScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Container(

        child: Column(children: [
          Container(
            height: 250.5.h,width: 414.w,
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
                  margin: EdgeInsets.only(left: 16.w,top: 120.h),
                  child: Row(

                    children: [
                    Icon(Icons.arrow_back_ios_new,size: 20.h,color: AppColors.grey,),
                    SizedBox(width: 15.5,),
                    Text('Bio Data',style: TextDimensions.style24500black,),
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

                SizedBox(height: 16.44.h,),
                Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height:150.h ,
                          width: 187.w,
                          decoration: BoxDecoration(
                              color: AppColors.offwhite,
                              borderRadius: BorderRadius.circular(8.r)
                          ),
                          child: Icon(Icons.camera_alt,size: 42.h,color: AppColors.cameraIcon,),
                        ),
                        SizedBox(width: 7.w,),
                        ButtonContainerWidget(color: AppColors.green, widget: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(Icons.camera_alt,size: 21.88.h,color: AppColors.white,),
                            SizedBox(width: 8.w,),
                            Text('Change Photo',style:TextDimensions.style18500white ,)
                          ],))

                      ],
                    ),
                  ],
                ),
                SizedBox(height: 16.44.h,),
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
                      Text('0987654321',style: TextDimensions.style16500grey,),

                    ],
                  ),
                ),
                SizedBox(height: 16.h,),
                Container(
                  padding: EdgeInsets.only(left: 16.25.w,right: 17.19.w),
                  height: 60.h,width: 381.81.w,
                  decoration: BoxDecoration(
                    color: AppColors.offwhite,
                    borderRadius: BorderRadius.circular(8.r),

                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('08099900000',style: TextDimensions.style16500grey,),

                    ],
                  ),
                ),
                SizedBox(height: 230.h,),
                Row(
                  children: [
                    ButtonContainerWidget(color: AppColors.green, widget: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.arrow_back_ios,size: 15.h,color: AppColors.white,),
                        SizedBox(width: 8.w,),
                        Text('Previous',style: TextDimensions.style18500white,)

                      ],)),
                    SizedBox(width: 8.w,),

                    ButtonContainerWidget(color: AppColors.offwhite, widget: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text('Next',style: TextDimensions.style18500black,),
                        SizedBox(width: 8.w,),
                        Icon(Icons.arrow_forward_ios,size: 15.h,color: AppColors.black,),

                      ],)),

                  ],
                ),
              ],),
          )

        ],),
      ),
    );
  }
}
