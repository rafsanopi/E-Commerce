import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeController extends GetxController{
  RxInt bannerIndex = 0.obs;
  RxInt selectedIndex=0.obs;
  RxBool isFavour=true.obs;
  RxBool isServiceNameExpanded = false.obs;
  Rx<PageController> pageController = PageController().obs;
  ///<===================== search ==============================>
  TextEditingController searchController=TextEditingController();

  ///<======================== filter ========================>
   int distance = 0;

   ///<======================== category ======================>
  int categoryIndex= 0;


  ///<==================== select area location ==========================>

  TextEditingController city=TextEditingController();
  TextEditingController area=TextEditingController();

  updateLocation() async {
    Map<String, dynamic> information = {
      'city': city.text,
      'area': area.text,
    };

    var encodedData = jsonEncode(information);

    print("================= ${encodedData}");
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    await prefs.setString('locationData', encodedData);

    getLocation();
  }

  Map<String, dynamic> locationDetails = {};
  getLocation() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    final String? locationData = prefs.getString('locationData');
    if (locationData != null) {
      var decodedData = jsonDecode(locationData);
      locationDetails = decodedData;
      update();
    }
  }

  @override
  void onInit() {
    getLocation();
    super.onInit();
  }
}