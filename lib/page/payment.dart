import 'package:flutter/material.dart';
import 'package:foode/page/photo.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 48,horizontal: 24),
       child: SingleChildScrollView(
         child: Column(
           children: [
             Padding (
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
                     child: Text('Payment method',style: TextStyle(fontSize: 26,fontWeight: FontWeight.w600),),
                   ),
                 ],
               ),
             ),
             Padding(
               padding: EdgeInsets.only(bottom: 35),
               child: Text('This data will be displayed in your account profile for security',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 14),),
             ),
             Padding(
               padding: EdgeInsets.only(top: 24),
               child: Container(
                 width: double.infinity,
                 height: 80,
                 child: Center(
                   child: Image.network('https://i.pcmag.com/imagery/reviews/068BjcjwBw0snwHIq0KNo5m-15..v1602794215.png'),
                 ),
                 decoration: BoxDecoration(
                   color: Colors.transparent,
                   border: Border.all(color: Colors.grey),
                   borderRadius: BorderRadius.circular(20),
                 ),
               ),
             ),
             Padding(
               padding:  EdgeInsets.symmetric(vertical: 24),
               child: Container(
                 width: double.infinity,
                 height: 80,
                 child: Center(
                   child: Image.network('https://banner2.cleanpng.com/20200916/vr/transparent-payments-logos-icon-visa-pay-logo-icon-visa-icon-5f62c6e45beb39.7676388716003089643765.jpg',),
                 ),
                 decoration: BoxDecoration(
                   color: Colors.transparent,
                   border: Border.all(color: Colors.grey),
                   borderRadius: BorderRadius.circular(20),
                 ),
               ),
             ),
             Container(
               width: double.infinity,
               height: 80,
               child: Center(
                 child: Image.network('https://upload.wikimedia.org/wikipedia/commons/thumb/b/b7/MasterCard_Logo.svg/2560px-MasterCard_Logo.svg.png'),
               ),
               decoration: BoxDecoration(
                 color: Colors.transparent,
                 border: Border.all(color: Colors.grey),
                 borderRadius: BorderRadius.circular(20),
               ),
             ),
             Padding(
               padding:  EdgeInsets.only(top: 250),
               child: Container(
                 width: double.infinity,
                 height: 48,
                 child: ElevatedButton(
                   style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.pink,),
                       shape:MaterialStateProperty.all(
                           RoundedRectangleBorder(
                             borderRadius: BorderRadius.circular(32),
                           )
                       )
                   ),
                   onPressed: (){
                     Navigator.of(context).push(MaterialPageRoute(builder: (context){
                       return Photo();
                     }));
                   },
                   child: Text("Next",style: TextStyle(color: Colors.white,fontSize: 18),),
                 ),
               ),
             ),
             SizedBox(
               height: 50,
             )
           ],
         ),
       ),
      ),
    );
  }
}
