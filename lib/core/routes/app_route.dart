import 'package:feroo_store/core/common/screan/under_build_screen.dart';
import 'package:feroo_store/core/routes/base_routes.dart';
import 'package:feroo_store/test_screan_one.dart';
import 'package:feroo_store/test_screen_two.dart';
import 'package:flutter/material.dart';

class AppRoute {

  static const String testScreenOne = "testScreenOne";
  static const String testScreenTwo = "testScreenTwo";

  static  Route<dynamic>? onGenerateRoute(RouteSettings setting){

    final arg = setting.arguments;
    switch(setting.name){
      case testScreenOne:
        return BaseRoute(page:TestScreenOne());
      case testScreenTwo:
        return BaseRoute(page:TestScreenTwo());
      default : return BaseRoute(page:PageUnderBuildScreen());
    }
  }

}