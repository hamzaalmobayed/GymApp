import 'package:first_project/allMuscle.dart';
import 'package:first_project/muscleExcerciesShape.dart';
import 'package:flutter/material.dart';

import 'exerciseShape.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'muscleClass.dart';
import 'muscleShape.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}
Color backgroundcolor=Color.fromRGBO(59,53 , 87, 1);
Color bordercolor=Color.fromRGBO(9,234, 147, 1);
Color homecolor=Color.fromRGBO(32,25, 67,1);
Color white=Colors.white;
List<Muscle> muscles=[
  Muscle("Arm", "images/arm.jpg"),
  Muscle("leg", "images/leg.png"),
  Muscle("Abs", "images/abs.jpg"),
  Muscle("shoulder", "images/shoulder.jpg"),
  Muscle("Back", "images/back.jpg"),
  Muscle("Chest", "images/chest.jpg"),
  Muscle("biceps", "images/biceps.jpg"),
  Muscle("triceps", "images/triceps.png"),

];
class _HomeState extends State<Home> {
  List<String> slider=[
    "images/slide.jpg",
    "images/slide2.jpg",
    "images/slide3.jpg",
    "images/slide4.jpg",
    "images/slide5.jpg",
    "images/slide6.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Material(
      color:homecolor,
      child: ListView(
        children: [
          SingleChildScrollView(
            reverse: true,
            scrollDirection: Axis.horizontal,
            child: Row(
              children: slider.map((e) =>Container(
                width: 300,
                height: 200,
                margin: EdgeInsets.only(left: 15,right: 15,bottom: 15,top: 20),
                decoration: BoxDecoration(
                    image: new DecorationImage(image: new AssetImage(e), fit: BoxFit.fill,),
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                    border:Border.fromBorderSide(BorderSide(color: bordercolor,width: 2.w))
                ),
              ) ).toList(),
            ),

          ),
          Padding(
            padding: const EdgeInsets.only(top: 15.0,left: 15,right: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Muscles",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,color:white,)),
                TextButton(
                    onPressed: (){Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(BuildContext context){return AllMuscle();}));},
                    child: Text("View All",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,color:bordercolor,)),
                ),
              ],
            ),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: muscles.map((e) => MuscleShape(e.name,e.img)).toList(),
            ),
          ),
          Column(
            children: muscles.map((e) => MuscleExerciseShape(e.name, e.img)).toList(),
          )
        ],
      ),
    );
  }
}
