
import 'package:content_writer/src/core/utils/app_colors.dart';
import 'package:content_writer/src/core/utils/app_strings.dart';
import 'package:content_writer/src/core/utils/hex_color.dart';
import 'package:content_writer/src/core/utils/widget/primaryButton.dart';
import 'package:content_writer/src/features/Login/presentation/screens/loginScreen.dart';
import 'package:content_writer/src/features/setupProfile/presentation/screens/setupPofile.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

//import '../../../../core/utils/widget/customInputPassword.dart';
import '../../../../core/utils/widget/customInputPassword2.dart';
import '../../../../core/utils/widget/customInputText.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

  List<String> options = ["I Agree to Term & Condition and Privacy Policy",""];

class _RegisterScreenState extends State<RegisterScreen> {
  String currentOption = options[0];

  final TextEditingController _nameTextEditingController =
      TextEditingController();
  final TextEditingController _emailTextEditingController =
      TextEditingController();
  final TextEditingController _passwordTextEditingController =
      TextEditingController();
  final TextEditingController _confirmPasswordTextEditingController =
      TextEditingController();
  //every controller must be disposed (deleted from memory for avoiding memory problems)
  @override
  void dispose() {
    _nameTextEditingController.dispose();
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    _confirmPasswordTextEditingController.dispose();
    super.dispose();
  }




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: _registerScreen(context)
      ),
    );
  }

  Widget _registerScreen(BuildContext context){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primary
        ),
        child: Padding(
          padding: const EdgeInsets.only(left:20.0,right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: width,
                //height: height*(365/844),
                //height: height*(382/878),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(//Sign Up 
                      //color: Colors.blue,
                        width: width*(138/390),
                        //height: height*(56/844),
                      child: Text("Sign up",
                        style: TextStyle(
                          //height: 2,
                          color: HexColor("#FFFFFF"),
                          fontSize: 36.2257,
                          fontFamily: AppStrings.fontFamily2,
                          fontWeight: FontWeight.w600,
                          fontStyle: FontStyle.normal
                          ),
                        ),
                    ),
                    Container(//please fill
                      //color: Colors.blue,
                        width: width*(267.07/390),
                        //height: height*(36/844),
                      child: Padding(
                        padding: const EdgeInsets.only(top:8.0,right: 75),
                        child: Text("Please fill all the details to start creating content ",
                          style: TextStyle(
                            color: HexColor("#999999"),
                            fontSize: 12.8,
                            fontFamily: AppStrings.fontFamily2,
                            fontWeight: FontWeight.w400,
                            fontStyle: FontStyle.normal
                            ),
                          ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: width,
                //height: height*(462/878),
//                height: height*(496.81/878),
/*                decoration: BoxDecoration(
                  color: Colors.blue
                ),
*/
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //User name
                    CustomInputTextField(
                      controller: _nameTextEditingController,
                      hintText: "UserName",
                      secure: false,
                      icon: Icons.person,
                      fillColor: AppColors.inputColor,
                      top: 10.0,
                    ),
                    //Email
                    CustomInputTextField(
                      controller: _emailTextEditingController,
                      hintText: "E-mail",
                      secure: false,
                      icon: Icons.email_outlined,
                      fillColor: AppColors.inputColor,
                      top: 10.0,
                    ),
                    //pasword
                    CustomInputPassword2Field(
                      controller: _passwordTextEditingController,
                      labelText: "Create Password",
                      hintText: "Create Password",
                      secure: false,
                      //icon: Icons.email_outlined,
                      fillColor: AppColors.inputColor,
                    ),
                    //confirm password
                    CustomInputPassword2Field(
                      controller: _confirmPasswordTextEditingController,
                      labelText: "Comfirm Password",
                      hintText: "Comfirm Password",
                      secure: false,
                      //icon: Icons.email_outlined,
                      fillColor: AppColors.inputColor,
                    ),
                    

                    Padding(
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
                            value: options[0],
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
                            value: options[1],
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

                    Center(//Primary Sign Up Button
                      child: Padding(
                        padding: const EdgeInsets.only(top : 10.0),
                        child: PrimaryButton(
                          width: (345.79/390)*width,
                          height: (60/844)*height,
                          //height: (48),
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
                            "Sign Up",
                            style: TextStyle(
                              color: Colors.white,
                              //fontWeight: FontWeight.bold,
                              fontSize: 12,
                              fontFamily: AppStrings.fontFamily2,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          onPressed: () => {
                            // call api function to be procced
                            Navigator.push(context, MaterialPageRoute(builder: ((context) => SetupProfile())))
                          },
                        ),
                      ),
                    ),


                    Container(
                      height: height*0.05,
                      child: Align(//Already have an account ==> log in
                        child: RichText(
                          text: TextSpan(
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                            ),
                            children: <TextSpan>[
                              TextSpan(//Already have an account
                                text: "Already have an account?  ",
                                style: TextStyle(
                                  color: HexColor("#AAAAAA"),
                                  fontSize: 12,
                                  fontFamily: AppStrings.fontFamily3,
                                  fontWeight: FontWeight.w400,
                                  fontStyle: FontStyle.normal
                                ),
                              ),
                              TextSpan(//Log in
                                text: "Login",
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
                                  Navigator.push(context,MaterialPageRoute(builder: (context) => ContentWriterLoginScreen()));
                                }
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
