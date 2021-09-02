import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:waayu/configs/styles/app_colors.dart';
import 'package:waayu/configs/styles/custom_text_style.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:waayu/configs/widgets/starred_cards.dart';
import 'package:waayu/views/rent_hotel.dart';

class FiveStarredHotel extends StatelessWidget {
  final bool? hideDiscount;
  FiveStarredHotel({this.hideDiscount});

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
    var _stars = ["5.5", "3.5", "5.5", "5"];
    var _number = [
      "980123456",
      "980123456",
      "980123456",
      "980123456",
    ];
    var _description = [
      "Lorem ipsum dolor sit amet, consectetur adipiscing   elit, sed do eiusmod tempor incididunt ut labore et"
          "Lorem ipsum dolor sit amet, consectetur adipiscing   elit, sed do eiusmod tempor incididunt ut labore et",
      "Lorem ipsum dolor sit amet, consectetur adipiscing   elit, sed do eiusmod tempor incididunt ut labore et",
      "Lorem ipsum dolor sit amet, consectetur adipiscing   elit, sed do eiusmod tempor incididunt ut labore et"
    ];
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return StarredCards(
                    hideDiscount: hideDiscount,
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
                      Get.to(() => RentHotel(
                            hotelName: _hotelNames[index],
                            imageUrl: _imageUrl[index],
                            star: _stars[index],
                            address: _address[index],
                            number: _number[index],
                            description: _description[index],
                            price: _priceRate[index],
                          ));
                    },
                  );
                }),
          ),
        ],
      ),
    );
  }
}
