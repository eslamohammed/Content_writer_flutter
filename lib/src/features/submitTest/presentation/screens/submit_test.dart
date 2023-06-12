import 'package:content_writer/src/core/utils/app_strings.dart';
import 'package:content_writer/src/core/utils/widget/profile_setup_input_field.dart';
import 'package:content_writer/src/features/submittedScreen/presentation/screens/submittedScreen.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/app_colors.dart';
import '../../../../core/utils/hex_color.dart';
import '../../../../core/utils/widget/primaryButton.dart';

class SubmitTestScreen extends StatefulWidget {
  const SubmitTestScreen({super.key});

  @override
  State<SubmitTestScreen> createState() => _SubmitTestScreenState();
}

class _SubmitTestScreenState extends State<SubmitTestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: _submitTest(context));
  }

  Widget _submitTest(BuildContext context){
    
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primary
        ),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(//Submit Your Test
                padding: const EdgeInsets.only(left: 117,right: 118),
                child: Text("Submit Your Test",
                  style: TextStyle(
                    color: HexColor("#FFFFFF"),
                    fontSize: 25,
                    fontFamily: AppStrings.fontFamily2,
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal
                    ),
                  ),
              ),

              Padding(//Test & Create a brand identity copy for a fashion brand.
                padding: EdgeInsets.only(top: 43,left: 44,right: 43),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Test",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontFamily: AppStrings.fontFamily2,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.normal
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right:12.5),
                          child: IconButton(
                            onPressed: (){
                                //action coe when button is pressed
                            }, 
                            icon: Icon(Icons.info_outline),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top:4.0,bottom: 15),
                      child: Text("Create a brand identity copy for a fashion brand. Targe audience are 18 - 32 yrs and location is based in bangalore",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 19,
                          fontFamily: AppStrings.fontFamily2,
                          fontWeight: FontWeight.w400,
                          fontStyle: FontStyle.normal
                        ),
                        maxLines: 4,
                      ),
                    ),
                 ],
                ),
              ),
              
              Container(
                width: width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                      // UPLOAD file
                      SizedBox(height: (10/844)*height ,width: width,),
                      
                      Center(
                        child: Container(
                          height: (174/844)*height,
                          child: ProfileSetupImagePicker()),
                      ),
                      
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

              
                    Center(//Submit test Button
                      child: Padding(
                        padding: const EdgeInsets.only(top : 10.0),
                        child: PrimaryButton(
                          width: (238/390)*width,
                          height: (41/844)*height,
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
                            "Submit Test",
                            style: TextStyle(
                              color: Colors.white,
                              //fontWeight: FontWeight.bold,
                              fontSize: 18,
                              fontFamily: AppStrings.fontFamily2,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          onPressed: () => {
                            // call api function to be procced
                            Navigator.push(context, MaterialPageRoute(builder: ((context) => SubmittedScreen())))
                          },
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

/*

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
                          //Navigator.push(context, MaterialPageRoute(builder: ((context) => SetupProfile())))
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ),
          


 */