import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_const.dart';
import 'package:bazar24_7/utils/app_icons.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/screens/Auth/auth_controller/controller.dart';
import 'package:bazar24_7/view/widgets/CsutomImage/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_button/custom_button.dart';
import 'package:bazar24_7/view/widgets/custom_image/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:bazar24_7/view/widgets/custom_text_formfield/custom_text_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignInScreen extends StatelessWidget {
  SignInScreen({super.key});
  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GetBuilder<AuthController>(builder: (controller) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 45.h,
                  ),
                  const Center(
                      child: CustomText(
                    text: AppStrings.welcomeBack,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    textAlign: TextAlign.center,
                    color: AppColors.blueNormal,
                  )),

                  const CustomText(
                    text:
                        "Welcome back! Log in to access your account and continue where you left off.",
                    color: AppColors.blueNormal,
                    maxLines: 3,
                    fontWeight: FontWeight.w400,
                    fontSize: 12,
                  ),
                  Form(
                      key: formKey,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ///<=======================================Email section======================================>
                          SizedBox(
                            height: 40.h,
                          ),

                          CustomText(
                            text: AppStrings.email,
                            color: AppColors.blueNormal,
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            bottom: 8.h,
                          ),

                          CustomTextField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return AppStrings.fieldCantBeEmpty;
                              } else if (!AppStrings.emailRegexp
                                  .hasMatch(controller.signInEmail.text)) {
                                return AppStrings.enterValidEmail;
                              } else {
                                return null;
                              }
                            },
                            textInputAction: TextInputAction.next,
                            textEditingController: controller.signInEmail,
                            hintText: AppStrings.email,
                            hintStyle:
                                TextStyle(color: AppColors.blueLightActive),
                            borderRadius: 8,
                            fillColor: AppColors.white,
                            // focusBorderColor: const Color(0xff9AC699),
                            // fieldBorderColor: const Color(0xff9AC699),
                          ),

                          ///<=======================================Password section======================================>
                          CustomText(
                            text: AppStrings.password,
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
                            textEditingController: controller.passWordSignIn,
                            textInputAction: TextInputAction.done,
                            isPassword: true,
                            hintText: AppStrings.password,
                            hintStyle:
                                TextStyle(color: AppColors.blueLightActive),
                            borderRadius: 8,
                            fillColor: AppColors.white,
                            // focusBorderColor: Color(0xff9AC699),
                            // fieldBorderColor: Color(0xff9AC699),
                          ),
                          SizedBox(
                            height: 8.h,
                          ),

                          SizedBox(
                            height: 16.h,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              /// <===============================================Remember button==============================>
                              GestureDetector(
                                onTap: () {
                                  controller.isRemember =
                                      !controller.isRemember;
                                  controller.update();
                                  // SharePrefsHelper.setBool(AppConstants.rememberMe,  controller.isRemember);
                                },
                                child: Row(
                                  children: [
                                    Container(
                                      alignment: Alignment.center,
                                      height: 14,
                                      width: 14,
                                      decoration: BoxDecoration(
                                        color: controller.isRemember
                                            ? AppColors.greenNormal
                                            : AppColors.white,
                                        borderRadius: BorderRadius.circular(4),
                                      ),
                                      child: Center(
                                        child: controller.isRemember
                                            ? Icon(
                                                Icons.check,
                                                color: controller.isRemember
                                                    ? AppColors.white
                                                    : AppColors.blueNormal,
                                                size: 14,
                                              )
                                            : const SizedBox(),
                                      ),
                                    ),
                                    CustomText(
                                      left: 8.w,
                                      color: AppColors.greenNormal,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 16,
                                      text: "Remember me",
                                    ),
                                  ],
                                ),
                              ),

                              /// <===============================================Forgot Password  Button============================>

                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(AppRoute.forgotPassWord);
                                  //  arguments:ForgotPassWordEnum.signIn);
                                },
                                child: CustomText(
                                  text: AppStrings.forgotPassWord,
                                  color: AppColors.greenNormal,
                                  fontSize: 16.h,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 45.h,
                          ),
                        ],
                      )),

                  ///<======================================Login Button=========================================>
                  CustomButton(
                    ontap: () async {
                      if (formKey.currentState!.validate()) {
                       /* SharedPreferences preferences = await SharedPreferences.getInstance();
                        await preferences.setBool(AppConstants.signIn, false);
                        bool? isSignIn = await preferences.getBool(AppConstants.signIn);
                        if (isSignIn == false)*/
                          Get.toNamed(AppRoute.homeScreen);
                      }
                    },
                    text: AppStrings.logIn,
                    bottom: 23.h,
                  ),


                  ///<======================================Or  section =========================================>
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 1.h,
                        width: 121.w,
                        color: AppColors.blueLight,
                      ),
                      CustomText(
                        text: AppStrings.orLogin,
                        color: AppColors.blueLightActive,
                        left: 2.w,
                        right: 2.w,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                      Container(
                        height: 1.h,
                        width: 121.w,
                        color: AppColors.blueLight,
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 23.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ///<======================================Facebook Icon=========================================>
                      Container(
                        width: 28.w,
                        height: 28.h,
                        decoration: const BoxDecoration(
                          color: AppColors.greenLightHover,
                          shape: BoxShape.circle,
                        ),
                        child: CustomImage(
                          imageSrc: AppIcons.facebook,
                          size: 26.h,

                        ),
                      ),

                      ///<======================================Google Icon =========================================>
                      SizedBox(
                        width: 32.w,
                      ),

                      Container(
                        padding: const EdgeInsets.all(2),
                        width: 28.w,
                        height: 28.h,
                        decoration: const BoxDecoration(
                          color: AppColors.greenLightHover,
                          shape: BoxShape.circle,
                        ),
                        child: CustomImage(
                          imageSrc: AppIcons.google,
                          size: 26.h,

                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 52.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        text: AppStrings.youDontHaveAnAccount,
                        color: AppColors.blueNormal,
                        fontWeight: FontWeight.w400,
                        fontSize: 12.h,

                        /// <==============================Sign Up==============================>
                      ),
                      SizedBox(
                        width: 8.w,
                      ),
                      GestureDetector(
                        onTap: () {
                          Get.toNamed(AppRoute.signUpScreen);
                        },
                        child: CustomText(
                          text: AppStrings.signUp,
                          color: AppColors.greenNormal,
                          fontSize: 12.h,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          );
        }),
      ),
    );
  }
}
