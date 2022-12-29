import 'package:beta_nation/utils/widgets/custom_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';
import '../utils/text_dimensions.dart';
import '../utils/widgets/button_widget.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController oldPassword=TextEditingController();
    TextEditingController newPassword=TextEditingController();
    TextEditingController cNewPassword=TextEditingController();
    return Scaffold(
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
                      Text('Change Password',style: TextDimensions.style24500black,),
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
               CustomTextField(text: 'Old Password', controller: oldPassword),

                SizedBox(height: 8.h,),
                CustomTextField(text: 'New Password', controller: newPassword),
                SizedBox(height: 8.h,),
                CustomTextField(text: 'Confirm New Password', controller: cNewPassword)
                ,SizedBox(height: 40.h,),
                ButtonContainerWidget(color: AppColors.green, widget: Text('Submit',style: TextDimensions.style18500white,),)
              ],),
          )

        ],),
      ),
    );
  }
}
