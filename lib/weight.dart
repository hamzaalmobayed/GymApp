import 'package:first_project/activity.dart';
import 'package:first_project/gender.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'calculatorButton.dart';
import 'goal.dart';
import 'home.dart';

class Weight extends StatefulWidget {
  const Weight({Key? key}) : super(key: key);

  @override
  _WeightState createState() => _WeightState();
}

class _WeightState extends State<Weight> {
  TextEditingController contAge=TextEditingController();
  TextEditingController contWeight=TextEditingController();
  TextEditingController contheight=TextEditingController();
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
                Text("weight Calculator",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30.sp,
                      color: bordercolor,
                    )),
                SizedBox(height: 30.h,),
                Gender(),SizedBox(height: 30.h,),
                CalculatorButton("weight in kg",contWeight),SizedBox(height: 30.h,),
                CalculatorButton("height in cm",contheight),SizedBox(height: 30.h,),
                CalculatorButton("age",contAge),SizedBox(height: 30.h,),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if(gender=="Female"){
                            result=double.parse(contheight.text)-110;
                            gender="Male";
                          }else{
                            result=double.parse(contheight.text)-100;
                          }
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
                Text("you have suitable weight : ${contWeight.text==result.toString()?"Yes":"No"}",style: TextStyle(color:white,fontSize: 20.sp,),),
                SizedBox(height: 30.h,),
                Text("You suitable weight is ${result.round()} ",style: TextStyle(color:white,fontSize: 20.sp,),),
                SizedBox(height: 30.h,),
              ],
            )],
          ),
        ),

      ),
    );
  }
}
