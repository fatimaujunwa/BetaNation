import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../text_dimensions.dart';

class ButtonContainerWidget extends StatelessWidget {
  const ButtonContainerWidget({
    Key? key,
    required this.text,
    required this.color
  }) : super(key: key);
  final Color color;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(

      alignment: Alignment.center,
      height: 60.h,width: 187.w,
      decoration: BoxDecoration(color: color,
          borderRadius: BorderRadius.circular(8.r)
      ),
      child: Text(text,style: TextDimensions.style18500white,),

    );
  }
}