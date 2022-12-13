import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foode/page/pagethree.dart';
import 'package:google_fonts/google_fonts.dart';

class Access extends StatefulWidget {
  const Access({Key? key}) : super(key: key);

  @override
  State<Access> createState() => _AccessState();
}

class _AccessState extends State<Access> {
  bool isLoading=true;
  @override
  void initState() {
    isLoading=true;
    Future.delayed(Duration(seconds: 5),(){
      isLoading=false;
      setState(() { });
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return isLoading?
    Stack(
      children: [
        Container(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset('assets/image/page.png',fit: BoxFit.cover,)),
        Align(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/image/centerimage.png'),
              CupertinoActivityIndicator(),
            ],
          ),
        )
      ],
    ):
    ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context,child) {
        return
          Scaffold(
            body: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: double.infinity,
                  child: Image.asset('assets/image/page2image.png',fit:BoxFit.cover),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 705.h),
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(child: Text("Foode",style: GoogleFonts.breeSerif(color: Colors.white,fontSize: 33),)),
                        Text('The best food ordering and delivery app of the century',style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.w600),),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 24.r),
                          child: Container(
                            width: double.infinity.w,
                              margin: EdgeInsets.symmetric(vertical: 14),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(32),
                              ),
                              child: ElevatedButton(onPressed: (){
                                Navigator.of(context).push(MaterialPageRoute(builder: (_){
                                  return Page3();
                                }));
                              }, child: Text('Next',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600,),))),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
        );
      },
    );
  }
}
