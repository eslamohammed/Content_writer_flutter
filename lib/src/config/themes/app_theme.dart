
import 'package:content_writer/src/core/utils/app_colors.dart';
import 'package:content_writer/src/core/utils/app_strings.dart';
import 'package:flutter/material.dart';

ThemeData appTheame(){
  return ThemeData(
    primaryColor: AppColors.primaryUp,
    hintColor: AppColors.hint,
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    fontFamily: AppStrings.fontFamily,



    textTheme: TextTheme(
      button: TextStyle(
        fontSize: 16,
        color: Colors.black,
        fontWeight: FontWeight.w500
      )
    )
  );
}

final ButtonStyle buttonPrimary = ElevatedButton.styleFrom(
  
  minimumSize: Size(345.79,48),
  primary: Colors.red,
  elevation: 0,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(5))
  ),

);