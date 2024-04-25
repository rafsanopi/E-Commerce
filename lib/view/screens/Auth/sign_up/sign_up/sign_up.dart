import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/screens/Auth/auth_controller/controller.dart';
import 'package:bazar24_7/view/screens/Auth/sign_up/sign_up_otp/sign_up_otp.dart';
import 'package:bazar24_7/view/widgets/custom_button/custom_button.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:bazar24_7/view/widgets/custom_text_formfield/custom_text_formfield.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<AuthController>(builder: (controller) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.vertical,
          padding: EdgeInsets.symmetric(horizontal: 24.w),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),

                ///<==================================Title text===============================>
                const Center(
                    child: CustomText(
                  text: AppStrings.createAccount,
                  color: AppColors.blueNormal,
                  textAlign: TextAlign.center,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                )),

                Form(
                  key: formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///<===================================Name section============================>
                      SizedBox(
                        height: 31.h,
                      ),

                      CustomText(
                        text: AppStrings.fullName,
                        color: AppColors.blueNormal,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        bottom: 8.h,
                      ),

                      CustomTextField(
                        validator: (value) {
                          if (value == null || value.toString().isEmpty) {
                            return AppStrings.fieldCantBeEmpty;
                          } else if (value.length < 4) {
                            return AppStrings.enterAValidName;
                          }
                          return null;
                        },
                        textInputAction: TextInputAction.next,
                        textEditingController: controller.fullNameSignUp,
                        hintText: AppStrings.fullName,
                        hintStyle: TextStyle(color: AppColors.blueLightActive),
                        borderRadius: 8,
                        fillColor: AppColors.white,
                        // focusBorderColor: Color(0xff9AC699),
                        // fieldBorderColor: Color(0xff9AC699),
                      ),

                      ///<===========================Email section======================================>

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
                          if (value!.isEmpty) {
                            return AppStrings.pleaseEnterYourEmailAddresss;
                          } else if (!AppStrings.emailRegexp
                              .hasMatch(controller.emailSignUp.text)) {
                            return AppStrings.enterValidEmail;
                          } else {
                            return null;
                          }
                        },
                        textInputAction: TextInputAction.next,
                        textEditingController: controller.emailSignUp,
                        hintText: AppStrings.email,
                        hintStyle: TextStyle(color: AppColors.blueLightActive),
                        borderRadius: 8,
                        fillColor: AppColors.white,
                        // focusBorderColor: Color(0xff9AC699),
                        // fieldBorderColor: Color(0xff9AC699),
                      ),

                      ///<=================================phone number section=============================>
                      CustomText(
                        text: AppStrings.phoneNumber,
                        color: AppColors.blueNormal,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        bottom: 8.h,
                        top: 8.h,
                      ),

                      CustomTextField(
                        validator: (value) {
                          if (value == null || value.toString().isEmpty) {
                            return AppStrings.fieldCantBeEmpty;
                          } else if (value.length < 4) {
                            return "Enter a valid phone number";
                          }
                          return null;
                        },
                        textEditingController: controller.phoneSignUp,
                        textInputAction: TextInputAction.next,
                        hintText: AppStrings.phoneNumber,
                        hintStyle: TextStyle(color: AppColors.blueLightActive),
                        borderRadius: 8,
                        fillColor: AppColors.white,
                        // focusBorderColor: Color(0xff9AC699),
                        // fieldBorderColor: Color(0xff9AC699),
                      ),

                      ///<=================================== address ============================>
                      CustomText(
                        text: AppStrings.address,
                        color: AppColors.blueNormal,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        bottom: 8.h,
                        top: 16,
                      ),

                      CustomTextField(
                        validator: (value) {
                          if (value == null || value.toString().isEmpty) {
                            return AppStrings.fieldCantBeEmpty;
                          }
                          return null;
                        },
                        textInputAction: TextInputAction.next,
                        textEditingController: controller.addressSignUp,
                        hintText: AppStrings.enterAddress,
                        hintStyle: TextStyle(color: AppColors.blueLightActive),
                        borderRadius: 8,
                        fillColor: AppColors.white,
                        // focusBorderColor: Color(0xff9AC699),
                        // fieldBorderColor: Color(0xff9AC699),
                      ),

                      ///<==============================Password section====================================>
                      CustomText(
                        text: AppStrings.password,
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
                          } else if (value.length < 8 ||
                              !AppStrings.passRegexp.hasMatch(value)) {
                            return AppStrings.passwordLengthAndContain;
                          } else {
                            return null;
                          }
                        },
                        textInputAction: TextInputAction.next,
                        textEditingController: controller.passSignUp,
                        isPassword: true,
                        hintText: AppStrings.password,
                        hintStyle: TextStyle(color: AppColors.blueLightActive),
                        borderRadius: 8,
                        fillColor: AppColors.white,
                        // focusBorderColor: Color(0xff9AC699),
                        // fieldBorderColor: Color(0xff9AC699),
                      ),

                      ///<==========================Confirm password========================================>
                      CustomText(
                        text: AppStrings.confirmPassword,
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
                          } else if (value != controller.passSignUp.text) {
                            return "Password should match";
                          }
                          return null;
                        },
                        textEditingController: controller.confirmPassSignup,
                        textInputAction: TextInputAction.done,
                        isPassword: true,
                        hintText: AppStrings.confirmPassword,
                        hintStyle: TextStyle(color: AppColors.blueLightActive),
                        borderRadius: 8,
                        fillColor: AppColors.white,
                        // focusBorderColor: Color(0xff9AC699),
                        // fieldBorderColor: Color(0xff9AC699),
                      ),

                      SizedBox(
                        height: 16.h,
                      ),
                    ],
                  ),
                ),

                ///<==============================================Sign Up Button==========================================>

                CustomButton(
                  ontap: () {
                    if (formKey.currentState!.validate()) {
                      Get.to(()=> SignUpOtp());
                    }
                  },
                  text: AppStrings.signUp,
                ),

                SizedBox(
                  height: 32.h,
                ),

                RichText(
                  maxLines: 2,
                  text: TextSpan(
                    children: <TextSpan>[
                      TextSpan(
                        text:
                            "By clicking sign up you certify that you agree to our privacy policy and",
                        style: TextStyle(
                            color: AppColors.blueNormal,
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp),
                      ),
                      TextSpan(
                        text: " terms",
                        style: TextStyle(
                            color: AppColors.greenNormal,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            // Get.toNamed(AppRoute.termsOfServicesSCreen);
                          },
                      ),
                      TextSpan(
                        text: " and ",
                        style: TextStyle(
                            color: AppColors.blueNormal,
                            fontWeight: FontWeight.w500,
                            fontSize: 14.sp),
                      ),
                      TextSpan(
                        text: "condition",
                        style: TextStyle(
                            color: AppColors.greenNormal,
                            fontSize: 14.sp,
                            fontWeight: FontWeight.w500),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            //Get.toNamed(AppRoute.privacyPolicyScreen);
                          },
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  height: 16.h,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomText(
                      text: AppStrings.youDontHaveAnAccount,
                      color: AppColors.blueNormal,
                      fontWeight: FontWeight.w400,
                      fontSize: 12.h,

                      /// <==============================Sign in text==============================>
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoute.signInScreen);
                      },
                      child: CustomText(
                        text: AppStrings.logIn,
                        color: AppColors.greenNormal,
                        fontSize: 12.h,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  height: 18.h,
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}
