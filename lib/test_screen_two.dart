import 'package:feroo_store/core/extention/context_extention.dart';
import 'package:feroo_store/core/routes/app_route.dart';
import 'package:flutter/material.dart';

class TestScreenTwo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("two"),),
        body:Container(
          color: Colors.pinkAccent,
          child: Center(child: MaterialButton(
            onPressed:(){
              context.pushNamed(AppRoute.testScreenOne);
            },
            child: Text("go to screen one"),
          ),),
        )
    );
  }

}