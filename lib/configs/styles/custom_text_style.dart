import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'app_colors.dart';

class CustomTextStyle {
  static textStyle10_400({
    Color? color,
  }) {
    return TextStyle(
        fontSize: 10.sp,
        fontWeight: FontWeight.w400,
        color: color == null ? AppColors.primaryColor : color,
        fontFamily: "Montserrat");
  }

  static textStyle11_400({
    Color? color,
  }) {
    return TextStyle(
        fontSize: 11.sp,
        fontWeight: FontWeight.w700,
        color: color == null ? AppColors.primaryColor : color,
        fontFamily: "Montserrat");
  }

  static textStyle12_400({
    Color? color,
  }) {
    return TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w400,
        color: color == null ? AppColors.primaryColor : color,
        fontFamily: "Montserrat");
  }

  static textStyle12_700({
    Color? color,
  }) {
    return TextStyle(
        fontSize: 12.sp,
        fontWeight: FontWeight.w700,
        color: color == null ? AppColors.primaryColor : color,
        fontFamily: "Montserrat");
  }

  static textStyle14_400({
    Color? color,
  }) {
    return TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w400,
        color: color == null ? AppColors.primaryColor : color,
        fontFamily: "Montserrat");
  }

  static textStyle14_700({
    Color? color,
  }) {
    return TextStyle(
        fontSize: 14.sp,
        fontWeight: FontWeight.w700,
        color: color == null ? AppColors.primaryColor : color,
        fontFamily: "Montserrat");
  }

  static textStyle16_400({
    Color? color,
  }) {
    return TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w400,
        color: color == null ? AppColors.primaryColor : color,
        fontFamily: "Montserrat");
  }

  static textStyle16_700({
    Color? color,
  }) {
    return TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.w700,
        color: color == null ? AppColors.primaryColor : color,
        fontFamily: "Montserrat");
  }

  static textStyle18_400({
    Color? color,
  }) {
    return TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w400,
        color: color == null ? AppColors.primaryColor : color,
        fontFamily: "Montserrat");
  }

  static textStyle18_600({
    Color? color,
  }) {
    return TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
        color: color == null ? AppColors.primaryColor : color,
        fontFamily: "Montserrat");
  }



  static textStyle26_700({
    Color? color,
  }) {
    return TextStyle(
        fontSize: 26.sp,
        fontWeight: FontWeight.w700,
        color: color == null ? AppColors.primaryColor : color,
        fontFamily: "Montserrat");
  }
}
