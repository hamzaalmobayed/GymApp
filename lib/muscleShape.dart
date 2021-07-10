import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'home.dart';
class MuscleShape extends StatelessWidget {
String name;
String img;

MuscleShape(this.name, this.img);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150.w,
      height: 150.h,
      margin: EdgeInsets.all(15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CircleAvatar(
            radius: 50,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50)),
                  border:Border.fromBorderSide(BorderSide(color: bordercolor,width: 2.w))
              ),
            ),
            backgroundImage: AssetImage(img),
          ),
          Text(name,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.sp,color: white,)),
        ],
      ),
      decoration: BoxDecoration(
        color: backgroundcolor,
          borderRadius: BorderRadius.all(Radius.circular(15)),
          border:Border.fromBorderSide(BorderSide(color: bordercolor,width: 2.w))
      ),
    );
  }
}
