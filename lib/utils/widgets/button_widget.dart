import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../text_dimensions.dart';

class ButtonContainerWidget extends StatelessWidget {
  const ButtonContainerWidget({
    Key? key,

    required this.color,
    required this.widget,
    required this.tap
  }) : super(key: key);
  final Color color;

  final Widget widget;
  final Function() tap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: tap,

      child: Container(

        alignment: Alignment.center,
        height: 60.h,width: 187.w,
        decoration: BoxDecoration(color: color,
            borderRadius: BorderRadius.circular(8.r)
        ),
        child: widget,

      ),
    );
  }
}