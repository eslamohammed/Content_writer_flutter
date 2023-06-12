import 'package:content_writer/src/core/utils/app_colors.dart';
import 'package:content_writer/src/core/utils/app_strings.dart';
import 'package:content_writer/src/core/utils/hex_color.dart';
import 'package:content_writer/src/core/utils/widget/primaryButton.dart';
import 'package:content_writer/src/core/utils/widget/profile_setup_input_field.dart';
import 'package:content_writer/src/features/Login/presentation/screens/loginScreen.dart';
import 'package:content_writer/src/features/submitScreen/presentation/screens/submit_to_take_test_screen.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/widget/customInputText.dart';
import '../../../../core/utils/widget/customInputTextNoIcon.dart';

class SetupProfile extends StatefulWidget {
  const SetupProfile({super.key});

  @override
  State<SetupProfile> createState() => _SetupProfileState();
}

class _SetupProfileState extends State<SetupProfile> {
  final TextEditingController _occuptionTextEditingController = TextEditingController();
  final TextEditingController _experianceTextEditingController = TextEditingController();
  final TextEditingController _locationTextEditingController = TextEditingController();
  final TextEditingController _typeOfWriterTextEditingController = TextEditingController();
  final TextEditingController _expainTextEditingController = TextEditingController();
  final TextEditingController _skillsTextEditingController = TextEditingController();
  final TextEditingController _portfolioTextEditingController = TextEditingController();
  final TextEditingController _feedbackTextEditingController = TextEditingController();
  final TextEditingController _spwcTextEditingController = TextEditingController();
  
  @override
  void dispose() {
    _occuptionTextEditingController.dispose();
    _experianceTextEditingController.dispose();
    _locationTextEditingController.dispose();
    _typeOfWriterTextEditingController.dispose();
    _expainTextEditingController.dispose();
    _skillsTextEditingController.dispose();
    _portfolioTextEditingController.dispose();
    _feedbackTextEditingController.dispose();
    _spwcTextEditingController.dispose();
    //_passwordTextEditingController.dispose();
    //_confirmPasswordTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(backgroundColor: Colors.white, body: _setupProfileScreen(context)),
    );
  }

  
  Widget _setupProfileScreen(BuildContext context){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SingleChildScrollView(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primary
        ),
        child: Padding(
          padding: const EdgeInsets.only(left:20.0,right: 20),
          child: Padding(
            padding: const EdgeInsets.all(22.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: width,
                  child: Padding(
                    padding: const EdgeInsets.only(left:12.0 , right: 12.0 , top: 23),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(//Setup profile 
                            width: width*(233/390),
                            //height: height*(56/844),
                          child: Text("Setup profile",
                            style: TextStyle(
                              color: HexColor("#FFFFFF"),
                              fontSize: 36.2257,
                              fontFamily: AppStrings.fontFamily2,
                              fontWeight: FontWeight.w600,
                              fontStyle: FontStyle.normal
                              ),
                            ),
                        ),
                        Container(//Just a small info to verify your, Please fill all the required fields.
                          //color: Colors.blue,
                            width: width*(267.07/390),
                            //height: height*(36/844),
                          child: Padding(
                            padding: const EdgeInsets.only(top:8.0,right: 75),
                            child: Text("Just a small info to verify your, Please fill all the required fields.",
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
                ),
                Container(
                  width: width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          
                        Container(//Enter your occuption
                          width: (190/390)*width,
                          child: Padding(
                            padding: const EdgeInsets.only(right:8.0),
                            child: CustomInputTextField(
                              controller: _occuptionTextEditingController,
                              hintText: "Enter your occuption",
                              secure: false,
                            //  icon: Icons.person,
                              fillColor: AppColors.inputColor,
                            ),
                          ),
                        ),
                        
                        Container(//Experiance
                          width: (133/390)*width,
                          child: CustomInputTextField(
                              controller: _experianceTextEditingController,
                              hintText: "Experiance",
                              secure: false,
                              //icon: Icons.person,
                              fillColor: AppColors.inputColor,
                            ),
                          ),
                        ],
                      ),
    
                      //enter your location
                      CustomInputTextField(
                        controller: _locationTextEditingController,
                        hintText: "Enter your location",
                        secure: false,
                        //icon: Icons.person,
                        fillColor: AppColors.inputColor,
                      ),

                      //Type of writer
                      CustomInputTextField(//Please explain ( if you selected other )
                        controller: _typeOfWriterTextEditingController,
                        hintText: "Type of writer",
                        secure: false,
                        //icon: Icons.email_outlined,
                        fillColor: AppColors.inputColor,
                      ),
                
                      //Please explain ( if you selected other )
                      CustomInputTextFieldWithHeight(//Please explain ( if you selected other )
                        controller: _expainTextEditingController,
                        hintText: "Please explain ( if you selected other )",
                        secure: false,
                        fillColor: AppColors.inputColor,
                        height: (96/844)*height,                        
                      ),
    
                      //Add your skills
                      CustomInputTextField(
                        controller: _skillsTextEditingController,
                        hintText: "Add your skills",
                        secure: false,
                        //icon: Icons.person,
                        fillColor: AppColors.inputColor,
                      ),
    
                      SizedBox(//use space or comma to add more skills"
                        height: (12/844)*height,
                        child: Padding(
                          padding: const EdgeInsets.only(left:25.0,top: 4.6),
                          child: Text("use space or comma to add more skills",
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
    
                      //Portfolio link
                      CustomInputTextField(
                        controller: _portfolioTextEditingController,
                        hintText: "Portfolio link",
                        secure: false,
                        //icon: Icons.person,
                        fillColor: AppColors.inputColor,
                      ),
    
                      //Share Feedback ( optional )
                      CustomInputTextField(//Portfolio link
                        controller: _feedbackTextEditingController,
                        hintText: "Share Feedback ( optional )",
                        secure: false,
                        //icon: Icons.person,
                        fillColor: AppColors.inputColor,
                      ),
    
                      SizedBox(//use space or comma to add more feedback"
                        height: (12/844)*height,
                        child: Padding(
                          padding: const EdgeInsets.only(left:25.0,top: 4.6),
                          child: Text("use space or comma to add more feedback",
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
    
                      //Set per word cost
                      CustomInputTextField(//Share Feedback ( optional )
                        controller: _spwcTextEditingController,
                        hintText: "Set per word cost",
                        secure: false,
                        //icon: Icons.person,
                        fillColor: AppColors.inputColor,
                      ),
    
                      // UPLOAD IMAGE
                      SizedBox(height: (10/844)*height ,width: width,),
                      
                      Center(child: ProfileSetupImagePicker()),
                      
                      SizedBox(height: (10/844)*height ,width: width,),

                          
                      Center(//Upload size must be less than 10MB
                        child: SizedBox(                          
                          height: (13/844)*height,
                          width: (152/390)*width,
                          child: Text("Upload size must be less than 10MB",
                            style: TextStyle(
                              color: HexColor("#666666"),
                              fontSize: 12.8,
                              fontFamily: AppStrings.fontFamily2,
                              fontWeight: FontWeight.w400,
                              fontStyle: FontStyle.normal
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: (10/844)*height ,width: width,),

                      Center(//Primary Sign Up Button
                        child: Padding(
                          padding: const EdgeInsets.only(top : 10.0),
                          child: PrimaryButton(
                            width: (345.79/390)*width,
                            height: (48/844)*height,
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
                              "Verify & Continue",
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
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> SubmitToTakeTestScreen(phoneNumber: "phoneNumber")))
                            },
                          ),
                        ),
                      ),
          
          
                      Container(//Already have an account ==> log in
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
                                    //Navigator.push(context,MaterialPageRoute(builder: (context) => SubmitedScreen()));
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
      ),
    );
  }


}