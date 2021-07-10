import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'home.dart';

class CalculatorButton extends StatelessWidget {
  String hint;
  TextEditingController cont;

  CalculatorButton(this.hint,this.cont);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: cont,
      style: TextStyle(color: white,fontWeight: FontWeight.bold,fontSize: 20.sp),
      keyboardType: TextInputType.number,
      decoration: new InputDecoration(
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
              borderSide: BorderSide(color: white)),
          border: new OutlineInputBorder(
            borderSide: BorderSide(color: bordercolor, width: 5.w),
            borderRadius: const BorderRadius.all(
              const Radius.circular(10.0),
            ),
          ),
          enabledBorder: new OutlineInputBorder(
            borderSide: BorderSide(color: bordercolor, width: 2.w),
            borderRadius: const BorderRadius.all(
              const Radius.circular(10.0),
            ),
          ),
          filled: true,

          labelStyle: new TextStyle(color: white),
          labelText: hint,
          fillColor: backgroundcolor),
    );
  }
}
