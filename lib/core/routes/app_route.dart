import 'package:feroo_store/core/common/screans/under_build_screen.dart';
import 'package:feroo_store/core/features/auth/presentation/screens/login_screen.dart';
import 'package:feroo_store/core/routes/base_routes.dart';
import 'package:flutter/material.dart';

class AppRoute {

  static const String login = "login";

  static  Route<dynamic>? onGenerateRoute(RouteSettings setting){

    final arg = setting.arguments;
    switch(setting.name){
      case login:
        return BaseRoute(page:LogIn());
      // case testScreenTwo:
      //   return BaseRoute(page:TestScreenTwo());
      default : return BaseRoute(page:PageUnderBuildScreen());
    }
  }

}