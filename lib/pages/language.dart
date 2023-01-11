import 'package:beta_nation/utils/app_colors.dart';
import 'package:beta_nation/utils/text_dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Language extends StatefulWidget {
  const Language({Key? key}) : super(key: key);

  @override
  State<Language> createState() => _LanguageState();
}

class _LanguageState extends State<Language> {
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

  updateLanguage(Locale locale){
    Get.back();
    Get.updateLocale(locale);

  }
  Future <void> create(BuildContext context) async {
    await showModalBottomSheet(
      // isScrollControlled: true,

      context: context, builder: (BuildContext context){
      return Padding(
        padding:  EdgeInsets.only(left: 20.0.w,right: 20.w,top: 20.h,bottom: MediaQuery.of(context).viewInsets.bottom+20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Select what language you would prefer to use throughout the app',style: TextDimensions.style16400Black,),
            SizedBox(height: 24.h,),
           Expanded(
             child: ListView.separated(
                 shrinkWrap: true
                 ,itemBuilder: (_,i){
               return  GestureDetector(

                 onTap: (){
                   updateLanguage(locale[i]['locale']);

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
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('hello'.tr,style: TextDimensions.style24500black,),
            ElevatedButton(onPressed: (){
              // var locale=Locale('en','NG');
              // Get.updateLocale(locale);
              create(context);

            }, child: Text('tap'))
          ],
        ),
      ),


    );
  }
}
