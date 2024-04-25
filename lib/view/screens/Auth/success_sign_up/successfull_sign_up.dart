import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/widgets/CsutomImage/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_button/custom_button.dart';
import 'package:bazar24_7/view/widgets/custom_image/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SucccessfullSignUp extends StatelessWidget {
  const SucccessfullSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
                child: CustomImage(
              imageSrc: AppImages.successImage,
              size: 91.h,
              imageType: ImageType.png,
            )),
            CustomText(
              text: AppStrings.signUpSuccessfully,
              fontSize: 18,
              fontWeight: FontWeight.w500,
              color: AppColors.blueNormal,
              bottom: 8.h,
            ),
            const CustomText(
              text:
                  "Congratulations! You've successfully signed up. Let's get started on your journey.",
              maxLines: 3,
              fontWeight: FontWeight.w400,
              fontSize: 10,
            ),
            SizedBox(
              height: 167.h,
            ),

            ///<====================Get start button=====================================>

            CustomButton(ontap: () {
              Get.toNamed(AppRoute.userModeScreen);
            }),
            SizedBox(
              height: 97.h,
            ),
          ],
        ),
      ),
    );
  }
}
