import 'package:feroo_store/core/app/connectivity_network_controller.dart';
import 'package:feroo_store/core/app/env.variabels.dart';
import 'package:feroo_store/core/common/screan/no_network_screan.dart';
import 'package:feroo_store/core/style/font/font_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/style/font/font_family_helper.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  @override
  Widget build(BuildContext context) {
   return ValueListenableBuilder(
        valueListenable: ConnectivityNetworkController.instance.isConnect,
        builder: (_,value,__){
          if(value){
          return ScreenUtilInit(
            designSize: const Size(360, 690),
            minTextAdapt: true,
            child: MaterialApp(
              debugShowCheckedModeBanner: EnvVariabels.instance.debugMode,
              title: 'Feroo_Store',
               home: Scaffold(
                 body:Column(
                   children: [

                     const Text("==================no change======================"),
                     const Text("mohamed"),
                     const Text("محمد"),
                     const Text("====================large=================="),
                     Text("saad",style: TextStyle(fontFamily: FontFamilyHelper.english_poppins,fontWeight: FontSize.large),),
                     Text("سعد",style: TextStyle(fontFamily: FontFamilyHelper.arabic_cairo,fontWeight: FontSize.large)),
                     const Text("===================medium======================"),
                     Text("ahmed",style: TextStyle(fontFamily: FontFamilyHelper.english_poppins,fontWeight: FontSize.medium),),
                     Text("احمد",style: TextStyle(fontFamily: FontFamilyHelper.arabic_cairo,fontWeight: FontSize.medium)),
                     const Text("======================small==================="),
                     Text("behary",style: TextStyle(fontFamily: FontFamilyHelper.english_poppins,fontWeight: FontSize.small),),
                     Text("بحيري",style: TextStyle(fontFamily: FontFamilyHelper.arabic_cairo,fontWeight: FontSize.small)),
                     const Text("========================================="),
                   ],
                 )
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
            ),
          );
          }
          else {
            return MaterialApp(
                debugShowCheckedModeBanner: EnvVariabels.instance.debugMode,
                title: 'No_Inernet',
                home: NoNetworkScrean()
            );
          }
        },
   );
  }
}
