import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waayu/configs/constants/custom_app_bar.dart';
import 'package:waayu/configs/styles/app_colors.dart';
import 'package:waayu/configs/styles/custom_text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waayu/views/header.dart';
import 'package:waayu/configs/widgets/custom_safe_area.dart';
import 'package:waayu/views/starred_hotels.dart';

import 'package:waayu/configs/widgets/custom_text_form_field.dart';
import 'package:waayu/controller/home_controller.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController _homeController = HomeController();

    var _cardItemsImage = [
      "assets/images/h4.jpg",
      "assets/images/h2.jpg",
      "assets/images/h3.jpg",
      "assets/images/h4.jpg",
      "assets/images/h2.jpg",
    ];
    var _cardItemsTitle = [
      "Classsic",
      "Modern",
      "Old",
      "Classsic",
      "Modern",
    ];
    var _description = [
      "More than 504,326 House waiting   for your rent or buy",
      "More than 504,326 House waiting   for your rent or buy",
      "More than 504,326 House waiting   for your rent or buy",
      "More than 504,326 House waiting   for your rent or buy",
      "More than 504,326 House waiting   for your rent or buy",
    ];
    var _price = [
      "\$30/month",
      "\$60/month",
      "\$90/month",
      "\$30/month",
      "\$60/month",
      "\$90/month",
    ];
    return CustomSafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 24.h),
          child: SingleChildScrollView(
            child: DefaultTabController(
              length: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomHeader(),
                  SizedBox(
                    height: 15.h,
                  ),
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(15.r),
                        child: Image.asset(
                          "assets/images/Gradient.png",
                          width: MediaQuery.of(context).size.width,
                          height: 124.h,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(24.w, 21.h, 0, 0),
                        child: Text(
                          "Enjoy Your Weekends \nwith Family | Special Offer!",
                          style: CustomTextStyle.textStyle14_400(
                              color: AppColors.white),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Row(
                    children: [
                      Text(
                        "Category",
                        style: CustomTextStyle.textStyle18_600(),
                      ),
                      Spacer(),
                      Icon(
                        Icons.more_horiz_outlined,
                        color: AppColors.primaryColor,
                        size: 25.sp,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    height: 300.h,
                    child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        physics: BouncingScrollPhysics(),
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return Row(
                            children: [
                              CardItems(
                                image: _cardItemsImage[index],
                                title: _cardItemsTitle[index],
                                description: _description[index],
                                rate: _price[index],
                              ),
                              SizedBox(
                                width: 10.w,
                              ),
                            ],
                          );
                        }),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Container(
                    height: 15.h,
                    child: TabBar(
                      unselectedLabelStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w400,
                      ),
                      labelStyle: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      indicatorColor: AppColors.purpleColor,
                      labelColor: AppColors.primaryColor,
                      unselectedLabelColor: AppColors.greyTextColor,
                      tabs: [
                        Text(
                          "5 Star",
                        ),
                        Text(
                          "4 Star",
                        ),
                        Text(
                          "3 Star",
                        ),
                        Text(
                          "2 Star",
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 15.h,
                  ),
                  Container(
                    height: Get.height * 0.8,
                    child: TabBarView(children: [
                      FiveStarredHotel(
                        hideDiscount: false,
                      ),
                      FiveStarredHotel(
                        hideDiscount: false,
                      ),
                      FiveStarredHotel(
                        hideDiscount: false,
                      ),
                      FiveStarredHotel(
                        hideDiscount: false,
                      ),
                    ]),
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

class CardItems extends StatelessWidget {
  const CardItems({
    Key? key,
    this.image,
    this.title,
    this.description,
    this.rate,
  }) : super(key: key);
  final String? image;
  final String? title;
  final String? description;
  final String? rate;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2.h,
      child: Container(
        height: 307.h,
        width: 240.w,
        padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 16.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(5.r),
              child: Image.asset(
                image!,
                height: 144.h,
                width: 223.w,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 15.h,
            ),
            Text(
              title!,
              style: CustomTextStyle.textStyle16_700(),
            ),
            SizedBox(
              height: 10.h,
            ),
            Text(
              description!,
              style: CustomTextStyle.textStyle12_400(
                  color: AppColors.greyTextColor),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    height: 37.h,
                    width: 150.w,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(25.r),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "From ",
                          style: CustomTextStyle.textStyle12_400(
                            color: AppColors.white,
                          ),
                        ),
                        Text(
                          rate!,
                          style: CustomTextStyle.textStyle12_700(
                            color: AppColors.white,
                          ),
                        )
                      ],
                    )),
                Container(
                  height: 36.h,
                  width: 36.w,
                  decoration: BoxDecoration(
                    color: Color(0xffF4F4F4),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Icon(
                    Icons.arrow_forward,
                    color: Color(0xff7459DC),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
