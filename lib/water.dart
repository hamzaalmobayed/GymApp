import 'package:first_project/activity.dart';
import 'package:first_project/gender.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'calculatorButton.dart';
import 'goal.dart';
import 'home.dart';

class Water extends StatefulWidget {
  const Water({Key? key}) : super(key: key);

  @override
  _WaterState createState() => _WaterState();
}

class _WaterState extends State<Water> {
  TextEditingController contAge=TextEditingController();
  TextEditingController contWeight=TextEditingController();
  double result=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        color:homecolor,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: [Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 30.h,),
                Text("Water Calculator",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.sp,
                      color: bordercolor,
                    )),
                SizedBox(height: 30.sp,),
                CalculatorButton("age",contAge),SizedBox(height: 30.h,),
                CalculatorButton("weight in kg",contWeight),SizedBox(height: 30.h,),

                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          result=((double.parse(contWeight.text)*2.2*double.parse(contAge.text))/28.3)/8;
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(15),
                        child: Text("Calculate",style: TextStyle(color:white,fontSize: 20.sp,),),
                      ),
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(backgroundcolor),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(10)),
                                  side: BorderSide(color:bordercolor,width: 2.w)
                              )
                          )
                      )
                  ),
                ),SizedBox(height: 30.h,),
                Text("You need ${result.round()} cups daily",style: TextStyle(color:white,fontSize: 20,),),

              ],
            )],
          ),
        ),

      ),
    );
  }
}
