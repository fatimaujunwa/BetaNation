import 'package:beta_nation/utils/widgets/custom_textfield.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../helper/routing.dart';
import '../utils/app_colors.dart';
import '../utils/text_dimensions.dart';
import '../utils/widgets/button_widget.dart';
enum Switch{
  next,
prev,
  none
}
class RegisterOne extends StatefulWidget {
  const RegisterOne({Key? key}) : super(key: key);

  @override
  State<RegisterOne> createState() => _RegisterOneState();
}

class _RegisterOneState extends State<RegisterOne> {
  Switch _switch=Switch.none;

  @override
  Widget build(BuildContext context) {
    String titleValue = 'Title';
    var items = ['Title', 'Miss', 'Mrs', 'Master', 'Mister', 'Mr', 'Chief'];
    var nationalityItems = ['Title', 'Miss', 'Mrs', 'Master', 'Mister', 'Mr', 'Chief'];
    var maritalStatus = ['Marital status','Complicated', 'Married', 'Single', 'Relationship', 'Engaged'];
    var stateItems = ['Title', 'Miss', 'Mrs', 'Master', 'Mister', 'Mr', 'Chief'];
    var lgaItems = ['Title', 'Miss', 'Mrs', 'Master', 'Mister', 'Mr', 'Chief'];
    String martialValue='Marital status';
    String state='';
    String lgaValue='';
    String nationalityValue='';


    TextEditingController fname=TextEditingController();
    TextEditingController lname=TextEditingController();
    TextEditingController maidenName= TextEditingController();
    TextEditingController dob= TextEditingController();
    TextEditingController lga= TextEditingController();
    return
      Scaffold(
        body:
        Column(children: [
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
                Text('register'.tr,style: TextDimensions.style36600grey,),
                SizedBox(height: 31.63.h,),

                Row(children: [
                  Container(
                      padding: EdgeInsets.only(left: 10.w),
                      height: 60.0.h,
                      width: 187.w,
                      decoration: BoxDecoration(
                        borderRadius: new BorderRadius.circular(12.r),
                        color: AppColors.offwhite,
                      ),

                      child:
                      DropdownButtonHideUnderline(

                        child: DropdownButton2(
                          icon: Icon(Icons.keyboard_arrow_down_outlined),
                          isExpanded: true,
                          hint: Text(
                            'Select Item',
                            style:TextDimensions.style16500greyOpacity
                          ),
                          items: items
                              .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                                style:TextDimensions.style16500greyOpacity
                              // style: TextDimensions.style14InterW400Grey
                            ),
                          ))
                              .toList(),
                          value: titleValue,
                          onChanged: (String? newValue) {
                            setState(() {
                              titleValue = newValue!;
                              // widget.controller.text=dropdownvalue;
                            });
                          },
                          buttonHeight: 40,
                          buttonWidth: 140,
                          itemHeight: 40,
                        ),
                      )

                  ),
                  SizedBox(width: 8.w,),
                  CustomTextField(text: 'first name'.tr, controller: fname,width: 187,)
                ],),
                SizedBox(height: 16.h,),
                Row(children: [
                  CustomTextField(text: 'last name'.tr, controller: lname,width: 187,),
                  SizedBox(width: 8.w,),
                  CustomTextField(text: 'Maiden name', controller: maidenName,width: 187,)
                ],),
                SizedBox(height: 16.h,),
                Row(children: [
                  CustomTextField(text: 'Date of Birth', controller: lname,width: 187,),
                  SizedBox(width: 8.w,),
                  Container(
                      padding: EdgeInsets.only(left: 10.w),
                      height: 60.0.h,
                      width: 187.w,
                      decoration: BoxDecoration(
                        borderRadius: new BorderRadius.circular(12.r),
                        color: AppColors.offwhite,
                      ),

                      child:
                      DropdownButtonHideUnderline(

                        child: DropdownButton2(
                          icon: Icon(Icons.keyboard_arrow_down_outlined),
                          isExpanded: true,
                          hint: Text(
                              'Select Item',
                              style:TextDimensions.style16500greyOpacity
                          ),
                          items: maritalStatus
                              .map((item) => DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                                item,
                                style:TextDimensions.style16500greyOpacity
                              // style: TextDimensions.style14InterW400Grey
                            ),
                          ))
                              .toList(),
                          value: martialValue,
                          onChanged: (String? newValue) {
                            setState(() {
                              titleValue = newValue!;
                              // widget.controller.text=dropdownvalue;
                            });
                          },
                          buttonHeight: 40,
                          buttonWidth: 140,
                          itemHeight: 40,
                        ),
                      )

                  ),
                ],),
                SizedBox(height: 16.h,),
                Container(
                    padding: EdgeInsets.only(left: 10.w),
                    height: 60.0.h,
                    width: 382.w,
                    decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(12.r),
                      color: AppColors.offwhite,
                    ),

                    child:
                    DropdownButtonHideUnderline(

                      child: DropdownButton2(
                        icon: Icon(Icons.keyboard_arrow_down_outlined),
                        isExpanded: true,
                        hint: Text(
                            'Select Item',
                            style:TextDimensions.style16500greyOpacity
                        ),
                        items: maritalStatus
                            .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                              item,
                              style:TextDimensions.style16500greyOpacity
                            // style: TextDimensions.style14InterW400Grey
                          ),
                        ))
                            .toList(),
                        value: martialValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            titleValue = newValue!;
                            // widget.controller.text=dropdownvalue;
                          });
                        },
                        buttonHeight: 40,
                        buttonWidth: 140,
                        itemHeight: 40,
                      ),
                    )

                ),
                SizedBox(height: 16.h,),
                Container(
                    padding: EdgeInsets.only(left: 10.w),
                    height: 60.0.h,
                    width: 384.w,
                    decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(12.r),
                      color: AppColors.offwhite,
                    ),

                    child:
                    DropdownButtonHideUnderline(

                      child: DropdownButton2(
                        icon: Icon(Icons.keyboard_arrow_down_outlined),
                        isExpanded: true,
                        hint: Text(
                            'Select Item',
                            style:TextDimensions.style16500greyOpacity
                        ),
                        items: maritalStatus
                            .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                              item,
                              style:TextDimensions.style16500greyOpacity
                            // style: TextDimensions.style14InterW400Grey
                          ),
                        ))
                            .toList(),
                        value: martialValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            titleValue = newValue!;
                            // widget.controller.text=dropdownvalue;
                          });
                        },
                        buttonHeight: 40,
                        buttonWidth: 140,
                        itemHeight: 40,
                      ),
                    )

                ),
                SizedBox(height: 16.h,),
                Container(
                    padding: EdgeInsets.only(left: 10.w),
                    height: 60.0.h,
                    width: 384.w,
                    decoration: BoxDecoration(
                      borderRadius: new BorderRadius.circular(12.r),
                      color: AppColors.offwhite,
                    ),

                    child:
                    DropdownButtonHideUnderline(

                      child: DropdownButton2(
                        icon: Icon(Icons.keyboard_arrow_down_outlined),
                        isExpanded: true,
                        hint: Text(
                            'Select Item',
                            style:TextDimensions.style16500greyOpacity
                        ),
                        items: maritalStatus
                            .map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: Text(
                              item,
                              style:TextDimensions.style16500greyOpacity
                            // style: TextDimensions.style14InterW400Grey
                          ),
                        ))
                            .toList(),
                        value: martialValue,
                        onChanged: (String? newValue) {
                          setState(() {
                            titleValue = newValue!;
                            // widget.controller.text=dropdownvalue;
                          });
                        },
                        buttonHeight: 40,
                        buttonWidth: 140,
                        itemHeight: 40,
                      ),
                    )

                ),
                SizedBox(height: 68.h,),
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
            Get.toNamed(RouteHelper.registerTwo);
          },),


                  ],
                ),
                SizedBox(height: 24.12.h,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('have acc'.tr,style: TextDimensions.style18500black,),
                    Text('sign_in'.tr,style: TextDimensions.style18400green,),
                  ],
                )

              ],
            ),

          )
        ],) ,

      );
  }
}

