import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';
import 'package:get/get.dart';
import 'package:waayu/configs/styles/app_colors.dart';
import 'package:waayu/configs/styles/custom_text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waayu/configs/widgets/custom_button.dart';
import 'package:waayu/controller/home_controller.dart';

class FilterBottomSheet extends StatelessWidget {
  HomeController _homeController = HomeController();
  final List<String> _locationList = [
    "Bhairahawa",
    "Butwal",
    "Kathmandu",
    "Nepalgunj",
    "Palpa",
    "Pokhara",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      padding: EdgeInsets.symmetric(vertical: 30.h, horizontal: 23.w),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25.r),
            topRight: Radius.circular(25.r),
          ),
          color: AppColors.white),
      child: Obx(
        () => Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Search your location",
              style: CustomTextStyle.textStyle14_700(),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: AppColors.lightGreyBackground,
              ),
              child: Row(
                children: [
                  Icon(Icons.location_on),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: DropdownButtonFormField(
                      hint: Text("My Location"),
                      style: CustomTextStyle.textStyle14_400(),
                      decoration: InputDecoration(border: InputBorder.none),
                      onChanged: (value) {
                        _homeController.searchLocation.value =
                            value!.toString();
                      },
                      items: _locationList
                          .map((e) => DropdownMenuItem(
                                child: Text(
                                  e,
                                  style: CustomTextStyle.textStyle14_400(),
                                ),
                                value: e,
                              ))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Type of house",
              style: CustomTextStyle.textStyle14_700(),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 12, vertical: 5),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.withOpacity(0.1)),
              child: Row(
                children: [
                  Icon(Icons.location_on),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: DropdownButtonFormField(
                      hint: Text("Type of house"),
                      style: CustomTextStyle.textStyle14_400(),
                      decoration: InputDecoration(border: InputBorder.none),
                      onChanged: (value) {
                        _homeController.currentAddress.value =
                            value!.toString();
                      },
                      items: _locationList
                          .map((e) => DropdownMenuItem(
                                child: Text(
                                  e,
                                  style: CustomTextStyle.textStyle14_400(),
                                ),
                                value: e,
                              ))
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Filter by price",
              style: CustomTextStyle.textStyle14_700(),
            ),
            SizedBox(
              height: 15.h,
            ),
            Container(
              height: 20,
              child: StatefulBuilder(
                builder: (BuildContext context, StateSetter setState) =>
                    SfSlider(
                  min: 10000.0,
                  max: 1000000.0,
                  value: _homeController.priceRangeInitial.value,
                  interval: 10,
                  showTicks: false,
                  showLabels: false,
                  enableTooltip: true,
                  activeColor: Color(0xffEF4765),
                  inactiveColor: Color(0xffACACAC),
                  onChanged: (dynamic value) {
                    setState(() {
                      _homeController.priceRangeInitial.value = value;
                      _homeController.priceRangeFinal.value = value;
                    });
                  },
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Text("Final Price :" +
                _homeController.priceRangeFinal.value.round().toString()),
            // CustomButton(
            //   onPressed: () {},
            //   buttonText: "Submit",
            //   width: Get.width,
            //   height: 55.h,
            // ),
          ],
        ),
      ),
    );
  }
}
