import 'package:feroo_store/core/app/env.variabels.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: EnvVariabels.instance.debugMode,
      title: 'Feroo_Store',
       home: Scaffold(
         body: Text("moo"),
       ),
    );
  }
}
