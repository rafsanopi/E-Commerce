import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/widgets/custom_button/custom_button.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class RateSuccess extends StatelessWidget {
  const RateSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: AppColors.white,
      elevation: 0,
      title: Container(
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: AppColors.white
        ),
        child: Column(
          children: [
            CustomText(
              text: AppStrings.ratingSuccessfully,
              fontWeight: FontWeight.w500,
              fontSize: 18.h,
            ),
            CustomText(
              textAlign: TextAlign.center,
              maxLines: 10,
              text: AppStrings.itIsALogEstablishd,
              top: 24.h,
              bottom: 24.h,
            ),
            CustomButton(ontap: (){
              Get.toNamed(AppRoute.homeScreen);
            },text: 'Continue',),
          ],
        ),
      ),
    );
  }
}
