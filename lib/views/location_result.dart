import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waayu/configs/styles/app_colors.dart';
import 'package:get/get.dart';
import 'package:waayu/configs/styles/custom_text_style.dart';
import 'package:waayu/configs/widgets/custom_safe_area.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:waayu/views/starred_hotels.dart';

class LocationResult extends StatelessWidget {
  const LocationResult({Key? key}) : super(key: key);

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
                    child: SvgPicture.asset(
                      "assets/images/map.svg",
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
                              child: DefaultTabController(
                                length: 4,
                                child: Column(children: [
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
                                      unselectedLabelColor:
                                          AppColors.greyTextColor,
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
                                ]),
                              ),
                            ));
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
// AIzaSyDUNTojXnkKms1xBxOVO1-Cc0Qh_VahZro