import 'package:content_writer/src/core/utils/app_strings.dart';
import 'package:content_writer/src/core/utils/hex_color.dart';
import 'package:flutter/material.dart';

class CustomInputPassword2Field extends StatefulWidget {
  const CustomInputPassword2Field({
    Key? key,
    required this.hintText,
    required this.secure,
    required this.controller,
    this.labelText,
//    this.icon,
    this.fillColor,
  }) : super(key: key);
  final String hintText;
  final String? labelText;
  final bool secure;
  final TextEditingController controller;
  final IconData icon = Icons.lock;
  final Color? fillColor;
          
  final x = AutofillHints.name;

    @override
  State<CustomInputPassword2Field> createState() => _CustomInputPassword2FieldState();
}

class _CustomInputPassword2FieldState extends State<CustomInputPassword2Field> {
  bool isHidden = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextFormField(
         autofillHints: [
          AutofillHints.password,
        ],
        keyboardType: TextInputType.visiblePassword,
        validator: (pass) => pass != null && pass.length < 5 
        ? "Enter min 5 characters" 
        : null,
        style: TextStyle(
          color: HexColor("#FFFFFF"),
          fontFamily: AppStrings.fontFamily2,
          fontSize: 12.08,
          fontWeight: FontWeight.w400,
          fontStyle: FontStyle.normal,
        ),
        /*autofillHints: [
          AutofillHints.name,
          AutofillHints.email,
          AutofillHints.telephoneNumber,
        //  AutofillHints.password,
        ],*/
        //keyboardType: TextInputType.multiline,
        //minLines: 1,
        //maxLines: 5,
        controller: widget.controller,
        obscureText: isHidden,
        decoration: InputDecoration(
          fillColor: widget.fillColor == null ? Colors.white : widget.fillColor,
          filled: true,
          /*labelText: widget.labelText,
          labelStyle: TextStyle(
            color: HexColor("#FFFFFF"),
            fontFamily: AppStrings.fontFamily2,
            fontSize: 12.08,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
            ),*/
          hintText: widget.hintText,
          hintStyle: TextStyle(
            color: HexColor("#FFFFFF"),
            fontFamily: AppStrings.fontFamily2,
            fontSize: 12.08,
            fontWeight: FontWeight.w400,
            fontStyle: FontStyle.normal,
          ),
          //icon: new Icon(icon)
          suffixIcon: IconButton(
            icon: isHidden ? Icon(Icons.visibility_off) : Icon(Icons.visibility),
            onPressed: togglePasswordVisibility,
          ),
          prefixIcon: Icon(
            Icons.lock,
            color: HexColor("#999999"),
            //size: 50,
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
    );
  }

    void togglePasswordVisibility() => setState(
      () => isHidden = !isHidden,
      //widget.icon = Icons.lock_open
      );

}