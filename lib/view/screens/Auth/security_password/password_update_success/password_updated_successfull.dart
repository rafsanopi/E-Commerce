import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/widgets/CsutomImage/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_button/custom_button.dart';
import 'package:bazar24_7/view/widgets/custom_image/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class PassUpdateSuccess extends StatelessWidget {
  const PassUpdateSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ///<=================================Title text============================>
            Column(
              children: [
                Center(
                    child: CustomText(
                  top: 42.h,
                  text: AppStrings.setNewPassword,
                  color: AppColors.blueNormal,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                )),
                const CustomText(
                  text:
                      "Create a new password. Ensure it differs from previous ones for security",
                  color: AppColors.blueNormal,
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  maxLines: 3,
                  top: 8,
                ),
              ],
            ),

            ///<=================================Image Section============================>
            const Center(
                child: CustomImage(
              imageSrc: AppImages.changePassImage,
              imageType: ImageType.png,
            )),

            ///<==============================Continue button==============================>

            Column(
              children: [
                SizedBox(
                  height: 76.h,
                ),
                CustomButton(
                  ontap: () {
                    Get.toNamed(AppRoute.signInScreen);
                  },
                  text: AppStrings.coontinue,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
