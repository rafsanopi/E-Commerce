import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/helper/network_image.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_icons.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/widgets/bottom_sheet/bottom_sheet_screen.dart';
import 'package:bazar24_7/view/widgets/custom_profile_container/custom_profile_container.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: CustomText(
          text: AppStrings.settings,
          fontWeight: FontWeight.w500,
          fontSize: 16.h,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 20.w),
        child: Column(
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
              height: 44.h,
            ),

          /*  ///<===================== location ==============================>
            CustomProfileContainer(
                onTap: () {
                  Get.toNamed(AppRoute.locationScreen);
                },
                icon: AppIcons.location,
                name: AppStrings.location),*/

            ///<===================== changePassword ==============================>
            CustomProfileContainer(
                onTap: () {
                  Get.toNamed(AppRoute.changePasswordScreen);
                },
                icon: AppIcons.location,
                name: AppStrings.changePassword),

            ///<===================== privacyPolicy ==============================>
            CustomProfileContainer(
                onTap: () {
                  Get.toNamed(AppRoute.privacyPolicyScreen);
                },
                icon: AppIcons.policy,
                name: AppStrings.privacyPolicy),

            ///<===================== deleteAccount ==============================>
            CustomProfileContainer(
                onTap: () {
                  showModalBottomSheet(
                      isScrollControlled: true,
                      backgroundColor: AppColors.white,
                      context: context,
                      builder: (context) {
                        return BottomSheetScreen(mainText: AppStrings.deleteAccount, sureText: AppStrings.areYouSureYouWantToDeleteYourAccount, onTap: (){
                          Get.offAllNamed(AppRoute.signInScreen);
                        });
                      });
                },
                icon: AppIcons.delete,
                name: AppStrings.deleteAccount),

        /*    ///<===================== setYourCurrentLocation ==============================>
            CustomProfileContainer(
                onTap: () {
                  Get.toNamed(AppRoute.currentLocationScreen);
                },
                icon: AppIcons.location,
                name: AppStrings.setYourCurrentLocation),*/

           /* ///<===================== orderHistory ==============================>
            CustomProfileContainer(
                onTap: () {
                  Get.toNamed(AppRoute.orderHistoryScreen);
                },
                icon: AppIcons.order,
                name: AppStrings.orderHistory),*/

            ///<===================== about ==============================>
            CustomProfileContainer(
                onTap: () {
                  Get.toNamed(AppRoute.aboutScreen);
                },
                icon: AppIcons.about,
                name: AppStrings.about),
          ],
        ),
      ),
    );
  }
}
