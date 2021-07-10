import 'dart:async';

import 'package:first_project/bottomTabs.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'home.dart';

void main() {
  runApp(ScreenUtilInit(
    builder: ()=>MyApp(),
    designSize: Size(360,712),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Project1",
      theme: ThemeData(
          canvasColor: Colors.transparent
      ),
      debugShowCheckedModeBanner: false,
      home: Splash(),
      
    );
  }
}
class Splash extends StatefulWidget {
  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds: 2), (){
      print(MediaQuery.of(context).size.width.toString()+""+MediaQuery.of(context).size.height.toString());
     Navigator.of(context).pushReplacement(MaterialPageRoute(builder:(BuildContext context){return BottomTabs();}));
    });
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
        child:Material(
          child: Container(
            decoration: new BoxDecoration(
              image: new DecorationImage(image: new AssetImage("images/lazar.jpg"), fit: BoxFit.cover,),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Workout",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 55.sp,color:white,),),
                Text("Street\n",style: TextStyle(fontSize: 35.sp,color: white),),
                CircularProgressIndicator(color:white,strokeWidth: 5.w,)
              ],
            ),
          ),
        )
    );
  }
}

