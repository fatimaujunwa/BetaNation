import 'package:beta_nation/utils/app_colors.dart';
import 'package:beta_nation/utils/text_dimensions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScrolledScreen extends StatelessWidget {
  const ScrolledScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 75.53.h,left: 16.w,right: 16.w
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Welcome, Fatima Ujunwa',style: TextDimensions.style16500grey,),
              SizedBox(height: 24.91.h,),
              Container(
                padding: EdgeInsets.only(left:37.93.w,top: 5.56.h),
                decoration: BoxDecoration(
                  color: AppColors.green,
                  borderRadius: BorderRadius.circular(8.r),


                ),
                height: 89.h,width: 382.w,
              child: Row
                (
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('97',style: TextDimensions.style36600white,),
                        SizedBox(width:16.14.w ,),
                        Text(':',style: TextDimensions.style36600white),
                        SizedBox(width:16.14.w ,),
                        Text('40',style: TextDimensions.style36600white,),
                        SizedBox(width:16.14.w ,),
                        Text(':',style: TextDimensions.style36600white),
                        SizedBox(width:16.14.w ,),
                        Text('17',style: TextDimensions.style36600white,),
                        SizedBox(width:16.14.w ,),
                        Text(':',style: TextDimensions.style36600white),
                        SizedBox(width:16.14.w ,),
                        Text('60',style: TextDimensions.style36600white,),
                        SizedBox(width:16.14.w ,),


                      ],
                    ),
                    Row(
                      children: [
                        Text('Days',style: TextDimensions.style16500white,),
                        SizedBox(width: 44.14.w,),
                        Text('Hours',style: TextDimensions.style16500white,),
                        SizedBox(width: 28.68.w,),
                        Text('Minutes',style: TextDimensions.style16500white,),
                        SizedBox(width: 28.w,),
                        Text('Seconds',style: TextDimensions.style16500white,),
                      ],
                    ),
                    
                  ],
                ),


              ],),
              ),
              SizedBox(height: 16.h,),
              Text('Next Election: Presidential and National Assembly',style: TextDimensions.style16500greyOpacity,textAlign: TextAlign.center,),
              Align(
                alignment: Alignment.center
                ,
                  child: Text('February 25, 2023',style: TextDimensions.style16700grey,textAlign: TextAlign.center)),
              SizedBox(height: 15.56.h,),
              Image.asset('images/guide.png',height: 263.12.h,),
              SizedBox(height: 16.88.h,),
              Container(
                padding: EdgeInsets.only(left: 10.w,
                  top: 16.h,
                  
                ),
                height: 82.h,
                width: 382.w,
                decoration: BoxDecoration(
                  color: Color(0xffEAF3EF),
                  borderRadius: BorderRadius.circular(8.r),
                  


                ),
                child:Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text('For more information, visit the official INEC site',style: TextDimensions.style15500black, ),
                    Text('www.inecnigeria.org',style: TextDimensions.style15500green,)
                  ],
                ) ,


              ),
              SizedBox(height: 16.59.h,),
              Text('For many years, voting in Nigeria has been difficult for its residents. It is typically known to involve a lot of conflict, insecurity, vote rigging, and long, demoralizing lines, all of which deter most people from casting their votes.',style: TextDimensions.style16500grey,textAlign: TextAlign.justify,),
SizedBox(height: 8.h,)
,Text('Therefore, this approach was developed to offer a more convinient and safe way to vote without all the problems mentioned above.',style: TextDimensions.style16500grey,textAlign: TextAlign.justify,)
             , SizedBox(height: 16.h,),
              Text('Current INEC Chairman',style: TextDimensions.style18400green,)
              ,SizedBox(height: 8.h,),
              Image.asset('images/Rectangle 21.png'),
          SizedBox(height: 8.h,),
              Text("""I am pleased to introduce the Commission's online portal for the Continuous Voter Registration (CVR).

Since the resumption of voter registration on a continuous basis in 2017, the Commission has been looking at ways to make voter registration easier, more accessible, and user-friendly not only to the multitude of prospective registrants, but also to registered voters who may wish to transfer their registration or have had their Permanent Voters' Cards (PVCs) missing or defaced. This is one of the Commission's innovations to enhance voter experience by making the registration exercise faster, easier, and less crowded than before. Given the lingering COVID-19 situation, the new registration solution will help decongest registration centers, reduce delays, and allow prospective registrants to schedule appointments and monitor their applications from the comfort of their homes.

The portal allows a two-step registration process in which first, prospective registrants login to pre-register by providing their basic biodata and some biometrics and second to complete the registration by physically presenting themselves at a designated registration center of their choice.

This considerably eases the process as a substantial part of the exercise would have been completed online before physical contact with registration officials. I urge all eligible Nigerians to take advantage of the services offered by the Commission through this portal.


              """,style: TextDimensions.style16500grey,textAlign: TextAlign.justify),
              Text("Professor Mahmood Yakubu",style: TextDimensions.style16700grey,),
              Text("Chairman, Independent National Electoral Commission.",style: TextDimensions.style16500grey,textAlign: TextAlign.justify,)
            ],
          ),
        ),
      )


    );
  }
}
