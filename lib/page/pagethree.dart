import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Page3 extends StatefulWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  State<Page3> createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  bool IconTrue=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.9),
      body:SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.asset('assets/image/page3.png'),
              Text('Sign in to your account',style: TextStyle(color: Colors.black,fontSize: 23,fontWeight: FontWeight.w600),),
              Padding(
                padding: EdgeInsets.only(right:325.w,bottom: 3,top: 5),
                child: Text('Email',style: TextStyle(fontWeight: FontWeight.w600),),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 3),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Email or Phone Number",
                    hintStyle: TextStyle(
                      color: Color(0xffDADEE3),
                      fontWeight: FontWeight.w600
                    ),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(100).r,borderSide: BorderSide(color: Color(0xffDADEE3),width: 1)),
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100).r,borderSide: BorderSide(color: Color(0xffDADEE3),width: 1)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100).r,borderSide: BorderSide(color: Color(0xffDADEE3),width: 1)),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right:325.h,bottom: 3,top: 17),
                child: Text('Password',style: TextStyle(fontWeight: FontWeight.w600),),
              ),
              Padding(

                padding: EdgeInsets.symmetric(horizontal: 15,vertical: 3),
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    hintText: "Password",
                    hintStyle: TextStyle(
                      color: Color(0xffDADEE3),
                      fontWeight: FontWeight.w600
                    ),
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(100).r,borderSide: BorderSide(color: Color(0xffDADEE3),width: 1)),
                    enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100).r,borderSide: BorderSide(color: Color(0xffDADEE3),width: 1)),
                    focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100).r,borderSide: BorderSide(color: Color(0xffDADEE3),width: 1)),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(left: 20,),
                child:
                Row(
                  children: [
                    IconButton(onPressed: () {
                      IconTrue=!IconTrue;
                      setState(() {});
                    }, icon:IconTrue==false?Icon(Icons.check_box_outline_blank,color: Colors.pink,):Icon(Icons.check_box,color: Colors.pink,),
                    ),
                    Text('Remember me',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,),),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 24,right: 24,top: 10,bottom: 15),
                child:Container(
                  width: double.infinity.w,
                  height: 55.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32.r),
                  ),
                  child: IconTrue==false? ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Color(0xffF43F5E).withOpacity(0.5),),
                        shape:MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.r),
                            )
                        )
                    ),
                    onPressed: (){},
                    child: Text("Sign in",style: TextStyle(color: Colors.white,fontSize: 18),),
                  ):
                  ElevatedButton(
                    style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.pink,),
                        shape:MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.r),
                            )
                        )
                    ),
                    onPressed: (){},
                    child: Text("Sign in",style: TextStyle(color: Colors.white,fontSize: 18),),
                  ),
                )
              ),
              TextButton(onPressed: (){}, child: Center(child: Text("Forgot the password?",style: TextStyle(color: Colors.red,fontWeight: FontWeight.w600,fontSize: 16),))),
              Padding(
                padding: EdgeInsets.only(top:15.h,bottom: 40.5.h),
                child: Text('or continue with',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w400),),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child: Center(
                      child: Row(
                        children: [
                          Icon(Icons.facebook,color: Colors.blue,),
                          SizedBox(width: 12,),
                          Text('Facebook'),
                        ],
                        mainAxisAlignment: MainAxisAlignment.center,
                      ),
                    ),
                  width: 178.w,
                    height: 57.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(color: Colors.grey,width: 1.r),
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:EdgeInsets.symmetric(vertical: 16),
                            child: Image.asset('assets/image/Frame.png',),
                          ),
                          SizedBox(width: 12,),
                          Text('Google'),
                        ],
                      ),
                    ),
                    width: 178.w,
                    height: 57.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12.r),
                      border: Border.all(color: Colors.grey,width: 1.r),
                      color: Colors.white,
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
