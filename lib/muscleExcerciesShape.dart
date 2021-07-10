import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'exerciseShape.dart';
import 'home.dart';
class MuscleExerciseShape extends StatelessWidget {
String name;
String img;
final List<String>level=["Easy","Intermediate","Hard"];

MuscleExerciseShape(this.name, this.img);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:8.0,bottom: 8),
      child: Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
            color: backgroundcolor,
            borderRadius: BorderRadius.all(Radius.circular(15)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15.0,left: 15,right: 15),
              child: Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23.sp,color: white,)),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  ExerciseShape(level[0],img),
                  ExerciseShape(level[1],img),
                  ExerciseShape(level[2],img)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
