// ignore_for_file: must_be_immutable


import 'package:content_writer/src/core/utils/app_strings.dart';
import 'package:content_writer/src/core/utils/assets_manager.dart';
import 'package:content_writer/src/core/utils/widget/primaryButton.dart';
import 'package:content_writer/src/features/takeATest/presentation/screens/take_a_test.dart';
import 'package:flutter/material.dart';

class SubmitToTakeTestScreen extends StatefulWidget {
  String phoneNumber;
   SubmitToTakeTestScreen({Key? key , required this.phoneNumber}) : super(key: key);

  @override
  State<SubmitToTakeTestScreen> createState() => _SubmitToTakeTestScreen();
}

class _SubmitToTakeTestScreen extends State<SubmitToTakeTestScreen> {

 @override
  void initState() {
    super.initState();
    /*Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) =>  TakeATest(), //phoneNumber: widget.phoneNumber
        ),
      );
    });*/
  }

  @override
  Widget build(BuildContext context) {
    

    return _takeTest(context);  }
}

Widget _takeTest(BuildContext context){
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
                child: Column(
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
                ],
              )
            ),
          ),
        );
}