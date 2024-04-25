import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/widgets/custom_button/custom_button.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:bazar24_7/view/widgets/custom_text_formfield/custom_text_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ForgotPassWord extends StatelessWidget {
   ForgotPassWord({super.key});

   final fromKey= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w,vertical: 44.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ///<========================================Title text=========================================================>

              Column(
                children: [
                  const Center(
                      child: CustomText(
                    text: AppStrings.forgotPassWord,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: AppColors.blueNormal,
                  )),
                  CustomText(
                    text:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor",
                    maxLines: 3,
                    color: AppColors.blueNormal,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                    top: 8.h,
                  ),
                ],
              ),

              SizedBox(
                height: 77.h,
              ),
              Form(
                 key: fromKey,
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///<========================================Email Section=========================================================>
                  CustomText(
                    text: AppStrings.email,
                    color: AppColors.blueNormal,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                    bottom: 8.h,
                    top: 8.h,
                  ),
                   CustomTextField(

                     validator: (value) {
                       if (value.isEmpty) {
                         return AppStrings.fieldCantBeEmpty;
                       } else if (value.length <8) {
                         return AppStrings.enterValidEmail;
                       } else if (!AppStrings.emailRegexp.hasMatch(value)) {
                         return AppStrings.enterValidEmail;
                       } else {
                         return null;
                       }
                     },
                    hintText: AppStrings.email,
                     hintStyle:const TextStyle(color: AppColors.blueLightActive),
                    borderRadius: 8,
                    fillColor: AppColors.white,
                    // focusBorderColor: Color(0xff9AC699),
                    // fieldBorderColor: Color(0xff9AC699),
                  ),
                ],
              )),

              Column(
                children: [
                  SizedBox(height: 76.h),

                  ///<==============================================Send Otp button===============================================>
                  CustomButton(
                    ontap: () {
                      if(fromKey.currentState!.validate()){
                        Get.toNamed(AppRoute.otpScreen);
                        //controller.handleForgetPassword();
                      }
                    },
                    text: AppStrings.sendACode,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
