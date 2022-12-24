import 'package:beta_nation/utils/text_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

import '../utils/app_colors.dart';

class VotingScreenTwo extends StatelessWidget {
  const VotingScreenTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller=TextEditingController();
    return Scaffold(
      body: Container(

        margin: EdgeInsets.only(top: 73.53.h,left: 16.w,right: 16.w),
        child: Column(children: [
          Row(children: [
            Icon(Icons.arrow_back_ios_new,size: 20.h,),
            SizedBox(width: 15.45.w,),
            Text('Presidential Election',style: TextDimensions.style24500green,),


          ],),
          SizedBox(height: 15.91.h,),
      Row(
        children: [
          Container(

            height: 60.h,
            // margin: EdgeInsets.only(right: 68.w),
            width: 315.w,
            child: TextField(
              controller: controller,


              style: TextDimensions.style16400Black,
              decoration: InputDecoration(
                prefixIcon: Icon(Icons.search),

                hintText: 'Search nominees',
                hintStyle: TextDimensions.style16500greyOpacity,
                filled: true,
                fillColor:AppColors.offwhite,
                border: OutlineInputBorder(
                    borderRadius: new BorderRadius.circular(10.0),
                    borderSide: BorderSide.none
                ),

              ),
              textAlign: TextAlign.start,
              maxLines: 1,


            ),
          ),
          SizedBox(width: 7.w,),
          Container(
            height: 60.h,
            width: 60.w,

            child: Icon(IconlyBold.filter_2,color: AppColors.white,size: 25.h,),
          decoration: BoxDecoration(
            color: AppColors.green,

          ),
          )
        ],
      ),
          SizedBox(height:15.56.h ,),
      Row(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(height: 187.93.h,width: 187.w,

                decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(8.r),
                  image: DecorationImage(
                      image: AssetImage('images/obi.png')
                  )

                ),
              ),
              SizedBox(height: 18.h,),
              Text('OBI PETER GREGORY',style: TextDimensions.style18400grey,),
              SizedBox(height: 38.h,),



            ],),
          SizedBox(width: 8.w,),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(height: 187.93.h,width: 187.w,

                decoration: BoxDecoration(

                    borderRadius: BorderRadius.circular(8.r),
                    image: DecorationImage(
                        image: AssetImage('images/candi.png')
                    )

                ),
              ),
              SizedBox(height: 18.h,),
              Container(
                height: 44.h,
                  width: 187.w,
                  alignment:Alignment.centerLeft,
                  child: Text('ALMUSTAPHA HAMZA',style: TextDimensions.style18400grey,)),
              SizedBox(height: 38.h,),



            ],),


        ],
      ),
          Row(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(height: 187.93.h,width: 187.w,

                    decoration: BoxDecoration(

                        borderRadius: BorderRadius.circular(8.r),
                        image: DecorationImage(
                            image: AssetImage('images/Rectangle 21-2.png')
                        )

                    ),
                  ),
                  SizedBox(height: 18.h,),
                  Text('OBI PETER GREGORY',style: TextDimensions.style18400grey,),
                  SizedBox(height: 38.h,),



                ],),
              SizedBox(width: 8.w,),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(height: 187.93.h,width: 187.w,

                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8.r),
                        image: DecorationImage(
                            image: AssetImage('images/Rectangle 3-2.png')
                        )

                    ),
                  ),
                  SizedBox(height: 18.h,),
                  Text('OBI PETER GREGORY',style: TextDimensions.style18400grey,),
                  SizedBox(height: 38.h,),



                ],),


            ],
          ),



        ],),
      ),


    );
  }
}
//SizedBox(height: 18.h,),
//               Text('OBI PETER GREGORY',style: TextDimensions.style18400grey,),
//               SizedBox(height: 38.h,),