
import 'package:feroo_store/core/style/theme/color_extention.dart';
import 'package:feroo_store/core/style/theme/image_extension.dart';
import 'package:flutter/material.dart';

extension ContextExtention on BuildContext{

// color
  MyColors get color => Theme.of(this).extension<MyColors>()!;

//images
  MyImages get images => Theme.of(this).extension<MyImages>()!;

  Future<Object?> pushNamed(String routeName,{Object? arguments}){
   return Navigator.of(this).pushNamed(routeName,arguments:arguments );
  }

  Future<Object?> pushReplacementNamed(String routeName,{Object? arguments}){
    return Navigator.of(this).pushReplacementNamed(routeName,arguments:arguments );
  }

  Future<Object?> pushNamedAndRemoveUntil(String routeName,{Object? arguments}){
    return Navigator.of(this).pushNamedAndRemoveUntil(routeName,arguments:arguments,(route)=>false );
  }
  void pop() => Navigator.pop(this);
}