import 'package:first_project/calories.dart';
import 'package:first_project/exerciseLayout.dart';
import 'package:first_project/water.dart';
import 'package:first_project/weight.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'home.dart';


class BottomTabs extends StatefulWidget {
  const BottomTabs({Key? key}) : super(key: key);

  @override
  _BottomTabsState createState() => _BottomTabsState();
}
List<Widget> tabs=[
  Home(),
  Calories(),
  Weight(),
  Water(),
];
class _BottomTabsState extends State<BottomTabs> {

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor:backgroundcolor.withOpacity(0.1),
        extendBodyBehindAppBar: true,

        appBar: AppBar(
          title: Text("Workout Street",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 23.sp,
                color: white,
              )),
          centerTitle: true,
          leading: IconButton(
            icon: Icon(Icons.menu),
            color: white,
            iconSize: 30.sp,
            onPressed: () {},
          ),
          toolbarHeight: 60.h,
          elevation: 15,
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              color: white,
              iconSize: 30.sp,
              onPressed: () {},
            ),
          ],
          backgroundColor: backgroundcolor,
        ),
        body: tabs[_selectedIndex],
        floatingActionButton: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(40)),
              border:Border.fromBorderSide(BorderSide(color: bordercolor,width: 2.w))
          ),
          child: FloatingActionButton(
            onPressed: (){
              setState(() {
                homecolor=homecolor==Color.fromRGBO(32,25, 67,1)?Color.fromRGBO(215,213, 219,1):Color.fromRGBO(32,25, 67,1);
                backgroundcolor=backgroundcolor==Color.fromRGBO(59,53 , 87, 1)?Colors.white:Color.fromRGBO(59,53 , 87, 1);
                bordercolor=bordercolor==Color.fromRGBO(9,234, 147, 1)?Colors.blue:Color.fromRGBO(9,234, 147, 1);
                white=white==Colors.white?Colors.black87:Colors.white;
                tabs[0]=Home();
                tabs[1]=Calories();
                tabs[2]=Weight();
                tabs[3]=Water();
              });
            },
            backgroundColor: backgroundcolor,
            focusColor: bordercolor,
            child: Icon(Icons.wb_incandescent_outlined,color: bordercolor,),
            elevation: 15,
            hoverColor: bordercolor,
            splashColor: bordercolor,
          ),
        ),
        bottomNavigationBar: Container(
          height: 65.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(20),topRight:Radius.circular(20) ),
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black,
                blurRadius: 10,
              ),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30.0),
              topRight: Radius.circular(30.0),
            ),
            child: Theme(
              data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
              child: BottomNavigationBar(
                backgroundColor: white.withOpacity(0.1),
                type: BottomNavigationBarType.shifting,
                currentIndex: _selectedIndex,
                elevation: 20.0,
                selectedItemColor: bordercolor,
                selectedLabelStyle: TextStyle(
                    color: bordercolor, fontSize: 15, fontWeight: FontWeight.bold),
                unselectedLabelStyle: TextStyle(
                    color: white, fontSize: 15.sp, fontWeight: FontWeight.bold),
                iconSize: 25.sp,
                onTap: _onItemTapped,

                items: [
                  BottomNavigationBarItem(
                    backgroundColor: backgroundcolor,
                    icon: Icon(Icons.home,color: white,),
                    label: "Home",
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: backgroundcolor,
                    icon: Icon(Icons.accessibility_outlined,color: white,),
                    label: "Calories",
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: backgroundcolor,
                    icon: Icon(Icons.workspaces_filled,color: white,),
                    label: "Weight",
                  ),
                  BottomNavigationBarItem(
                    backgroundColor: backgroundcolor,
                    icon: Icon(Icons.water,color: white,),
                    label: "Water",
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
