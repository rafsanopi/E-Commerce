import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/screens/Auth/auth_controller/controller.dart';
import 'package:bazar24_7/view/widgets/custom_button/custom_button.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:bazar24_7/view/widgets/custom_text_formfield/custom_text_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SetpassWordScreen extends StatelessWidget {
   SetpassWordScreen({super.key});
   final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<AuthController>(
          builder: (controller) {
            return SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///<=================================Title Text=====================================>
                  const Center(
                      child: CustomText(
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

                  SizedBox(
                    height: 56.h,
                  ),

                  Form(
                    key: formKey,
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ///<==============================Password section====================================>
                        CustomText(
                          text: AppStrings.password,
                          color: AppColors.blueNormal,
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          bottom: 16.h,
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
                          textInputAction: TextInputAction.next,
                          isPassword: true,
                          textEditingController: controller.newPassController,
                          hintStyle:const TextStyle(color: AppColors.blueLightActive),
                          hintText: AppStrings.password,
                          borderRadius: 8,
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
                          bottom: 16.h,
                          top: 24.h,
                        ),

                        CustomTextField(
                          validator: (value) {
                            if (value.isEmpty) {
                              return AppStrings.fieldCantBeEmpty;
                            } else if (controller.newPassController.text !=
                                controller.confirmPassController.text) {
                              return "Password should be match";
                            }
                            return null;
                          },
                          textEditingController: controller.confirmPassController,
                          textInputAction: TextInputAction.done,
                          isPassword: true,
                          hintText: AppStrings.confirmPassword,
                          hintStyle:const TextStyle(color: AppColors.blueLightActive),
                          borderRadius: 8,
                          fillColor: AppColors.white,
                          focusBorderColor: const Color(0xff9AC699),
                          fieldBorderColor: const Color(0xff9AC699),
                        ),

                        SizedBox(
                          height: 23.h,
                        ),
                      ],
                    ),
                  ),


                ],
              ),
            );
          },
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(vertical: 24.h,horizontal: 20.w),
        child:  ///<============================================Upadte Button===============================================>
        CustomButton(
          ontap: () {
            if(formKey.currentState!.validate()){
              Get.toNamed(AppRoute.passUpdateSuccess);
            }
          },
          text: AppStrings.updatePassword,
        ),
      ),
    );
  }
}
