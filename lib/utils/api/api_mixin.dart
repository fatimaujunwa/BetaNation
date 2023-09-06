import 'package:beta_nation/utils/api/models/betanation_error.dart';
import 'package:beta_nation/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

mixin ApiMixin {
  filterError(BuildContext context, BetaNationException? e) {
    showBetaNationSnackbar(context, e!.message!);
  }

  showBetaNationSnackbar(context,
      [String message = '', bool isSuccess = false]) {
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(BetaNationSnackbar(
        message: message,
        text: 'DISMISS',
        tap: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
        },
      ));
  }
}

class BetaNationSnackbar extends SnackBar {
  final bool isSuccess;
  final String? message;
  final String text;
  final Function() tap;
  final double bottomMargin;
  final double leftMargin;
  final int? delay;
  final SnackBarAction? action;

  BetaNationSnackbar({
    required this.message,
    this.action,
    this.delay,
    this.isSuccess = false,
    required this.text,
    this.bottomMargin = 35.0,
    this.leftMargin = 20.0,
    required this.tap,
  }) : super(
            content: isSuccess
                ? SuccessSnackbar(
                    message: message,
                    onPressed: tap,
                    text: text,
                  )
                : ErrorSnackBar(
                    error: message,
                  ),
            margin: EdgeInsets.symmetric(
                vertical: bottomMargin.h, horizontal: leftMargin.h),
            behavior: SnackBarBehavior.floating,
            elevation: 6.0,
            action: action,
            backgroundColor: isSuccess? AppColors.green: AppColors.red,
            duration: Duration(seconds: delay ?? 15));
            
}

class SuccessSnackbar extends StatelessWidget {
  final String? message;
  final String text;
  final Function() onPressed;
  const SuccessSnackbar(
      {Key? key, this.message, required this.text, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(top: 10, bottom: 10),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    child: Text(
                      message!,
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.check,
                    color: Colors.white,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              radius: 20,
              onTap: onPressed,
              child: Text(
                text,
                style: TextStyle(
                    color: Color.fromARGB(255, 226, 239, 78),
                    fontWeight: FontWeight.w600),
              ),
            )
          ],
        ));
  }
}

class ErrorSnackBar extends StatelessWidget {
  final String? error;
  const ErrorSnackBar({
    Key? key,
    required this.error,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Flexible(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(Icons.error_outline, color: Colors.white),
              SizedBox(
                width: 10,
              ),
              Flexible(
                child: Text(
                  "Error",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Expanded(
              child: Text(
                error!,
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.white),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            InkWell(
              radius: 20,
              onTap: () => ScaffoldMessenger.of(context).hideCurrentSnackBar(),
              child: Text(
                "DISMISS",
                style: TextStyle(
                    color: Color.fromARGB(255, 226, 239, 78),
                    fontWeight: FontWeight.w600),
              ),
            )
          ],
        ),
        SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
