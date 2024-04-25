import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/widgets/CsutomImage/custom_image.dart';
import 'package:bazar24_7/view/widgets/bottom_nab_bar/bottom_nav_bar.dart';
import 'package:bazar24_7/view/widgets/custom_button/custom_button.dart';
import 'package:bazar24_7/view/widgets/custom_image/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SelectProductScreen extends StatelessWidget {
  const SelectProductScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(currentIndex: 2),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 64.h, horizontal: 20.w),
        child: Column(
          children: [
            ///<=============== select category ==================>
            CustomText(
              text: AppStrings.selectCategory,
              fontWeight: FontWeight.w500,
              fontSize: 16.h,
            ),

            ///<==================== image =======================>
            const CustomImage(
              imageSrc: AppImages.addProductImage,
              imageType: ImageType.png,
            ),
            SizedBox(
              height: 24.h,
            ),

            ///<=================  car =================>
            CustomButton(
              ontap: () {
                Get.toNamed(AppRoute.addCarScreen);
              },
              text: AppStrings.car,
            ),
            SizedBox(
              height: 16.h,
            ),

            ///<=================  house =================>
            CustomButton(
              ontap: () {
                Get.toNamed(AppRoute.addHouseScreen);
              },
              text: AppStrings.house,
            ),
            SizedBox(
              height: 16.h,
            ),

            ///<=================  mobile =================>
            CustomButton(
              ontap: () {
                Get.toNamed(AppRoute.addPhoneScreen);
              },
              text: AppStrings.mobile,
            ),
          ],
        ),
      ),
    );
  }
}
