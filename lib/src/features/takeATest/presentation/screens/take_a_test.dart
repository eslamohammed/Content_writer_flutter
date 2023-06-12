import 'package:content_writer/src/core/utils/app_colors.dart';
import 'package:content_writer/src/core/utils/app_strings.dart';
import 'package:content_writer/src/core/utils/widget/primaryButton.dart';
import 'package:content_writer/src/features/submitTest/presentation/screens/submit_test.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/assets_manager.dart';
import '../../../../core/utils/hex_color.dart';

class TakeATest extends StatelessWidget {
  const TakeATest ({super.key});

  @override
  Widget build(BuildContext context) {
    return _takeATest(context);
  }


  Widget _takeATest(BuildContext context){
    
  double height = MediaQuery.of(context).size.height;
  double width = MediaQuery.of(context).size.width;

    return Scaffold(
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(ImgAssets.Background),
                  fit: BoxFit.cover
                ),
              ),
            child:Center(
              child: Container(
                height: (250/844)*height,
                width: (298/390)*width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  border:  Border.all(color: Colors.black ,width:1 ,style: BorderStyle.solid ),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 42,left: 44,right: 44),
                      child: Column(
                        //mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                "Test",
                                style: TextStyle(
                                  color: Colors.black,
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
                                color: HexColor("#000000"),
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
                                             
                    Padding(
                      padding: EdgeInsets.only(right: 30,left: 30,bottom: 20),
                      child: Center(
                        child: PrimaryButton(
                          width: (300/390)*width,
                          height: (60/844)*height,
                          gradient: LinearGradient(
                            begin: Alignment.centerRight,
                            end: Alignment.centerLeft,
                            colors:[
                              AppColors.primaryButton,
                              AppColors.secondaryButton,
                              ]
                            ),
                          borderRadius: BorderRadius.circular(5),
                          child:Text(
                            "Take A Test",
                            style: TextStyle(
                              color: Colors.white,
                              //fontWeight: FontWeight.bold,
                              fontSize: 14,
                              fontFamily: AppStrings.fontFamily2,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          onPressed: () => {
                            Navigator.push(context, MaterialPageRoute(builder:(context)=>SubmitTestScreen()))                            
                          },
                        ),
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


/*
Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 40,),
                    const FittedBox(
                      fit: BoxFit.fill,
                      child: Text('Submited',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 26,
                          fontFamily: AppStrings.fontFamily2,
                          fontWeight: FontWeight.w400
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),

                    Padding(
                      padding: const EdgeInsets.only(right: 60.0 , left: 60),
                      child: const FittedBox(
                        fit: BoxFit.fill,
                        child: Text('We have sucessfuly suybmited your profile.\nwe will get back to you soon. Till then take\na test',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 30,
                            //letterSpacing: 0.4
                          ),
                          maxLines: 3,
                        ),
                      ),
                    ),

                /*    
                    Center(//Primary Sign Up Button
                      child: Padding(
                        padding: const EdgeInsets.only(top : 63.0),
                        child: PrimaryButton(
                          width: (126.8/390)*width,
                          height: (44.17/844)*height,
                          //height: (48),
                          borderRadius: BorderRadius.circular(5),
                          child:Text(
                            "Take Test",
                            style: TextStyle(
                              color: Colors.black,
                              //fontWeight: FontWeight.bold,
                              fontSize: 13,
                              fontFamily: AppStrings.fontFamily2,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          onPressed: () => {
                            // call api function to be procced
                            Navigator.push(context, MaterialPageRoute(builder: ((context) => TakeATest())))
                          },
                        ),
                      ),
                    ),
                */
                ],
              )
            

 */