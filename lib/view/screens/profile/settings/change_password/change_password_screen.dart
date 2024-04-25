import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/helper/network_image.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/screens/Auth/auth_controller/controller.dart';
import 'package:bazar24_7/view/screens/profile/settings/controller/settings_controller.dart';
import 'package:bazar24_7/view/widgets/custom_button/custom_button.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:bazar24_7/view/widgets/custom_text_formfield/custom_text_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ChangePasswordScreen extends StatelessWidget {
  const ChangePasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: CustomText(
          text: AppStrings.changePassword,
          fontWeight: FontWeight.w500,
          fontSize: 16.h,
        ),
      ),

      body: GetBuilder<AuthController>(
        builder: (controller) {
          return SingleChildScrollView(
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
                SizedBox(height: 16.h,),
                ///<======================================= current password======================================>
                CustomText(
                  text: AppStrings.yourCurrentPassword,
                  color: AppColors.blueNormal,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  top: 16.h,
                  bottom: 8.h,
                ),
                CustomTextField(
                  validator: (value) {
                    if (value.isEmpty) {
                      return AppStrings.fieldCantBeEmpty;
                    } else if (value.length < 8 ||
                        !AppStrings.passRegexp.hasMatch(value)) {
                      return AppStrings.passwordLengthAndContain;
                    } else {
                      return null;
                    }
                  },
                  textEditingController: controller.changeCurrentPassController,
                  textInputAction: TextInputAction.done,
                  isPassword: true,
                  hintText: AppStrings.yourCurrentPassword,
                  hintStyle: TextStyle(color: AppColors.blueLightActive,),
                  borderRadius: 8,
                  fillColor: AppColors.white,
                  focusBorderColor: Color(0xff9AC699),
                  fieldBorderColor: Color(0xff9AC699),
                ),

                ///<==================== change password ============================>
                CustomText(
                  text: AppStrings.changePassword,
                  color: AppColors.blueNormal,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  bottom: 8.h,
                  top: 16.h,
                ),

                 CustomTextField(
                   validator: (value) {
                     if (value.isEmpty) {
                       return AppStrings.fieldCantBeEmpty;
                     } else if (value.length < 8 ||
                         !AppStrings.passRegexp.hasMatch(value)) {
                       return AppStrings.passwordLengthAndContain;
                     } else {
                       return null;
                     }
                   },
                  textEditingController: controller.changePassController,
                  textInputAction: TextInputAction.next,
                  isPassword: true,
                  hintText: AppStrings.changePassword,
                  borderRadius: 8,
                   hintStyle: TextStyle(color: AppColors.blueLightActive,),
                  fillColor: AppColors.white,
                  focusBorderColor: Color(0xff9AC699),
                  fieldBorderColor: Color(0xff9AC699),
                ),

                ///<==============================Confirm Password section====================================>
                CustomText(
                  text: AppStrings.confirmPassword,
                  color: AppColors.blueNormal,
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  bottom: 8.h,
                  top: 16.h,
                ),

                 CustomTextField(
                   validator: (value) {
                     if (value.isEmpty) {
                       return AppStrings.fieldCantBeEmpty;
                     } else if (controller.changePassController.text !=
                         controller.changeConfirmPassController.text) {
                       return "Password should be match";
                     }
                     return null;
                   },
                  textEditingController: controller.changeConfirmPassController,
                  textInputAction: TextInputAction.done,
                  isPassword: true,
                  hintText: AppStrings.confirmPassword,
                  borderRadius: 8,
                  fillColor: AppColors.white,
                   hintStyle: TextStyle(color: AppColors.blueLightActive,),
                  focusBorderColor: Color(0xff9AC699),
                  fieldBorderColor: Color(0xff9AC699),
                ),
              ],
            ),
          );
        }
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 20.w),
        child: CustomButton(
          ontap: (){
            Get.toNamed(AppRoute.settingsScreen);
          },
          text: AppStrings.saveAndUpdate,
        ),
      ),
    );
  }
}
