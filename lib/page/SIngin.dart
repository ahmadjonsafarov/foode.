import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:foode/page/payment.dart';

class Sing extends StatefulWidget {
  const Sing({Key? key}) : super(key: key);

  @override
  State<Sing> createState() => _SingState();
}

class _SingState extends State<Sing> {
  TextEditingController startcontroller=TextEditingController();
  DateTime startTime=DateTime(2022);
  String data="";
  String value1="Man";

  var Item=[
    "Man",
    "Woman",
  ];

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(428, 926),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (BuildContext context, Widget? child) {
        return Scaffold(
          body: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 48,horizontal: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
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
                          child: Text('Fill in your bio',style: TextStyle(fontSize: 26.r,fontWeight: FontWeight.w600),),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(bottom: 35),
                    child: Text('This data will be displayed in your account profile for security',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
                  ),
                  Text('Full name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                  Padding(
                    padding: EdgeInsets.only(top: 8,bottom: 20),
                    child: SizedBox(
                      height: 48,
                      child: TextFormField(
                        style: new TextStyle(fontSize: 15,),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100).r),
                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100).r),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100).r),
                        ),
                      ),
                    ),
                  ),
                  Text('Nick name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                  Padding(
                    padding: EdgeInsets.only(bottom: 20,top: 8),
                    child: SizedBox(
                      height: 48,
                      child: TextFormField(
                        style: new TextStyle(fontSize: 15,),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100).r),
                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100).r),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100).r),
                        ),
                      ),
                    ),
                  ),
                  Text('Phone number',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                  Padding(
                    padding: EdgeInsets.only(top: 8,bottom: 20),
                    child: SizedBox(
                      height: 48,
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        style: new TextStyle(fontSize: 15,),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100).r),
                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100).r),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100).r),
                        ),
                      ),
                    ),
                  ),
                  Text('Gender',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                  Padding(
                    padding: EdgeInsets.only(top: 8,bottom: 20),
                    child: DropdownButtonFormField(
                      decoration: InputDecoration(
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(100).r),
                        enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100).r),
                        focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100).r),
                      ),
                      value: value1,
                      items: Item
                          .map((e) => DropdownMenuItem(
                        child: Text(e,style: TextStyle(),),
                        value: e,
                      )).toList(),
                      onChanged: (String? Newvalue) {
                        value1=Newvalue!;
                        setState(() { });
                      },
                    ),
                  ),
                  Text('Date of Birth',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                  Padding(
                    padding: EdgeInsets.only(top: 8,bottom: 20),
                    child: SizedBox(
                      height: 48,
                      child: TextFormField(
                        controller: startcontroller,
                        readOnly: true,
                        onTap: (){
                          showDatePicker(
                              context: context,
                              initialDate: startTime,
                              firstDate: DateTime(1950),
                              lastDate: DateTime(2022),
                          ).then((value){
                            data=value?.day.toString() ?? DateTime.now().day.toString();
                          });
                        },
                        style: new TextStyle(fontSize: 15,),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100).r),
                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100).r),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100).r),
                        ),
                      ),
                    ),
                  ),
                  Text('Address',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: SizedBox(
                      height: 48,
                      child: TextFormField(
                        style: new TextStyle(fontSize: 15,),
                        decoration: InputDecoration(
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(100).r),
                          enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100).r),
                          focusedBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(100).r),
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    height: 48,
                    child: ElevatedButton(
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.pink,),
                          shape:MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(32.r),
                              )
                          )
                      ),
                      onPressed: (){
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return Payment();
                        }));
                      },
                      child: Text("Next",style: TextStyle(color: Colors.white,fontSize: 18),),
                    ),
                  ),
                  SizedBox(
                    height: 300,
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
