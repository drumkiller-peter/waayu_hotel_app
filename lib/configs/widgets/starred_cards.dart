import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waayu/configs/styles/app_colors.dart';
import 'package:waayu/configs/styles/custom_text_style.dart';

class StarredCards extends StatelessWidget {
  const StarredCards({
    Key? key,
    required this.hideDiscount,
    required this.imageUrl,
    this.discountPercent,
    required this.title,
    required this.address,
    required this.bedCount,
    required this.poolCount,
    required this.tubCount,
    required this.isSearchResult,
    this.rate,
    this.onTap,
  }) : super(key: key);

  final bool? hideDiscount;
  final bool? isSearchResult;
  final String imageUrl;
  final String? discountPercent;
  final String title;
  final String address;
  final String bedCount;
  final String poolCount;
  final String tubCount;
  final String? rate;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 2,
                  blurRadius: 5)
            ]),
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 12),
        child: Row(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.asset(
                  imageUrl,
                  height: 130,
                  width: Get.width * 0.3,
                  fit: BoxFit.cover,
                )),
            SizedBox(
              width: 10,
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  hideDiscount == true
                      ? Container()
                      : Container(
                          decoration: BoxDecoration(
                              color: AppColors.purpleColor,
                              borderRadius: BorderRadius.circular(20)),
                          height: 23.h,
                          width: 90.w,
                          child: Center(
                            child: Text(
                              " ${discountPercent.toString()} off",
                              style: CustomTextStyle.textStyle14_400(
                                  color: AppColors.white),
                            ),
                          ),
                        ),
                  hideDiscount == true
                      ? SizedBox()
                      : SizedBox(
                          height: 8.h,
                        ),
                  Text(
                    title,
                    style: CustomTextStyle.textStyle14_700(),
                    overflow: TextOverflow.ellipsis,
                  ),
                  hideDiscount == true
                      ? SizedBox(
                          height: 8.h,
                        )
                      : SizedBox(),
                  Text(
                    address,
                    style: CustomTextStyle.textStyle12_400(
                      color: AppColors.greyTextColor,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                  hideDiscount == true
                      ? SizedBox(
                          height: 15.h,
                        )
                      : SizedBox(
                          height: 8.h,
                        ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(
                        Icons.bed,
                        size: 20,
                        color: AppColors.greyTextColor,
                      ),
                      Text(
                        bedCount,
                        style: CustomTextStyle.textStyle14_400(
                            color: AppColors.greyTextColor),
                      ),
                      Icon(
                        Icons.pool,
                        size: 20,
                        color: AppColors.greyTextColor,
                      ),
                      Text(
                        poolCount,
                        style: CustomTextStyle.textStyle14_400(
                            color: AppColors.greyTextColor),
                      ),
                      Icon(
                        Icons.bathtub,
                        size: 20,
                        color: AppColors.greyTextColor,
                      ),
                      Text(
                        tubCount,
                        style: CustomTextStyle.textStyle14_400(
                            color: AppColors.greyTextColor),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 8.h,
                  ),
                  isSearchResult == true
                      ? Row(
                          children: [
                            Text(
                              "From ",
                              style: CustomTextStyle.textStyle12_400(),
                            ),
                            Text(
                              rate ?? "",
                              style: CustomTextStyle.textStyle12_700(),
                            )
                          ],
                        )
                      : SizedBox()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
