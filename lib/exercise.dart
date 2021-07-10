import 'package:first_project/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Exercise extends StatefulWidget {
  String time;
  String img;

  Exercise(this.time, this.img);

  @override
  _ExerciseState createState() => _ExerciseState();
}

class _ExerciseState extends State<Exercise> {

  @override
  Widget build(BuildContext context) {
    setState(() {

    });
    return Container(

      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(15)),
        color: backgroundcolor,
      ),

      child: Column(
        children: [
          SizedBox(
            height: 30.h,
          ),
          Text(widget.time,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 25.sp,
                color: bordercolor,
              )),
          SizedBox(
            height: 30.h,
          ),
          Container(
            height: 220.h,
            width: 320.w,
            margin: EdgeInsets.all(20),
            decoration: BoxDecoration(
                image: new DecorationImage(
                  image: AssetImage(
                    widget.img,
                  ),
                  fit: BoxFit.fill,
                ),
                borderRadius: BorderRadius.all(Radius.circular(15)),
                border: Border.fromBorderSide(
                    BorderSide(color: bordercolor, width: 2.w))),
          )
        ],
      ),
    );
  }
}
