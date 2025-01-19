import 'package:feroo_store/core/extension/context_extension.dart';
import 'package:flutter/material.dart';

import 'core/routes/app_route.dart';

class TestScreenOne extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(title: Text("one"),),
      body:Container(
        child: Center(child: MaterialButton(
            onPressed:(){
              context.pushNamed(AppRoute.testScreenTwo);

            },
          child: Text("go to screen two",style: TextStyle(
            color:context.color.mainColor,
            fontSize: 25,)),
        ),),
    )
    );
  }

}