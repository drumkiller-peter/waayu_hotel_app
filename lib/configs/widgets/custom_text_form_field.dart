import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waayu/configs/styles/app_colors.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final IconData? suffixIcon;
  final bool obscureText;
  final String hintText;

  final Function()? onTapSuffix;

  final Function(String) validator;
  final TextInputType? keyboardType;
  final TextStyle? hintStyle;
  final bool? needBorder;
  final int? maxLines;
  final EdgeInsetsGeometry? padding;
  final BorderRadius? borderRadius;
  final Color? fillColor;
  final TextInputAction? textInputAction;
  final Function(String)? onFieldSubmitted;

  CustomTextFormField({
    required this.controller,
    this.suffixIcon,
    required this.validator,
    this.obscureText = true,
    required this.hintText,
    this.onTapSuffix,
    this.keyboardType,
    this.hintStyle,
    this.needBorder = true,
    this.maxLines = 1,
    this.fillColor,
    this.borderRadius,
    this.padding,
    this.textInputAction,
    this.onFieldSubmitted,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius:
          borderRadius == null ? BorderRadius.circular(10.r) : borderRadius,
      child: TextFormField(
        controller: controller,
        onFieldSubmitted: onFieldSubmitted,
        validator: (value) => validator(value!),
        autofocus: false,
        style: TextStyle(
          fontFamily: "Montserrat",
          color: AppColors.primaryColor,
          fontSize: 14.sp,
          fontWeight: FontWeight.w300,
        ),
        maxLines: maxLines,
        obscureText: obscureText,
        cursorColor: AppColors.black,
        keyboardType: keyboardType,
        textInputAction: textInputAction,
        decoration: InputDecoration(
            prefixIcon: Icon(
              Icons.search,
              color: AppColors.primaryColor,
            ),
            filled: true,
            fillColor: fillColor == null ? Color(0xffF5F7FB) : fillColor,
            hintText: hintText,
            hintStyle: hintStyle != null
                ? hintStyle
                : TextStyle(
                    color: AppColors.greyTextColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                    fontFamily: "Montserrat",
                    fontStyle: FontStyle.italic,
                  ),
            enabledBorder: needBorder == true
                ? OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffACACAC),
                    ),
                  )
                : InputBorder.none,
            suffixIcon: suffixIcon != null
                ? InkWell(
                    onTap: onTapSuffix,
                    child: Icon(
                      suffixIcon,
                      color: Color(0xffC1C6CC),
                      size: 15.sp,
                    ),
                  )
                : null,
            contentPadding: padding == null ? EdgeInsets.all(25.w) : padding,
            focusColor: AppColors.white,
            border: needBorder == true
                ? OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xffACACAC),
                    ),
                    borderRadius: BorderRadius.circular(8.r),
                  )
                : InputBorder.none,
            focusedBorder: needBorder == true
                ? OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.r),
                    borderSide: BorderSide(
                      color: Color(0xffACACAC),
                    ),
                  )
                : InputBorder.none,
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(
                color: Color(0xffFF6881),
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8.r),
              borderSide: BorderSide(
                color: Color(0xffFF6881),
              ),
            )),
      ),
    );
  }
}
