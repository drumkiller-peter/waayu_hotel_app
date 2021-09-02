import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  var currentAddress = "My location".obs;
  var onSearch = false.obs;
  var searchLocation = "Search Location".obs;
  var priceRangeInitial = 0.0.obs;
  var priceRangeFinal = 0.0.obs;
}
