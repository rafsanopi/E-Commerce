import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/helper/network_image.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/widgets/custom_order_card/custom_order_card.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OrderHistoryScreen extends StatelessWidget {
    OrderHistoryScreen({super.key});
    List<Map<String, String>> productList = [
      {
        'image': AppImages.car1,
        'name': 'LuxTesla features',
        'location': '3452 vinings sates way Mableton. GA 30126 ',
      },
      {
        'image': AppImages.car2,
        'name': ' Hybrid Hybrid',
        'location': '3452 vinings sates way Mableton. GA 30126 ',
      },
      {
        'image': AppImages.car3,
        'name': 'Marcities',
        'location': '3452 vinings sates wayMableton. GA 30126  ',
      },
      {
        'image': AppImages.car5,
        'name': 'Tesla',
        'location': '3452 vinings sates way  ',
      },
      {
        'image': AppImages.car2,
        'name': 'Hybrid',
        'location': '3452 vinings sates way Mableton. GA 30126 ',
      },
      {
        'image': AppImages.car1,
        'name': 'Luxury',
        'location': '3452 vinings sates way Mableton. GA 30126 ',
      },
      {
        'image': AppImages.car2,
        'name': 'Hybrid',
        'location': '3452 vinings sates way Mableton. GA 30126 ',
      },

      {
        'image': AppImages.car5,
        'name': 'Tesla',
        'location': '3452 vinings sates way Mableton. GA 30126 ',
      },

    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: CustomText(
          text: AppStrings.orderHistory,
          fontWeight: FontWeight.w500,
          fontSize: 16.h,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 20.w),
        child: Column(
          children: List.generate(productList.length, (index) => CustomOrderCard(
            productImage: productList[index]['image'] ??'',
            productName: productList[index]['name'] ??'',
            productLocation: productList[index]['location'] ??'',
            productDate: '20 April 2024',
            onTapDelete: (){},
            onTapEdit: (){},
            isDetails: false,
            onTapDetails: (){
              Get.toNamed(AppRoute.rateProductScreen);
            },
            isPopup: false,
            buttonText: AppStrings.rateThisProducts,
          )),
        ),
      ),
    );
  }
}
