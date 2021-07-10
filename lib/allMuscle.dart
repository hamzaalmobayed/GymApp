
import 'package:first_project/muscleShape.dart';
import 'package:flutter/material.dart';
import 'calories.dart';
import 'home.dart';
import 'water.dart';
import 'weight.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'bottomTabs.dart';
import 'home.dart';
class AllMuscle extends StatefulWidget {
  const AllMuscle({Key? key}) : super(key: key);

  @override
  _AllMuscleState createState() => _AllMuscleState();
}

class _AllMuscleState extends State<AllMuscle> {
  Widget all(){
    List<Widget> child=[
      SizedBox(height: 30.h,),
      Center(
        child: Text("Muscles",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30.sp,
              color: bordercolor,
            )),
      ),
      SizedBox(height: 30.h,),
    ];
    for(int i=0;i<muscles.length;i=i+2){
      int index=i;
      child.add(Row(
        children: [
          MuscleShape(muscles[i].name, muscles[i].img),
          MuscleShape(muscles[++index].name, muscles[index++].img),

        ],
      ));
    }
    return ListView(
      children:child
    );

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Workout Street",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 25.sp,
              color: white,
            )),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          color: white,
          iconSize: 30.sp,
          onPressed: () {
            Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(BuildContext context){return BottomTabs();}));
          },
        ),
        toolbarHeight: 80.h,
        elevation: 15,
        backgroundColor: backgroundcolor,
      ),
      body: Container(
        color: homecolor,
        child: all()
      ),
    );
  }
}
