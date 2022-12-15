import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class Photo extends StatefulWidget {
  const Photo({Key? key}) : super(key: key);

  @override
  State<Photo> createState() => _PhotoState();
}

class _PhotoState extends State<Photo> {
  final ImagePicker _picker = ImagePicker();
  String image_path='';
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(

      builder: (BuildContext context, Widget? child) {
        return Scaffold(
          backgroundColor: Colors.white.withOpacity(0.9),
          body: Padding(
            padding: EdgeInsets.symmetric(vertical: 48,horizontal: 24),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(top: 26,bottom: 30),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 36,
                        height: 36,
                        child: ElevatedButton(
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                              Color(0xffF43F5E).withOpacity(0.7),
                            ),
                          ),
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          child: Center(
                            child: Icon(
                              Icons.arrow_back_ios_new_outlined,
                              color: Color(0xffF43F5E),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 24),
                        child: Text('Upload your photo',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w600),),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 24),
                  child: Text('This data will be displayed in your account profile for security',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
                ),
                image_path.isNotEmpty? SizedBox.shrink():Column(
                  children: [
                    InkWell(
                      onTap: () async {
                        final XFile? photo = await _picker.pickImage(source: ImageSource.camera);
                        image_path=photo?.path ?? "";
                        setState(() { });
                      },
                      child: Container(
                        width: double.infinity,
                        height: 180.h,
                        decoration: BoxDecoration(
                          color: Colors.white54,
                          border: Border.all(color: Colors.black38),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 80.r,
                                height: 80.r,
                                decoration: BoxDecoration(
                                    color: Color(0xffF43F5E).withOpacity(0.1),
                                    shape: BoxShape.circle
                                ),
                                child: Icon(Icons.camera_alt,color: Colors.pinkAccent,size: 32.r,),
                              ),
                              10.verticalSpace,
                              Text('Take photo',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                            ],
                          ),
                        ),
                      ),
                    ),
                    24.verticalSpace,
                    InkWell(
                      onTap: () async {
                        final XFile? photo = await _picker.pickImage(source: ImageSource.gallery);
                        image_path=photo?.path ?? "";
                        setState(() { });
                      },
                      child: Container(
                        width: double.infinity,
                        height: 180.h,
                        decoration: BoxDecoration(
                          color: Colors.white54,
                          border: Border.all(color: Colors.black38),
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                width: 80.r,
                                height: 80.r,
                                decoration: BoxDecoration(
                                    color: Color(0xffF43F5E).withOpacity(0.1),
                                    shape: BoxShape.circle
                                ),
                                child: Icon(Icons.folder,color: Colors.pinkAccent,size: 32.r,),
                              ),
                              10.verticalSpace,
                              Text('From gallery',style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w600),),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                24.verticalSpace,
                image_path.isNotEmpty
                    ?Container(
                  width: 200.w,
                  height: 200.h,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image:FileImage(File(image_path,),),fit: BoxFit.cover
                    )
                  ),
                ):
                SizedBox.shrink(),
                Spacer(),
                Container(
                  width: double.infinity,
                  height: 32.h,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.bottomRight,
                      end: Alignment.topLeft,
                      colors: [
                        Color(0xffFF1843),
                        Color(0xffFF7E95),
                      ]
                    ),
                    borderRadius: BorderRadius.circular(32.r),
                  ),
                  child: Center(
                    child: Text("Next",style: TextStyle(color:Colors.white,fontWeight: FontWeight.w600,fontSize: 18 ),),
                  ),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
