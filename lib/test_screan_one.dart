import 'package:feroo_store/core/extention/context_extention.dart';
import 'package:flutter/material.dart';

import 'core/routes/app_route.dart';

class TestScreenOne extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("one"),),
      body:Container(
        color: Colors.pinkAccent,
        child: Center(child: MaterialButton(
            onPressed:(){
              context.pushNamed(AppRoute.testScreenTwo);

            },
          child: Text("go to screen two"),
        ),),
    )
    );
  }

}