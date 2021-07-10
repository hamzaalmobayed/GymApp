import 'dart:math';
import 'package:first_project/muscleShape.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'bottomTabs.dart';
import 'exercise.dart';
import 'exerciseShape.dart';
import 'calories.dart';
import 'home.dart';
import 'water.dart';
import 'weight.dart';
import 'home.dart';
import 'map.dart';
class ExerciseLayout extends StatefulWidget {
  @override
  _ExerciseLayoutState createState() => _ExerciseLayoutState();
}

class _ExerciseLayoutState extends State<ExerciseLayout> {
  List<Widget> exercises=[];

  List<Widget> train(){
    var rng = new Random();
    training.forEach((key, value) {
      if(key==image){
        value.forEach((key, value) {
          if(key==n){
            value.map((e) {
              exercises.add(SizedBox(height: 30.h,));
              exercises.add(Exercise("do this ${rng.nextInt(3)+3} x10", e));
              exercises.add(SizedBox(height: 30.h,));

            }

            ).toList();
          }
        });
      }

    });
    return exercises;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Workout Street",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 23.sp,
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
        toolbarHeight: 65.h,
        elevation: 15,
        backgroundColor: backgroundcolor,
      ),
      body: Container(
          color: homecolor,
          child: ListView(
            children: train()
          )
      ),
    );
  }
}
