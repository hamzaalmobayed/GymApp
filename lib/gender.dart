import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'home.dart';
class Gender extends StatefulWidget {
  const Gender({Key? key}) : super(key: key);

  @override
  _GenderState createState() => _GenderState();
}
String gender="Male";
class _GenderState extends State<Gender> {
  bool ispress1=true;
  bool ispress2=false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: ElevatedButton(
              onPressed: () {
                setState(() {
                  ispress1=true;
                  ispress2=false;
                  gender="Male";
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text("Male",style: TextStyle(color:white,fontSize: 20.sp,),),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(ispress1?bordercolor:backgroundcolor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
                          side: BorderSide(color:bordercolor,width: 2.w)
                      )
                  )
              )
          ),
        ),
        Expanded(
          flex: 1,
          child: ElevatedButton(
              onPressed: () {
                setState(() {
                  ispress1=false;
                  ispress2=true;
                  gender="Female";
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text("Female",style: TextStyle(color:white,fontSize: 20.sp,),),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(ispress2?bordercolor:backgroundcolor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(topRight: Radius.circular(10),bottomRight: Radius.circular(10)),
                          side: BorderSide(color:bordercolor,width: 2.w)
                      )
                  )
              )
          ),
        )
      ],
    );
  }
}
