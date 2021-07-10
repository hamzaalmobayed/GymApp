import 'package:first_project/exercise.dart';
import 'package:first_project/map.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'exerciseLayout.dart';
import 'home.dart';
String n="";
String image="";
class ExerciseShape extends StatelessWidget {
  String name;
  String img;

  ExerciseShape(this.name, this.img);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 120.w,
          height: 120.h,
          child: TextButton(
            onPressed: (){
              n=name;
              image=img;
              Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context)=>ExerciseLayout()));
            },
            child: Text(""),
          ),
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
              image: new DecorationImage(image: new AssetImage(img), fit: BoxFit.fill,),
              borderRadius: BorderRadius.all(Radius.circular(15)),
              border:Border.fromBorderSide(BorderSide(color: bordercolor,width: 2.w))
          ),
        ),
        Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 23.sp,color:bordercolor,)),
      ],
    );
  }
}
