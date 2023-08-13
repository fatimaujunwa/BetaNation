import 'package:beta_nation/utils/app_colors.dart';
import 'package:beta_nation/utils/widgets/button_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../helper/routing.dart';
import '../utils/text_dimensions.dart';
enum BioData{
  face,
  fingerprint
}
enum Switch{
  next,
  prev,
  none
}
class RegisterThree extends StatefulWidget {
  const RegisterThree({Key? key}) : super(key: key);

  @override
  State<RegisterThree> createState() => _RegisterThreeState();
}

class _RegisterThreeState extends State<RegisterThree> {
  BioData data=BioData.face;
  Switch _switch=Switch.none;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:   Column(children: [
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
          alignment: Alignment.centerLeft,

          margin: EdgeInsets.only(

              left: 16.w,
              right: 16.w),
          child: Column(

           crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Register',style: TextDimensions.style36600grey,),
              SizedBox(height: 31.63.h,),
              Text('Upload supporting documents',style: TextDimensions.style16500grey,),
              SizedBox(height: 16.h,),
              ButtonContainerWidget(color: AppColors.green, widget: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                Icon(Icons.cloud_upload,color: Colors.white,),
                  SizedBox(width: 9.04.w,),
                  Text('Upload',style: TextDimensions.style18500white,)
              ],), tap: () {  },)
,SizedBox(height: 8.h,),
              Text('(NIN Slip and Birth Certificate are compulsory)',style: TextDimensions.style16500red,),
              SizedBox(height: 24.h,),
              Text('Select one biometric mode that would be used to verify your identity on the system. Tap on “Start Scan” to scan and save your selected biometric data',style: TextDimensions.style16500grey,),
              SizedBox(height: 16.h,),

            ],
          ),

        ),
        Container(child:  Row(

          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(


              width:200.w ,
              height: 120.h,
              child: ListTile(
// contentPadding: EdgeInsets.zero,
                title: Column(
                  children: [
                    Container(
                      // height: 100.h,
                      // width: 100.w,
                      decoration: BoxDecoration(
                          color: AppColors.offwhite,
                          borderRadius: BorderRadius.circular(8.r)
                      ),
                      child: Image.asset('images/Rectangle 23.png'),height: 90.h,width: 100.w,),
                    SizedBox(height: 7.56.h,),
                    Text('Face ID',style: TextDimensions.style16500grey,)
                  ],
                ),
                leading: Radio(
                  value: BioData.face, groupValue:data ,
                  activeColor: AppColors.green,
                  mouseCursor: MouseCursor.uncontrolled,
                  onChanged: (BioData? value) {
                    setState(() {
                      data = value!;
                    });
                  },
                ),
              ),
            ),

            Container(
              width:200.w ,
              height: 120.h,

              child: ListTile(
                title: Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            color: AppColors.offwhite,
                            borderRadius: BorderRadius.circular(8.r)
                        ),
                        child: Image.asset('images/Rectangle 25.png',height: 90.h,width: 100.w,)),
                    SizedBox(height: 7.56.h,),
                    Text('Touch ID',style: TextDimensions.style16500grey,)
                  ],
                ),
                leading: Radio(
                  activeColor: AppColors.green,
                  value: BioData.fingerprint, groupValue:data ,

                  onChanged: (BioData? value) {
                    setState(() {
                      data = value!;
                    });
                  },
                ),
              ),
            ),
          ],) ,),
        SizedBox(height: 24.4.h,),
        Container(

          margin: EdgeInsets.only(

              left: 16.w,
              right: 16.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ButtonContainerWidget(color: AppColors.green, widget: Text('Start Scan',style: TextDimensions.style18500white,), tap: () {  },),
              SizedBox(height: 59.h,),
              Row(
                children: [
                  ButtonContainerWidget(color:_switch==Switch.prev?AppColors.green: AppColors.offwhite, widget: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.arrow_back_ios,size: 15.h,color: _switch==Switch.prev?AppColors.white: AppColors.black,),
                      SizedBox(width: 8.w,),
                      Text('prev'.tr,style:_switch==Switch.prev? TextDimensions.style18500white:TextDimensions.style18500black,)

                    ],), tap: () {
                    setState(() {
                      _switch=Switch.prev;

                    });
                    Future.delayed(Duration(seconds: 2));
                    Get.back();
                  },),
                  SizedBox(width: 8.w,),

                  ButtonContainerWidget(color:_switch==Switch.next?AppColors.green: AppColors.offwhite, widget: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text('next'.tr,style:_switch==Switch.next? TextDimensions.style18500white:TextDimensions.style18500black,),
                      SizedBox(width: 8.w,),
                      Icon(Icons.arrow_forward_ios,size: 15.h,color: _switch==Switch.next?AppColors.white: AppColors.black,),

                    ],), tap: () {

                    setState(() {
                      _switch=Switch.next;

                    });
                    Future.delayed(Duration(seconds: 3));
                    Get.toNamed(RouteHelper.homeScreen);
                  },),


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

        ),

      ],) ,

    );
  }
}
