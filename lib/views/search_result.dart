import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waayu/configs/styles/custom_text_style.dart';
import 'package:waayu/views/header.dart';
import 'package:waayu/configs/widgets/custom_safe_area.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waayu/configs/widgets/starred_cards.dart';
import 'package:waayu/views/rent_hotel.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _hotelNames = [
      "Prime Park Hotel",
      "Muscat Holiday Resort",
      "Ocean Paradise",
      "Hotel Diamond Palace"
    ];
    var _imageUrl = [
      "assets/images/room5.jpeg",
      "assets/images/room6.jpg",
      "assets/images/room7.jpg",
      "assets/images/room8.jpg",
    ];
    var _address = [
      "Plot 58, Block C Hotel Motel Zone",
      "Laboni Beach, Cox's Bazar",
      "Plot 58, Block C Hotel Motel Zone",
      "Laboni Beach, Cox's Bazar",
    ];

    var _discountPercent = [
      "60%",
      "20%",
      "40%",
      "5%",
    ];
    var _bedCounts = ["120", "230", "300", "420"];
    var _poolCounts = ["10", "20", "15", "7"];
    var _tubCounts = ["5", "1", "3", "7"];
    var _priceRate = [
      "\$30/month",
      "\$60/month",
      "\$90/month",
      "\$30/month",
    ];
    var _description = [
      "Lorem ipsum dolor sit amet, consectetur adipiscing   elit, sed do eiusmod tempor incididunt ut labore et",
      "Lorem ipsum dolor sit amet, consectetur adipiscing   elit, sed do eiusmod tempor incididunt ut labore et",
      "Lorem ipsum dolor sit amet, consectetur adipiscing   elit, sed do eiusmod tempor incididunt ut labore et",
      "Lorem ipsum dolor sit amet, consectetur adipiscing   elit, sed do eiusmod tempor incididunt ut labore et",
    ];
    return CustomSafeArea(
        child: Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 14.h, horizontal: 24.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              CustomHeader(),
              SizedBox(
                height: 15.h,
              ),
              Row(
                children: [
                  Text(
                    "Result for ",
                    style: CustomTextStyle.textStyle16_400(),
                  ),
                  Text(
                    "Cox's Bazar ",
                    style: CustomTextStyle.textStyle16_700(),
                  ),
                ],
              ),
              SizedBox(
                height: 15.h,
              ),
              ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return StarredCards(
                      hideDiscount: true,
                      isSearchResult: false,
                      imageUrl: _imageUrl[index],
                      discountPercent: _discountPercent[index],
                      title: _hotelNames[index],
                      address: _address[index],
                      bedCount: _bedCounts[index],
                      poolCount: _poolCounts[index],
                      tubCount: _tubCounts[index],
                      rate: _priceRate[index],
                      onTap: () {
                        Get.to(
                          () => RentHotel(
                            hotelName: _hotelNames[index],
                            imageUrl: _imageUrl[index],
                            star: "5.5",
                            address: _address[index],
                            number: "98051156",
                            description: _description[index],
                            price: _priceRate[index],
                          ),
                        );
                      },
                    );
                  }),
            ],
          ),
        ),
      ),
    ));
  }
}
