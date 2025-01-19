
import 'package:flutter/cupertino.dart';

extension ContextExtention on BuildContext{


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