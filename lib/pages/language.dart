import 'package:beta_nation/utils/app_colors.dart';
import 'package:beta_nation/utils/text_dimensions.dart';
import 'package:beta_nation/utils/widgets/modal_bottom_sheet.dart';
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
@override
  void initState() {
    // TODO: implement initState
    super.initState();
    ModalBottom().create(context);
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


            }, child: Text('tap'))
          ],
        ),
      ),


    );
  }
}
