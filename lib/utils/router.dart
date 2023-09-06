import 'package:beta_nation/pages/register_one.dart';
import 'package:beta_nation/pages/register_two.dart';
import 'package:beta_nation/pages/sign_in_screen.dart';
import 'package:beta_nation/pages/splash_screen.dart';
import 'package:flutter/widgets.dart';

class _Router {
  static const String _splash = '/';
  static const String _login = 'login';
  static const String _registerOne = 'register';
  static const String _registerTwo = 'registerTwo';
  String get splash => _splash;
  String get login => _login;
  String get registerTwo => _registerTwo;
  String get registerOne => _registerOne;
  Route<dynamic> onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case _splash:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return SplashScreen();
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        );

      case _login:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return LoginScreen();
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        );
        case _registerOne:
        return PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation){
          return RegisterOne();
        },
        transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(opacity: animation, child: child),
        
        );
    case _registerTwo:
        return PageRouteBuilder(pageBuilder: (context, animation, secondaryAnimation){
          return RegisterTwo();
        },
        transitionsBuilder: (context, animation, secondaryAnimation, child) => FadeTransition(opacity: animation, child: child),
        
        );
        

      default:
        return PageRouteBuilder(
          pageBuilder: (context, animation, secondaryAnimation) {
            return Container();
          },
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(opacity: animation, child: child);
          },
        );
    }
  }
}
final router = _Router();