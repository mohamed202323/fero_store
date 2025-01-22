import 'package:feroo_store/core/app/languages/lang_keys.dart';
import 'package:feroo_store/core/common/widgets/text_app.dart';
import 'package:feroo_store/core/extension/context_extension.dart';
import 'package:feroo_store/core/features/auth/presentation/widgets/dark_and_lang_button.dart';
import 'package:feroo_store/core/features/auth/presentation/widgets/login/login_button.dart';
import 'package:feroo_store/core/features/auth/presentation/widgets/login/text_feild.dart';
import 'package:feroo_store/core/features/auth/presentation/widgets/title_info.dart';
import 'package:feroo_store/core/style/font/font_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LogInBody extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal:10,vertical: 10),
    child:SingleChildScrollView(
      child: Column(
        children: [
          DarkAndLangButton(),
          SizedBox(height: 50.h,),
          TitleInfo(
            title: context.translate(LangKeys.login),
            description: context.translate(LangKeys.welcome),
          ),
          SizedBox(height: 50.h,),

          TextFeild(),

          SizedBox(height: 25.h,),

          LoginButton(),

          SizedBox(height: 25.h,),

          TextApp(
              text:context.translate(LangKeys.createAccount),
              theme: context.textStyle.copyWith(
                fontSize: 16.sp,
                fontWeight: FontSize.medium,
                color: context.color.bluePinkLight
              ))




        ],
      ),
    )
      );
  }

}