import 'package:content_writer/src/core/utils/app_colors.dart';
import 'package:content_writer/src/core/utils/app_strings.dart';
import 'package:content_writer/src/core/utils/hex_color.dart';
import 'package:flutter/material.dart';

class CustomInputTextFieldWithHeight extends StatelessWidget {
  const CustomInputTextFieldWithHeight({
    Key? key,
    required this.hintText,
    required this.secure,
    required this.controller,
    this.labelText,
    this.icon,
    this.fillColor,
    this.top,
    this.height,
  }) : super(key: key);
  final double? top;
  final String hintText;
  final String? labelText;
  final bool secure;
  final TextEditingController controller;
  final IconData? icon;
  final Color? fillColor;
  final double? height;
  final x = AutofillHints.name;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: top !=null ? top! : 10.0),
      child: Container(
        height: height !=null ? height! : MediaQuery.of(context).size.height*0.1,
        decoration: BoxDecoration(
                 color: AppColors.inputColor,
                 border:  Border.all(color: Colors.black ,width:1 ,style: BorderStyle.solid ),
                borderRadius: BorderRadius.circular(10.0),
              ),
        child: TextFormField(
          style: TextStyle(
            color: HexColor("#FFFFFF"),
            fontFamily: AppStrings.fontFamily2,
            fontSize: 12.08,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          keyboardType: TextInputType.multiline,
          minLines: 1,
          maxLines: 5,
          controller: controller,
          obscureText: secure,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 13 , horizontal: 26),
            /*
            EdgeInsets.only(
              top: contentPaddingtop !=null ? contentPaddingtop! : 50,
              left: contentPaddingleft != null ? contentPaddingleft! : 50,
              bottom: contentPaddingbottom !=null ? contentPaddingbottom! : 50,
              right: contentPaddingright != null ? contentPaddingright! : 50
              ),
            */
            fillColor: fillColor == null ? Colors.white : fillColor,
            filled: true,
            labelText: labelText,
            labelStyle: TextStyle(
              color: HexColor("#FFFFFF"),
              fontFamily: AppStrings.fontFamily2,
              fontSize: 12.08,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
              ),
            hintText: hintText,
            hintStyle: TextStyle(
              color: HexColor("#FFFFFF"),
              fontFamily: AppStrings.fontFamily2,
              fontSize: 12.08,
              fontWeight: FontWeight.w400,
              fontStyle: FontStyle.normal,
            ),
            /*prefix: Icon(
              icon,
              color: HexColor("#999999"),
              //size: 50,
            )*/
        
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.62516),
              borderSide: BorderSide(
                  width: 0, 
                  style: BorderStyle.none,
              ),
            ),
          ),
        ),
      ),
    );
  }
}