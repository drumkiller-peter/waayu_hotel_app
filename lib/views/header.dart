import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waayu/configs/styles/app_colors.dart';
import 'package:waayu/configs/styles/custom_text_style.dart';
import 'package:waayu/configs/widgets/custom_text_form_field.dart';
import 'package:waayu/configs/widgets/filter_widget.dart';
import 'package:waayu/controller/home_controller.dart';
import 'package:get/get.dart';
import 'package:waayu/views/location_result.dart';
import 'dart:math' as math;

import 'package:waayu/views/search_result.dart';

class CustomHeader extends StatelessWidget {
  const CustomHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    HomeController _homeController = HomeController();
    TextEditingController _searchController = TextEditingController();

    var _locationList = [
      "India",
      "China",
      "Bangladesh",
      "Nepal",
      "USA",
      "England",
      "Dubai"
    ];
    return Obx(
      () => Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15.r),
                child: Image.asset(
                  "assets/images/profile1.jpg",
                  height: 37.h,
                  width: 37.h,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  DropdownButton(
                    underline: Container(),
                    isDense: true,
                    isExpanded: false,
                    hint: Text(
                      _homeController.currentAddress.value,
                    ),
                    onChanged: (value) {
                      _homeController.currentAddress.value = value.toString();
                    },
                    items: _locationList
                        .map((e) => DropdownMenuItem(
                              child: Text(
                                e,
                              ),
                              value: e,
                            ))
                        .toList(),
                  ),
                  Text(
                    "Cox's Bazar, BD",
                    style: CustomTextStyle.textStyle12_700(),
                  ),
                ],
              ),
              Spacer(),
              Stack(
                children: [
                  Icon(
                    Icons.notifications_outlined,
                    color: AppColors.primaryColor,
                    size: 25.h,
                  ),
                  Positioned(
                    left: 15.w,
                    // bottom: 7,
                    child: CircleAvatar(
                      radius: 5.r,
                      backgroundColor: Color(0xffF77754),
                      child: Text(
                        "",
                        style: CustomTextStyle.textStyle10_400(),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: 15,
              ),
              Transform(
                alignment: Alignment.center,
                transform: Matrix4.rotationY(math.pi),
                child: Icon(
                  Icons.sort,
                  size: 25.h,
                ),
              )
            ],
          ),
          SizedBox(
            height: 15.h,
          ),
          Row(
            children: [
              Expanded(
                child: CustomTextFormField(
                  controller: _searchController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Cannot be Empty";
                    }
                  },
                  needBorder: false,
                  fillColor: Color(0xffF4F4F4),
                  hintText: "Search your Hotels",
                  obscureText: false,
                  textInputAction: TextInputAction.search,
                  onFieldSubmitted: (value) {
                    Get.to(() => SearchResult(),
                        transition: Transition.leftToRight,
                        duration: Duration(seconds: 1));
                  },
                ),
              ),
              SizedBox(
                width: 10.w,
              ),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (BuildContext context) => FilterBottomSheet(),

                    isScrollControlled: true,
                    // backgroundColor: Colors.transparent,
                    // barrierColor: Colors.transparent,
                  );
                  // Get.to(() => LocationResult());
                },
                child: Image.asset(
                  "assets/images/filter.png",
                  height: 20.h,
                  color: AppColors.primaryColor,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
