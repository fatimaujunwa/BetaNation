import 'package:beta_nation/features/login/app/bloc/login_bloc.dart';
import 'package:beta_nation/utils/router.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class App extends StatelessWidget {
  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(providers: [
      BlocProvider<LoginBloc>(create: (context)=> LoginBloc())



    ], child: BetaNationApp(navigatorKey: _navigatorKey)
    
    );
  }
}

class BetaNationApp extends StatefulWidget {
    final GlobalKey<NavigatorState> navigatorKey;
  const BetaNationApp({super.key, required this.navigatorKey});

  @override
  State<BetaNationApp> createState() => _BetaNationAppState();
}

class _BetaNationAppState extends State<BetaNationApp> {

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child){
        return MaterialApp(
          title: 'BetaNation',
          locale: Locale('en','GB'),
          navigatorKey: widget.navigatorKey,
          debugShowCheckedModeBanner: false,
          initialRoute: router.splash,
          onGenerateRoute: router.onGenerate

          
          
        );



    }, designSize: Size(414, 897.95),);
  }
}