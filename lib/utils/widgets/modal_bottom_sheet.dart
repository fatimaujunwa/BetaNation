import 'package:beta_nation/utils/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../app_colors.dart';
import '../text_dimensions.dart';

class ModalBottom{
  final List locale=[
    {'name':'English (Default)','locale':Locale('en','GB')},{
      'name':'Èdè Yorùbá','locale':Locale('yo','NG')
    },{
      'name':'Pidgin','locale':Locale('en','NG')
    },

    {
      'name':'Ásụ̀sụ́ Ìgbò','locale':Locale('ig','NG')
    }
  ];
  // updateLanguage(Locale locale){
  //   Get.back();
  //   Get.updateLocale(locale);

  // }

  Future  create(BuildContext context) async {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      showModalBottomSheet(
        // isScrollControlled: true,

        context: context, builder: (BuildContext context){
        return Padding(
          padding:  EdgeInsets.only(left: 20.0.w,right: 20.w,top: 20.h,),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Select what language you would prefer to use throughout the app',style: TextDimensions.style16400Black,),
              SizedBox(height: 24.h,),
              Container(
                height: 300.h,
                child: ListView.separated(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics()

                    ,itemBuilder: (_,i){
                  return  GestureDetector(

                    onTap: (){
                     Navigator.pushNamed(context, router.login);

                    },
                    child: Container(
                      padding: EdgeInsets.only(left: 16.11.w),
                      alignment: Alignment.centerLeft,
                      width: 366.w,height: 50.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          color: AppColors.offwhite
                      ),
                      child: Text(locale[i]['name'],style: TextDimensions.style16500grey,),
                    ),
                  );

                }, separatorBuilder: (_,index){
                  return SizedBox(height:8.h ,);

                }, itemCount: locale.length),
              )



            ],),
        )  ;
      },
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0.r),
          // side: BorderSide(color: AppColors.lightNavyBlue)

        ),
        backgroundColor: AppColors.white,


      );
    });



  }
}