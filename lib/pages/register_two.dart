import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../utils/app_colors.dart';

class RegisterTwo extends StatelessWidget {
  const RegisterTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(children: [
        Container(height: 212.74.h,width: 414.w,
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

        )
      ],) ,

    );;
  }
}
