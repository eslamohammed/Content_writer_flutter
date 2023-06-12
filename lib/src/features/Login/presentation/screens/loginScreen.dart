// ignore_for_file: unused_import

import 'package:content_writer/src/core/utils/app_colors.dart';
import 'package:content_writer/src/core/utils/app_strings.dart';
import 'package:content_writer/src/core/utils/assets_manager.dart';
import 'package:content_writer/src/core/utils/hex_color.dart';
import 'package:content_writer/src/core/utils/widget/customInputText.dart';
import 'package:content_writer/src/core/utils/widget/primaryButton.dart';
import 'package:content_writer/src/features/Login/presentation/screens/auth_input_field.dart';
import 'package:content_writer/src/features/register/presentation/screens/registerScreen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ContentWriterLoginScreen extends StatefulWidget{
  const ContentWriterLoginScreen({Key? key}) :super(key: key);

  @override
  State<ContentWriterLoginScreen> createState() =>_ContentWriterLoginScreen();

}
    List<String> options = ["I Agree to Term & Condition and Privacy Policy",""];
class _ContentWriterLoginScreen extends State<ContentWriterLoginScreen>{

    String currentOption = options[0];  

    final formKey = GlobalKey<FormState>();
    final TextEditingController _phoneTextEditingController = TextEditingController();

  @override
  void dispose() {
    _phoneTextEditingController.dispose();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _loginScreen(context),
      
    );
  }


  Widget _loginScreen(BuildContext context){
    
    //double baseWidth = 380;
    //double fem = MediaQuery.of(context).size.width / baseWidth;
    //double ffem = fem * 0.97;
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(ImgAssets.Background),
              fit: BoxFit.cover
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: width,
                //height: height*(365/844),
                //height: height*(382/878),
                //color: Colors.yellow,
                height: (300/878)*height,
                child: Center(
                  child: Container(
                    width: (316.46/390)*width,
                    height: (267.68/844)*height,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(ImgAssets.Group),
                      ),
                    ),
                  ),
                ),
              ),
    
    
              Container(
                width: width,
                height: (544/878)*height,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                        colors: <Color>[
                          AppColors.secondary,
                          AppColors.primary
                        ]
                      ),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(30),
                      topLeft: Radius.circular(30)
                    ),
                  ),
                child: Padding(
                  padding: const EdgeInsets.only(right:30.0 , left: 30.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                
                    children: [
                      Padding(//welcome
                        padding: const EdgeInsets.only(top:30.0),
                        child: Container(
                          //color: Colors.blue,
                          width: width*(175/390),
                          height: height*(54/844),
                          child: Center(
                            child: Text("Welcome",
                            style: TextStyle(
                              //height: 2,
                              color: Colors.white,
                              fontSize: 36.2257,
                              fontFamily: AppStrings.fontFamily2,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(//Let’s get a best content
                        width: (200/390)*width,
                        height: (40/844)*height,
                        child: Center(
                          child: Text("\t\tLet’s get a best content\n\t\t\t\t\t\t\t\t\twriters for you.",
                          style: TextStyle(
                            //height: 3/18,
                            color: HexColor("#999999"),
                            fontSize: 12,
                            fontFamily: AppStrings.fontFamily2,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal
                            ),
                          ),
                        ),
                      ),
                /*                  Container(//writers for you
                        //color: Colors.blue,
                        width: width*(175/390),
                        height: height*(36/844),
                        child: Center(
                          child: Text("writers for you.",
                          style: TextStyle(
                            //height: 3/18,
                            color: HexColor("#999999"),
                            fontSize: 12,
                            fontFamily: AppStrings.fontFamily2,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal
                            ),
                          ),
                        ),
                      ),
                */
                /*                        const Align(
                              alignment: Alignment.topLeft,
                              child: Text('Mobile Number',
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                            const SizedBox(height: 10),
                */
                            /*Form(
                                key: formKey,
                                child: const PhoneNumberVerification()
                            ),*/
                      /*Container(
                        child: PhoneNumberVerification(),
                      ),*/
                      
                
                        //User name
                        CustomInputTextField(
                          controller: _phoneTextEditingController,
                          hintText: "333 333 333",
                          secure: false,
                          icon: Icons.person,
                          fillColor: AppColors.inputColor,
                          top:10.0
                        ),
                        
      
                      Padding(//term & condition and privcy policy
                          padding: const EdgeInsets.only(top:20.0,bottom: 10.0),
                          child: Column(
                            children: [
                              RadioListTile(
                                title: Row(
                                  children: [
                                    Text("I Agree to ",
                                    style: TextStyle(
                                      //height: 3/18,
                                      color: HexColor("#B7B7B7"),
                                      fontSize: 12,
                                      fontFamily: AppStrings.fontFamily2,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal
                                      ),
                                    ),Text("Term & Condition",
                                    style: TextStyle(
                                      //height: 3/18,
                                      color: HexColor("#FFFFFF"),
                                      fontSize: 12,
                                      fontFamily: AppStrings.fontFamily2,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal
                                      ),
                                    ),Text(" and ",
                                    style: TextStyle(
                                      //height: 3/18,
                                      color: HexColor("#B7B7B7"),
                                      fontSize: 12,
                                      fontFamily: AppStrings.fontFamily2,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal
                                      ),
                                    ),
                                    Text("Privacy Policy.",
                                    style: TextStyle(
                                      //height: 3/18,
                                      color: HexColor("#FFFFFF"),
                                      fontSize: 12,
                                      fontFamily: AppStrings.fontFamily2,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal
                                      ),
                                    ),
                                  ],
                                ),
                                value: options[1],
                                groupValue: currentOption,
                                onChanged: ((value) => {
                                  setState(() {
                                    currentOption = value.toString();
                                    },)
                                  }
                                ),
                              ),
                              RadioListTile(
                                title: Row(
                                  children: [
                                    Text("Remember me",
                                    style: TextStyle(
                                      //height: 3/18,
                                      color: HexColor("#B7B7B7"),
                                      fontSize: 12,
                                      fontFamily: AppStrings.fontFamily2,
                                      fontWeight: FontWeight.w400,
                                      fontStyle: FontStyle.normal
                                      ),
                                    ),
                                  ],
                                ),
                                value: options[0],
                                groupValue: currentOption,
                                onChanged: ((value) => {
                                  setState(() {
                                    currentOption = value.toString();
                                    },)
                                  }
                                ),
                              ),
                            ],
                          ),
                        ),
                      
                      
                      
                      Center(
                          child: PrimaryButton(
                            width: (300/390)*width,
                            height: (60/844)*height,
                            gradient: LinearGradient(
                              begin: Alignment.centerRight,
                              end: Alignment.centerLeft,
                              colors: <Color>[
                                AppColors.primaryButton,
                                AppColors.secondaryButton,
                                ]
                              ),
                            borderRadius: BorderRadius.circular(5),
                            child:Text(
                              "Log In",
                              style: TextStyle(
                                color: Colors.white,
                                //fontWeight: FontWeight.bold,
                                fontSize: 14,
                                fontFamily: AppStrings.fontFamily2,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            onPressed: () => {
                              // call api function to be procced
                            },
                          ),
                        ),
                      Container(
                        height: height*0.05,
                        child: Align(//Don't have an account ==> Sign Up
                          alignment: Alignment.center,
                          child: RichText(
                            text: TextSpan(
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontFamily: AppStrings.fontFamily3
                              ),
                              children: <TextSpan>[
                                TextSpan(//You don’t have an account?
                                  text: "You don’t have an account ?  ",
                                  style: TextStyle(
                                    color: HexColor("#AAAAAA"),
                                    fontSize: 12,
                                    fontFamily: AppStrings.fontFamily3,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal
                                  ),
                                ),
                                TextSpan(//create account
                                  text: "Create Account",
                                  style: TextStyle(
                                    color: AppColors.hint,
                                    fontSize: 12,
                                    fontFamily: AppStrings.fontFamily3,
                                    fontWeight: FontWeight.w400,
                                    fontStyle: FontStyle.normal,
                                    decoration: TextDecoration.underline,
                                  ),
                                  recognizer: TapGestureRecognizer()
                                    ..onTap = () {
                                    //Navigator.pushNamed(context, "/register");
                                    Navigator.push(context,MaterialPageRoute(builder: (context) => RegisterScreen()));
                                  }
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                
                    ]
                  ),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}