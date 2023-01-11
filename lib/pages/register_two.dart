import 'package:beta_nation/utils/text_dimensions.dart';
import 'package:beta_nation/utils/widgets/button_widget.dart';
import 'package:beta_nation/utils/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';

class RegisterTwo extends StatelessWidget {
  const RegisterTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController nin=TextEditingController();
    TextEditingController no=TextEditingController();
    TextEditingController password= TextEditingController();
    TextEditingController cPassword= TextEditingController();
    return
      Scaffold(
      body:Column(children: [
        Container(height: 142.25.h,width: 414.w,
          child: Stack(
            alignment: Alignment.center,
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image(
                  fit: BoxFit.fill,
                  image: AssetImage("images/Rectangle 0.png"),
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
                      // Colors.green
                    ],
                  ),
                ),
              ),
              Image.asset('images/BetaNation.png')

            ],
          ),

        ),
        Container(

          margin: EdgeInsets.only(

          left: 16.w,
          right: 16.w



        ),
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Register',style: TextDimensions.style36600grey,),
            SizedBox(height: 31.63.h,),
            Row(
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
                  Text('Take Photo',style:TextDimensions.style18500white ,)
                ],))

              ],
            ),
            SizedBox(height: 16.h,),
            CustomTextField(text: 'NIN Number', controller: nin),
            SizedBox(height: 16.h,),
            CustomTextField(text: 'Mobile Number', controller: no),
            SizedBox(height: 16.h,),
            CustomTextField(text: 'Password', controller: password),
            SizedBox(height: 16.h,),
            CustomTextField(text: 'Confirm password', controller: cPassword),
            SizedBox(height: 24.h,),
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

                ButtonContainerWidget(color: AppColors.green, widget: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [

                    Text('Next',style: TextDimensions.style18500white,),
                  SizedBox(width: 8.w,),
                    Icon(Icons.arrow_forward_ios,size: 15.h,color: AppColors.white,),

                  ],)),

              ],
            ),
            SizedBox(height: 24.12.h,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('You have an account? ',style: TextDimensions.style18500black,),
                Text('Sign in',style: TextDimensions.style18400green,),
              ],
            )
          ],
        ),
        
        )
      ],) ,

    );
  }
}
