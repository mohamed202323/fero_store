import 'package:feroo_store/core/app/connectivity_network_controller.dart';
import 'package:feroo_store/core/app/env.variabels.dart';
import 'package:feroo_store/core/common/screan/no_network_screan.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
   return ValueListenableBuilder(
        valueListenable: ConnectivityNetworkController.instance.isConnect,
        builder: (_,value,__){
          if(value){
          return MaterialApp(
            debugShowCheckedModeBanner: EnvVariabels.instance.debugMode,
            title: 'Feroo_Store',
             home: const Scaffold(
               body: Text("moo"),
             ),
            builder: (context,widget){
              ConnectivityNetworkController.instance.init();
              return Scaffold(
                body: Builder(
                    builder:(context){
                      return widget! ;
                    },
                ),
              );
            },
          );
          }
          else {
            return MaterialApp(
                debugShowCheckedModeBanner: EnvVariabels.instance.debugMode,
                title: 'No_Inernet',
                home: NoNetworkScrean()
            );
          }
        }
   );
  }
}
