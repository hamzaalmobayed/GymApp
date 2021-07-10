import 'package:first_project/activity.dart';
import 'package:first_project/gender.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'calculatorButton.dart';
import 'goal.dart';
import 'home.dart';

class Calories extends StatefulWidget {
  const Calories({Key? key}) : super(key: key);

  @override
  _CaloriesState createState() => _CaloriesState();
}

class _CaloriesState extends State<Calories> {
  TextEditingController contAge=TextEditingController();
  TextEditingController contWeight=TextEditingController();
  TextEditingController contheight=TextEditingController();
  double result=0;
  double aim=0;
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
              Text("Calories Calculator",
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
              Text("Activity",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                    color: bordercolor,
                  )),
              SizedBox(height: 30.h,),
              Activity(),SizedBox(height: 30.h,),
              Text("Goal",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.sp,
                    color: bordercolor,
                  )),
              SizedBox(height: 30.h,),
              Goal(),SizedBox(height: 30.h,),
              Container(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      setState(() {

                        if(gender=="Female"){
                          result=10*double.parse(contWeight.text)+6.25*double.parse(contheight.text)-5*double.parse(contAge.text)-161;
                          gender="Male";
                        }else{
                          result=10*double.parse(contWeight.text)+6.25*double.parse(contheight.text)-5*double.parse(contAge.text)+5;
                        }
                        activity.forEach((element) {
                          if(element==true){
                            switch(activity.indexOf(element)){
                              case 0:result=result*1.25;break;
                              case 1:result=result*1.375;break;
                              case 2:result=result*1.550;break;
                              case 3:result=result*1.725;break;
                            }
                          }
                        });
                        goal.forEach((element) {
                          if(element==true){
                            switch(goal.indexOf(element)){
                              case 0:aim=result-500;break;
                              case 1:aim=result*1;break;
                              case 2:aim=result+500;break;
                            }
                          }
                        });
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
              Text("your calories is: ${((result*100).round())/100}",style: TextStyle(color:white,fontSize: 20,),),
              SizedBox(height: 30.h,),
              Text("to achieve your aim you must get ${((aim*100).round())/100} ",style: TextStyle(color:white,fontSize: 20,),),
              SizedBox(height: 30.h,),

            ],
              )],
          ),
        ),

      ),
    );
  }
}
