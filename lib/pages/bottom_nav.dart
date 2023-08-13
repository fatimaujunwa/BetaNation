import 'package:beta_nation/pages/scrolled_screen.dart';
import 'package:beta_nation/utils/app_colors.dart';
import 'package:beta_nation/utils/text_dimensions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:iconly/iconly.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  final List<Widget> _children = [
   ScrolledScreen(),
    Text("Profile"),
    Text("Settings"),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        height: 113.r,
        decoration: BoxDecoration(

          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: (){
                setState(() {
                  _selectedIndex=0;
                });
              },
              child: Container(

                alignment: Alignment.center,

                width: 110.w,
                height: 48.h,
                decoration: BoxDecoration(
                  color:_selectedIndex==0? AppColors.green:AppColors.white,
                  borderRadius: BorderRadius.circular(32.r),

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Icon(
                      IconlyBold.home,
                      color: _selectedIndex==0? AppColors.white:AppColors.green,
                      size: 20,

                    ),
                    SizedBox(width: 8.w,),
                    Text('Home',style: _selectedIndex==0? TextDimensions.style15500white:TextDimensions.style15500green,)
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: (){
                setState(() {
                  _selectedIndex=1;
                });
              },
              child: Container(
                alignment: Alignment.center,
                width: 110.w,
                height: 48.h,
                decoration: BoxDecoration(
                  color: _selectedIndex==1? AppColors.green:AppColors.white,
                  borderRadius: BorderRadius.circular(32.r),

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      IconlyBold.tick_square,
                      color: _selectedIndex==1? AppColors.white:AppColors.green,
                      size: 20,

                    ),
                    SizedBox(width: 8.w,),
                    Text('Votes',style: _selectedIndex==1? TextDimensions.style15500white:TextDimensions.style15500green,)
                  ],
                ),
              ),
            ),
            GestureDetector(

              onTap: (){
                setState(() {
                  _selectedIndex=2;
                });
              },
              child: Container(
                alignment: Alignment.center,
                width: 110.w,
                height: 48.h,
                decoration: BoxDecoration(
                  color: _selectedIndex==2? AppColors.green:AppColors.white,
                  borderRadius: BorderRadius.circular(32.r),

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      IconlyBold.profile,
                      color: _selectedIndex==2? AppColors.white:AppColors.green,
                      size: 20,

                    ),
                    SizedBox(width: 8.w,),
                    Text('Profile',style:_selectedIndex==2? TextDimensions.style15500white:TextDimensions.style15500green,)
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
      body: _children[_selectedIndex],
    );
  }
}
