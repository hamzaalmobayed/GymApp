import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'home.dart';
class Activity extends StatefulWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  _ActivityState createState() => _ActivityState();
}
List<bool> activity=[true,false,false,false];
class _ActivityState extends State<Activity> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: ElevatedButton(
              onPressed: () {
                setState(() {
                  activity[0]=true;
                  for(int i=1;i<activity.length;i++){
                    activity[i]=false;
                  }
                });

              },
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text("N",style: TextStyle(color:white,fontSize: 20.sp,),),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(activity[0]?bordercolor:backgroundcolor),
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
                  activity[1]=true;
                  for(int i=0;i<activity.length;i++){
                    if(i==1)continue;
                    activity[i]=false;
                  }
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text("F",style: TextStyle(color:white,fontSize: 20.sp,),),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(activity[1]?bordercolor:backgroundcolor),
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
                  activity[2]=true;
                  for(int i=0;i<activity.length;i++){
                    if(i==2)continue;
                    activity[i]=false;
                  }
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text("M",style: TextStyle(color:white,fontSize: 20.sp,),),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(activity[2]?bordercolor:backgroundcolor),
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
                  activity[3]=true;
                  for(int i=0;i<activity.length-1;i++){
                    activity[i]=false;
                  }
                });
              },
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Text("H",style: TextStyle(color:white,fontSize: 20.sp,),),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(activity[3]?bordercolor:backgroundcolor),
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
