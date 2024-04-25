import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/screens/profile/profile/profile_screen.dart';
import 'package:bazar24_7/view/widgets/custom_order_card/custom_order_card.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProductStockScreen extends StatelessWidget {
  ProductStockScreen({super.key});
  List<Map<String, String>> productList = [
    {
      'image': AppImages.car1,
      'name': 'LuxTesla features model 3 ',
      'amount': '2',
    },
    {
      'image': AppImages.car2,
      'name': ' Hybrid Hybrid',
      'amount': '3',
    },
    {
      'image': AppImages.car3,
      'name': 'Marcities',
      'amount': '1',
    },
    {
      'image': AppImages.car5,
      'name': 'Tesla',
      'amount': '4',
    },
    {
      'image': AppImages.car2,
      'name': 'Hybrid',
      'amount': '2',
    },
    {
      'image': AppImages.car1,
      'name': 'Luxury',
      'amount': '1',
    },
    {
      'image': AppImages.car2,
      'name': 'Hybrid',
      'amount': '3',
    },
    {
      'image': AppImages.car5,
      'name': 'Tesla',
      'amount': '4',
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: CustomText(
          text: AppStrings.totalProductStock,
          fontWeight: FontWeight.w500,
          fontSize: 16.h,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 20.w),
        child: Column(
          children: List.generate(
              productList.length,
              (index) => CustomOrderCard(
                productImage: productList[index]['image'] ?? '',
                quantity: productList[index]['amount'] ?? '',
                productName: productList[index]['name'] ?? '',
                onTapDelete: () {
                  Get.to(()=>ProfileScreen());
                },
                onTapEdit: () {
                  Get.toNamed(AppRoute.addCarScreen);
                },

                isAmount: false,
                onTapDetails: () {
                  Get.toNamed(AppRoute.orderDetailsScreen);
                },
              )),
        ),
      ),
    );
  }
}
