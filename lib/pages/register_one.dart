import 'package:beta_nation/features/register/bloc/register_bloc.dart';
import 'package:beta_nation/features/register/bloc/register_event.dart';
import 'package:beta_nation/features/register/bloc/register_state.dart';
import 'package:beta_nation/features/register/data/models/regions_model.dart';
import 'package:beta_nation/features/register/data/models/states_model.dart';
import 'package:beta_nation/utils/api/api_mixin.dart';
import 'package:beta_nation/utils/register_utils.dart';
import 'package:beta_nation/utils/router.dart';
import 'package:beta_nation/utils/widgets/custom_textfield.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../helper/routing.dart';
import '../utils/app_colors.dart';
import '../utils/text_dimensions.dart';
import '../utils/widgets/button_widget.dart';

enum Switch { next, prev, none }

class RegisterOne extends StatefulWidget {
  const RegisterOne({Key? key}) : super(key: key);

  @override
  State<RegisterOne> createState() => _RegisterOneState();
}

class _RegisterOneState extends State<RegisterOne> with ApiMixin {
  Switch _switch = Switch.none;
  String? _selectedItem;

  String? _titleItem;
  String? _stateItem;
  String? _lgaItem;

  String? _martialItem;
  var title = ['Title', 'Miss', 'Mrs', 'Master', 'Mister', 'Mr', 'Chief'];

  var maritalStatus = [
    'Marital Status',
    'Complicated',
    'Married',
    'Single',
    'Relationship',
    'Engaged'
  ];
  var stateItems = ['State of Origin'];
  var lgaItems = ['Local Government Area'];

  final _bloc = RegisterBloc();
  final _stateBloc = RegisterBloc();
  final _formKey = GlobalKey<FormState>();

  var _items = [''];
  @override
  void initState() {
    _stateBloc.add(const RegisterStatesEvent());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController fname = TextEditingController();
    TextEditingController lname = TextEditingController();
    TextEditingController maidenName = TextEditingController();
    TextEditingController dob = TextEditingController();
    TextEditingController lga = TextEditingController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 142.25.h,
              width: 414.w,
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
            ),
            Form(
              key: _formKey,
              child: Container(
                margin: EdgeInsets.only(left: 16.w, right: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'register'.tr,
                      style: TextDimensions.style36600grey,
                    ),
                    SizedBox(
                      height: 31.63.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: AppDropField(
                            label: 'Select Account Type',
                            text: _titleItem,
                            hint: 'Title',
                            list: title,
                            onValidate: (p0) {
                              if (p0 == title[0] || p0 == null) {
                                return 'This field is required';
                              }
                              return null;
                            },
                            onChange: (value) {
                              _titleItem = value;
                            },
                          ),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Expanded(
                          child: CustomTextField(
                            text: 'First name'.tr,
                            controller: fname,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextField(
                            text: 'Last name'.tr,
                            controller: lname,
                          ),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Expanded(
                          child: CustomTextField(
                            text: 'Maiden name',
                            controller: maidenName,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomTextField(
                            text: 'Date of Birth',
                            controller: lname,
                          ),
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        Expanded(
                          child: AppDropField(
                            label: 'Select Account Type',
                            text: _martialItem,
                            hint: 'Marital Status',
                            list: maritalStatus,
                            onChange: (value) {
                              _martialItem = value;
                            },
                            onValidate: (p0) {
                              if (p0 == maritalStatus[0] || p0 == null) {
                                return 'This field is required';
                              }
                              return null;
                            },
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    BlocListener<RegisterBloc, RegisterState>(
                      bloc: _stateBloc,
                      listener: (context, state) {
                        blocListenerState(context, state);
                      },
                      child: AppDropField(
                        label: 'Select Account Type',
                        text: _stateItem,
                        hint: 'State of Origin',
                        list: stateItems,
                        onValidate: (p0) {
                          if (p0 == stateItems[0] || p0 == null) {
                            return 'This field is required';
                          }
                          return null;
                        },
                        onChange: (value) {
                          _stateItem = value;
                          value != stateItems[0]
                              ? _bloc
                                  .add(RegisterLGAEvent(stateOfOrigin: value))
                              : null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    BlocListener<RegisterBloc, RegisterState>(
                      bloc: _bloc,
                      listener: (context, state) {
                        blocListener(context, state);
                      },
                      child: AppDropField(
                        label: 'Select Account Type',
                        text: _lgaItem,
                        hint: 'Local Government Area',
                        list: lgaItems,
                        onValidate: (p0) {
                          if (p0 == lgaItems[0] || p0 == null) {
                            return 'This field is required';
                          }
                          return null;
                        },
                        onChange: (value) {
                          _selectedItem = value;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 68.h,
                    ),
                    Row(
                      children: [
                        ButtonContainerWidget(
                          color: AppColors.green,
                          widget: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.arrow_back_ios,
                                size: 15.h,
                                color: _switch == Switch.prev
                                    ? AppColors.black
                                    : AppColors.white,
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              Text(
                                'Previous'.tr,
                                style: _switch == Switch.prev
                                    ? TextDimensions.style18500black
                                    : TextDimensions.style18500white,
                              )
                            ],
                          ),
                          tap: () {
                            setState(() {
                              _switch = Switch.prev;
                            });
                            // Future.delayed(Duration(seconds: 2));
                            // Get.back();
                          },
                        ),
                        SizedBox(
                          width: 8.w,
                        ),
                        ButtonContainerWidget(
                          color: 
                               AppColors.green,
                          widget: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Next'.tr,
                                style: _switch == Switch.next
                                    ? TextDimensions.style18500black
                                    : TextDimensions.style18500white,
                              ),
                              SizedBox(
                                width: 8.w,
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 15.h,
                                color: _switch == Switch.next
                                    ? AppColors.black
                                    : AppColors.white,
                              ),
                            ],
                          ),
                          tap: () async {
                            setState(() {
                              _switch = Switch.next;
                            });
                          
                            // Get.toNamed(RouteHelper.registerTwo);
                            if (_formKey.currentState!.validate()) {
                            
                            }
                            //  await  Future.delayed(Duration(seconds: 3));
                            // Navigator.pushNamed(context, router.registerTwo);
                          },
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 24.12.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'have account?'.tr,
                          style: TextDimensions.style18500black,
                        ),
                        Text(
                          ' Sign in'.tr,
                          style: TextDimensions.style18400green,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  void blocListener(BuildContext context, RegisterState state) {
    if (state.hasError) {
      filterError(context, state.error);
    } else if (state.hasData) {
      Regions response = state.data;

      setState(() => lgaItems = response.lgas!);
    }
  }

  void blocListenerState(BuildContext context, RegisterState state) {
    if (state.hasError) {
      filterError(context, state.error);
    } else if (state.hasData) {
      if (state.hasData) {
        States data = state.data!;
        for (var item in data.data!) {
          _items.add(item.id!);
        }
      }

      setState(() => stateItems = _items);
    }
  }
}

class AppDropField extends StatefulWidget {
  final String? text;
  final String hint;
  final IconData? icon;
  final void Function(String?) onChange;
  final List<String?> list;
  final bool? loading;
  final String? Function(String?)? onValidate;
  final String label;
  final bool showLabel;

  const AppDropField({
    Key? key,
    required this.text,
    required this.hint,
    required this.list,
    required this.label,
    this.showLabel = true,
    this.loading,
    this.onValidate,
    required this.onChange,
    this.icon,
  }) : super(key: key);

  @override
  State<AppDropField> createState() => _AppDropFieldState();
}

class _AppDropFieldState extends State<AppDropField> {
  String? value;

  @override
  void initState() {
    super.initState();

    value = widget.text;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: 60.0.h,
      // width: 382.w,
      // margin: const EdgeInsets.symmetric(vertical: 12.0),
      decoration: BoxDecoration(
// color: Colors.red,

          ),
      child: DropdownButtonFormField<String>(
        value: value,
        // menuMaxHeight: 100,
        icon: const Icon(Icons.keyboard_arrow_down_outlined),
        dropdownColor: Colors.white,
        validator: widget.onValidate,

        isExpanded: true,
        items: widget.list.map((e) {
          if (e != widget.hint) {
            return DropdownMenuItem<String>(
              value: e,
              child: IntrinsicWidth(
                child: Text(e!, style: TextDimensions.style15500black),
              ),
            );
          } else {
            return DropdownMenuItem<String>(
              onTap: () => null,
              value: e,
              child: IntrinsicWidth(
                child: Text(e!, style: TextDimensions.style16500greyOpacity),
              ),
            );
          }
        }).toList(),

        style: TextDimensions.style16500greyOpacity,

        decoration: InputDecoration(
          hintText: widget.hint,
          filled: true,
          fillColor: AppColors.offwhite,
          contentPadding: EdgeInsets.fromLTRB(12, 22.h, 12, 12),

          // labelText:  widget.showLabel? widget.label:null,
          //   labelStyle: TextStyle(color: Colors.grey),
          hintStyle: TextDimensions.style16500greyOpacity,
          // contentPadding: const EdgeInsets.only(top: 2),
          prefixIcon:
              widget.icon != null ? Icon(widget.icon, size: 18.0) : null,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
            // gapPadding: 8.0,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
            // gapPadding: 8.0,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8),
            // gapPadding: 8.0,
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(color: AppColors.red),
            borderRadius: BorderRadius.circular(8),
            // gapPadding: 8.0,
          ),
        ),
        onChanged: (text) {
          widget.onChange(text);
        },
      ),
    );
  }
}
