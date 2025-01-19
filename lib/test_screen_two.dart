import 'package:feroo_store/core/extension/context_extension.dart';
import 'package:feroo_store/core/routes/app_route.dart';
import 'package:flutter/material.dart';

class TestScreenTwo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("two"),),
        body:Container(
          color: Colors.pinkAccent,
          child:Image.asset(context.images.testImage??'')
        )
    );
  }

}