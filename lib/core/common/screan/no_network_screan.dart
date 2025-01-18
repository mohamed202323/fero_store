import 'package:feroo_store/core/style/images/app_images.dart';
import 'package:flutter/material.dart';

class NoNetworkScrean extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Container(
       constraints: const BoxConstraints.expand(),
       decoration: const BoxDecoration(
           image: DecorationImage(
             fit: BoxFit.fill,
             image: AssetImage(
                   AppImages.noNetwork,),),),

     ),
   );
  }


}