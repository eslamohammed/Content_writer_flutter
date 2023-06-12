// ignore_for_file: must_be_immutable


import 'dart:async';

import 'package:content_writer/src/core/utils/app_strings.dart';
import 'package:content_writer/src/core/utils/assets_manager.dart';
import 'package:content_writer/src/features/Login/presentation/screens/loginScreen.dart';
import 'package:flutter/material.dart';

class SubmittedScreen extends StatefulWidget {
  
   SubmittedScreen({Key? key }) : super(key: key);

  @override
  State<SubmittedScreen> createState() => _SubmittedScreenState();
}

class _SubmittedScreenState extends State<SubmittedScreen> {

 @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) =>  ContentWriterLoginScreen(), //phoneNumber: widget.phoneNumber
        ),
      );
    });
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
                    
                    SizedBox(height: (10/844)*height ,width: width,),
                    
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
                ],
              )
            ),
          ),
        );
}