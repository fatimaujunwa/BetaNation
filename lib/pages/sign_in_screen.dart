import 'package:beta_nation/features/login/app/bloc/login_bloc.dart';
import 'package:beta_nation/utils/app_colors.dart';
import 'package:beta_nation/utils/text_dimensions.dart';
import 'package:beta_nation/utils/widgets/button_widget.dart';
import 'package:beta_nation/utils/widgets/custom_textfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  LoginBloc? _bloc;
  TextEditingController? nin;
  TextEditingController? password;

  @override
  void initState() {
    _bloc = LoginBloc();
    nin = TextEditingController();
    password = TextEditingController();

    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
            margin: EdgeInsets.only(top: 73.h, left: 16.w, right: 16.w),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                      alignment: Alignment.center,
                      child: Image.asset(
                        'images/BetaNation.png',
                        width: 135.w,
                        height: 39.h,
                      )),
                  SizedBox(
                    height: 41.81.h,
                  ),
                  Text(
                    'Sign in',
                    style: TextDimensions.style36600grey,
                  ),
                  SizedBox(
                    height: 31.63.h,
                  ),
                  
                  CustomTextField(text: 'NIN Number', controller: nin!),
                  SizedBox(
                    height: 20.h,
                  ),
                  CustomTextField(text: 'Password', controller: password!),
                 Spacer(),
                 
                  Align(
                      alignment: Alignment.center,
                      child: BlocListener<LoginBloc, LoginState>(
                        bloc: _bloc,
                        listener: (BuildContext context, state) {},
                        child: ButtonContainerWidget(
                          color: AppColors.green,
                          widget: Text(
                            'Sign in',
                            style: TextDimensions.style18500white,
                          ),
                          tap: () {
                            if (_formKey.currentState!.validate()) {
                              _bloc!.add(
                                
                                LoginEvent(
                                  nin: nin!.text, password: password!.text));
                            }
                          },
                        ),
                      )),
                  SizedBox(
                    height: 24.12.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Don\'t have an account?',
                        style: TextDimensions.style18400grey,
                      ),
                      Center(
                          child: Text(
                        'Register',
                        style: TextDimensions.style18400green,
                      ))
                    ],
                  )
                ],
              ),
            ),
          )),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 320.62.h,
              child: Stack(
                alignment: Alignment.center,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: Image(
                      fit: BoxFit.fill,
                      image: AssetImage("images/Rectangle 8.png"),
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
                        end: Alignment.topCenter,
                        colors: [
                          AppColors.white.withOpacity(0),
                          AppColors.white
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
