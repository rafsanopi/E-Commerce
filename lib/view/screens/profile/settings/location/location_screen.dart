import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/helper/network_image.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_icons.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/widgets/custom_button/custom_button.dart';
import 'package:bazar24_7/view/widgets/custom_image/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:bazar24_7/view/widgets/custom_text_formfield/custom_text_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: CustomText(
          text: AppStrings.location,
          fontWeight: FontWeight.w500,
          fontSize: 16.h,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///<===================== profile image =======================>
            Align(
              alignment: Alignment.center,
              child: CustomNetworkImage(
                  borderRadius: BorderRadius.circular(50.sp),
                  imageUrl: AppImages.profile,
                  height: 70.h,
                  width: 70.w),
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImage(
                  imageSrc: AppIcons.location,
                  size: 24.h,
                ),
                CustomText(
                  text: AppStrings.updateYourLocation,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.h,
                  left: 16.w,
                ),
              ],
            ),

            SizedBox(
              height: 24.h,
            ),

            /// <================== Select Your City =========================>
            CustomText(
              text: AppStrings.selectYourCity,
              fontSize: 16.h,
              bottom: 8.h,
              top: 16.h,
            ),

            ///<================== Select Your City text field ===================>
            const CustomTextField(
              textInputAction: TextInputAction.next,
              hintText: AppStrings.selectYourCity,
              borderRadius: 8,
              fillColor: AppColors.white,
              focusBorderColor: Color(0xff9AC699),
              fieldBorderColor: Color(0xff9AC699),
            ),

            /// <================== Select Area =========================>
            CustomText(
              text: AppStrings.selectArea,
              fontSize: 16.h,
              bottom: 8.h,
              top: 24.h,
            ),

            ///<================== Select Area text field ===================>
            const CustomTextField(
              textInputAction: TextInputAction.next,
              hintText: AppStrings.selectArea,
              borderRadius: 8,
              fillColor: AppColors.white,
              focusBorderColor: Color(0xff9AC699),
              fieldBorderColor: Color(0xff9AC699),
            ),

            SizedBox(
              height: 44.h,
            ),

           const CustomImage(imageSrc: AppImages.map,imageType: ImageType.png,)
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 20.w),
        child: CustomButton(
          ontap: () {
            Get.toNamed(AppRoute.settingsScreen);
          },
          text: AppStrings.saveAndUpdate,
        ),
      ),
    );
  }
}
