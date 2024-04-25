import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/widgets/custom_button/custom_button.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:bazar24_7/view/widgets/custom_text_formfield/custom_text_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CurrentLocationScreen extends StatelessWidget {
  const CurrentLocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            ///<============== text ===================>
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomText(
                    text: AppStrings.selectArea,
                    fontWeight: FontWeight.w500,
                    fontSize: 16.h,
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  CustomText(
                    text: AppStrings.pleaseSelectYourCitricArea,
                    left: 16.w,
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 24.h,
            ),

            /// <================== Select Your City =========================>
            CustomText(
              text: AppStrings.selectYourCurrentCity,
              fontSize: 16.h,
              bottom: 8.h,
              top: 16.h,
            ),

            ///<================== Select Your City text field ===================>
            const CustomTextField(
              textInputAction: TextInputAction.next,
              hintText: AppStrings.selectYourCurrentCity,
              borderRadius: 8,
              fillColor: AppColors.white,
              focusBorderColor: Color(0xff9AC699),
              fieldBorderColor: Color(0xff9AC699),
            ),

            /// <================== Select Area =========================>
            CustomText(
              text: AppStrings.selectYourCurrentArea,
              fontSize: 16.h,
              bottom: 8.h,
              top: 24.h,
            ),

            ///<================== Select Area text field ===================>
            const CustomTextField(
              textInputAction: TextInputAction.next,
              hintText: AppStrings.selectYourCurrentArea,
              borderRadius: 8,
              fillColor: AppColors.white,
              focusBorderColor: Color(0xff9AC699),
              fieldBorderColor: Color(0xff9AC699),
            ),

            SizedBox(
              height: 24.h,
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 20.w),
        child: CustomButton(
          ontap: () {
            Get.toNamed(AppRoute.settingsScreen);
          },
          text: AppStrings.submit,
        ),
      ),
    );
  }
}
