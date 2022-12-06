import 'dart:ui';

import 'package:beta_nation/utils/app_colors.dart';
import 'package:beta_nation/utils/text_dimensions.dart';
import 'package:beta_nation/utils/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        body: Stack(
          children:[
            Column(
            children: [
              Container(
                height:434.62.h,
                child:
                Stack(
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
                            const Color(0x00000000),
                            AppColors.white
                            // Colors.green
                          ],
                        ),
                      ),
                    ),

                  ],
                ),
              ),
              Container(height: 100,width: 414.w,
                color: AppColors.white,),

            ],
          ),
            Align(
              alignment: Alignment.center,
              child: Container(

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 220.h,),
                    Image.asset('images/Group 2.png',width: 300.9.w,
                      height: 300.9.h,
                    ),
                    SizedBox(height: 44.6.h,),
                    Container(
                      padding: EdgeInsets.only(left: 30.6.w,top: 18.06.h),
                      height: 149.41.h,
                      width: 382.w,
                      decoration: BoxDecoration(
                      color: AppColors.offWhiteTwo,
                      borderRadius: BorderRadius.circular(8.r),

                    ),
                    child: Column(
                      children: [
                        Text("""Let’s build a nation we would all look back at and be proud to be part of. 

                   """,style: TextDimensions.style18400grey,),
                        Row(
                          children: [
                            Text('It all starts from',style: TextDimensions.style18400grey,),
                            // Image.asset('images/Rectangle 10.png',height: 40.h,width: 50.w,)
                          ],
                        )
                      ],
                    )
                    
                    ),
                    SizedBox(height:18.27.h ,),
                    Container(
                      margin: EdgeInsets.only(left: 16.w,),
                      child: Row(
                        children: [
                          ButtonContainerWidget(text: 'Sign in', color: AppColors.green,),
                          SizedBox(width: 8.w,),
                          ButtonContainerWidget(text: 'Register', color: AppColors.grey,),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
        ]),

      );
  }
}


