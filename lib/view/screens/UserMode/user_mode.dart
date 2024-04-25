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

class UserModeScreen extends StatelessWidget {
  const UserModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center ,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ///<=======================Image Section========================================>
            const CustomImage(
              imageSrc: AppImages.subscriptionImage,
              imageType: ImageType.png,
            ),

            SizedBox(
              height: 8.h,
            ),

         ///<==================================Free  Button===========================>

            CustomButton(
              ontap: () {Get.toNamed(AppRoute.homeScreen); },
              text: "Get Started"
              //AppStrings.getStaredFree,
            ),

            SizedBox(
              height: 14.h,
            ),
            ///<==================================Subscription Button===========================>
            // CustomButton(
            //   ontap: () {},
            //   text: AppStrings.buySubscription,
            // ),

            Column(
              children: [
                CustomText(

                  text: AppStrings.note,
                  top: 32.h,
                ),
                Container(
                    height: 1.h,
                    width: double.maxFinite,
                    color: AppColors.blueNormal),

                SizedBox(height: 52.h,),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
