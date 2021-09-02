import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waayu/configs/styles/app_colors.dart';
import 'package:get/get.dart';
import 'package:waayu/configs/styles/custom_text_style.dart';
import 'package:waayu/configs/widgets/custom_button.dart';
import 'package:waayu/configs/widgets/custom_safe_area.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waayu/views/starred_hotels.dart';

import 'home_screen.dart';

class RentHotel extends StatelessWidget {
  const RentHotel(
      {Key? key,
      required this.hotelName,
      required this.imageUrl,
      required this.star,
      required this.address,
      required this.number,
      required this.description,
      required this.price})
      : super(key: key);

  final String? hotelName;
  final String imageUrl;
  final String? star;
  final String? address;
  final String? number;
  final String? description;
  final String? price;
  // final String star;

  @override
  Widget build(BuildContext context) {
    return CustomSafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Container(
                    height: 350.h,
                    width: Get.width,
                    child: Image.asset(
                      imageUrl,
                      height: 350.h,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Container(
                    height: Get.height,
                    child: DraggableScrollableSheet(
                      minChildSize: 0.55,
                      initialChildSize: 0.55,
                      maxChildSize: 1,
                      builder: (BuildContext context,
                          ScrollController scrollController) {
                        return Container(
                          height: Get.height,
                          padding: EdgeInsets.symmetric(
                              horizontal: 23.w, vertical: 21.h),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(25.r),
                              topRight: Radius.circular(25.r),
                            ),
                            color: AppColors.white,
                          ),
                          child: SingleChildScrollView(
                            controller: scrollController,
                            child: Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.only(
                                          topRight: Radius.circular(30),
                                          topLeft: Radius.circular(30))),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20, vertical: 20),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          hotelName ?? "",
                                          style:
                                              CustomTextStyle.textStyle18_600(),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                            SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              star!,
                                              style: CustomTextStyle
                                                  .textStyle14_700(),
                                            ),
                                            SizedBox(
                                              width: 5,
                                            ),
                                            Text(
                                              "(53K+ review)",
                                              style: CustomTextStyle
                                                  .textStyle14_400(
                                                      color: AppColors
                                                          .primaryColor),
                                            )
                                          ],
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          "Address",
                                          style:
                                              CustomTextStyle.textStyle14_700(),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          address!,
                                          style:
                                              CustomTextStyle.textStyle14_400(
                                                  color: Colors.grey),
                                        ),
                                        Text(
                                          number!,
                                          style:
                                              CustomTextStyle.textStyle14_400(
                                                  color: Colors.grey),
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          "Facilities",
                                          style:
                                              CustomTextStyle.textStyle14_700(),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            FacilitesIcons(
                                              icon: Icons.wifi,
                                            ),
                                            FacilitesIcons(
                                              icon: Icons.health_and_safety,
                                            ),
                                            FacilitesIcons(
                                              icon: Icons.tv_outlined,
                                            ),
                                            FacilitesIcons(
                                              icon: Icons.coffee,
                                            ),
                                            FacilitesIcons(
                                              icon: Icons.headphones,
                                            ),
                                          ],
                                        ),
                                        SizedBox(
                                          height: 15,
                                        ),
                                        Text(
                                          "Description",
                                          style:
                                              CustomTextStyle.textStyle14_700(),
                                        ),
                                        SizedBox(
                                          height: 8,
                                        ),
                                        Text(
                                          description!,
                                          style:
                                              CustomTextStyle.textStyle14_400(
                                                  color: Colors.grey),
                                        ),
                                        SizedBox(
                                          height: 25,
                                        ),
                                        Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    "Start from",
                                                    style: CustomTextStyle
                                                        .textStyle14_400(
                                                            color: Colors.grey),
                                                  ),
                                                  Text(
                                                    price!,
                                                    style: CustomTextStyle
                                                        .textStyle26_700(
                                                      color:
                                                          AppColors.purpleColor,
                                                    ),
                                                  ),
                                                  SizedBox(
                                                    height: 5,
                                                  ),
                                                ],
                                              ),
                                              Spacer(),
                                              CustomButton(
                                                  width: 156.w,
                                                  height: 57.h,
                                                  radius: BorderRadius.circular(
                                                      15.r),
                                                  onPressed: () {
                                                    showDialog(
                                                        context: context,
                                                        builder: (context) {
                                                          return CustomAlert(
                                                            price: price
                                                                .toString(),
                                                          );
                                                        });
                                                  },
                                                  buttonText: "Rental Now")
                                            ]),
                                      ]),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

class FacilitesIcons extends StatelessWidget {
  const FacilitesIcons({Key? key, required this.icon}) : super(key: key);
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 36.h,
      width: 36.w,
      decoration: BoxDecoration(
        color: AppColors.purpleColor,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
  }
}

class CustomAlert extends StatefulWidget {
  final String price;
  CustomAlert({required this.price});

  @override
  _CustomAlertState createState() => _CustomAlertState();
}

class _CustomAlertState extends State<CustomAlert> {
  bool _isTapped = false;
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(22)),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(22)),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              "Total Payment",
              style: CustomTextStyle.textStyle18_600(),
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "${widget.price.toString()}",
              style:
                  CustomTextStyle.textStyle26_700(color: AppColors.purpleColor),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      _isTapped = !_isTapped;
                    });
                  },
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: AppColors.primaryColor),
                        borderRadius: BorderRadius.circular(5)),
                    child: Icon(
                      Icons.done,
                      color: _isTapped ? AppColors.primaryColor : Colors.white,
                      size: 15,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "I agree to the terms of service",
                  style: CustomTextStyle.textStyle12_400(color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            CustomButton(
              onPressed: () {
                Get.offAll(HomeScreen());
              },
              buttonText: "Pay",
              radius: BorderRadius.circular(12),
            )
          ],
        ),
      ),
    );
  }
}
