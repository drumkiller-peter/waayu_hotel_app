import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waayu/configs/styles/app_colors.dart';
import 'package:waayu/configs/styles/custom_text_style.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Function onPressed;
  final double? width;
  final double? height;

  final BorderRadiusGeometry? radius;
  final bool? needGradient;
  final TextStyle? textStyle;

  CustomButton({
    Key? key,
    this.width,
    this.height,
    required this.onPressed,
    required this.buttonText,
    this.radius,
    this.needGradient,
    this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        height: height ?? 44.h,
        width: width ?? 311.w,
        decoration: BoxDecoration(
          color: needGradient == true ? null : AppColors.primaryColor,
          gradient: needGradient == true
              ? LinearGradient(colors: [
                  Color(0xffFF62A5),
                  Color(0xffFF8960),
                ])
              : null,
          borderRadius: radius == null ? BorderRadius.circular(0.r) : radius,
        ),
        child: Center(
          child: Text(
            buttonText,
            style: textStyle == null
                ? CustomTextStyle.textStyle18_600(color: Colors.white)
                : textStyle,
          ),
        ),
      ),
    );
  }
}
