import 'package:flutter/material.dart';

import 'home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Goal extends StatefulWidget {
  const Goal({Key? key}) : super(key: key);

  @override
  _GoalState createState() => _GoalState();
}
List<bool> goal=[true,false,false];
class _GoalState extends State<Goal> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: ElevatedButton(
              onPressed: () {
                setState(() {
                  goal[0]=true;
                  for(int i=1;i<goal.length;i++){
                    goal[i]=false;
                  }
                });

              },
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text("Loss",style: TextStyle(color:white,fontSize: 20.sp,),),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(goal[0]?bordercolor:backgroundcolor),
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
                  goal[1]=true;
                  for(int i=0;i<goal.length;i++){
                    if(i==1)continue;
                    goal[i]=false;
                  }
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text("Keep",style: TextStyle(color:white,fontSize: 19.5.sp,),),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(goal[1]?bordercolor:backgroundcolor),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
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
                  goal[2]=true;
                  for(int i=0;i<goal.length-1;i++){
                    goal[i]=false;
                  }
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text("rise",style: TextStyle(color:white,fontSize: 20.sp,),),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(goal[2]?bordercolor:backgroundcolor),
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
