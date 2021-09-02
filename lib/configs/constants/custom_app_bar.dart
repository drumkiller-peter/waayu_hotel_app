import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waayu/configs/styles/app_colors.dart';

class CustomAppBar extends StatelessWidget implements PreferredSize {
  const CustomAppBar(
      {Key? key, this.needleading, this.isHomePage, this.titleText})
      : super(key: key);

  final bool? needleading;
  final bool? isHomePage;
  final String? titleText;
  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => Size.fromHeight(170.h);

  @override
  Widget build(BuildContext context) {
    TextEditingController _searchController = TextEditingController();
    // HomePageController _homePageController = HomePageController();

    return ClipRRect(
      borderRadius: BorderRadius.circular(34.r),
      child: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0.5.h,
        automaticallyImplyLeading: false,
        flexibleSpace: Container(
          height: 170.h,
          padding: EdgeInsets.fromLTRB(14.w, 24.h, 14.w, 0),
          decoration: BoxDecoration(
            color: AppColors.primaryColor,
            borderRadius: BorderRadius.circular(34.r),
          ),
          // child:
        ),
      ),
    );
  }
}
