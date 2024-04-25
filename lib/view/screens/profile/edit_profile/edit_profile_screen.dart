import 'dart:io';

import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/helper/network_image.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_icons.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/screens/profile/controller/profile_controller.dart';
import 'package:bazar24_7/view/screens/profile/profile/profile_screen.dart';
import 'package:bazar24_7/view/widgets/custom_button/custom_button.dart';
import 'package:bazar24_7/view/widgets/custom_image/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:bazar24_7/view/widgets/custom_text_formfield/custom_text_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class EditProfileScreen extends StatelessWidget {
   EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: CustomText(
          text: AppStrings.myProfile,
          fontWeight: FontWeight.w500,
          fontSize: 16.h,
        ),
      ),
      body: GetBuilder<ProfileController>(
        builder: (controller) {
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 24.h,horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///<========================== profile section ============================>
                Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                    height: 90.h,
                    child: Stack(
                      children: [
                      controller.proImage == null ?  CustomNetworkImage(
                            borderRadius: BorderRadius.circular(50.sp),
                            imageUrl: AppImages.profile,
                            height: 90.h,
                            width: 90.w)
                          :
                      Container(
                        height: 90.h,
                        width: 90.w,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              fit: BoxFit.fitWidth,
                              image: FileImage(
                                  File(controller.proImage!.path)))
                        ),
                      ),
                        Positioned(
                          bottom: 0,
                            right: 0,
                            child: GestureDetector(
                              onTap: (){
                                controller.openGallery();
                              },
                              child: Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.blueNormal
                                ),
                                child: Icon(Icons.camera_alt_outlined,color: AppColors.white,size: 16,),
                              ),
                            )
                        )
                      ],
                    ),
                  ),
                ),

                SizedBox(height: 44.h,),

                ///<================ name =================>
                Row(
                  children: [
                    Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// <================== first Name =========================>
                            CustomText(
                              text: AppStrings.firstname,
                              fontSize: 16.h,
                              bottom: 8.h,
                            ),
                            ///<================== first name text field ===================>
                            CustomTextField(
                              textInputAction: TextInputAction.next,
                             // textEditingController: controller.firstNameController,
                              hintText: AppStrings.firstname,
                              borderRadius: 8,
                              fillColor: AppColors.white,
                              focusBorderColor: const Color(0xff9AC699),
                              fieldBorderColor: const Color(0xff9AC699),
                              hintStyle: TextStyle(color: AppColors.blueLightActive,),
                            ),
                          ],
                        )
                    ),
                    SizedBox(width: 16.w,),
                    Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            /// <================== last Name =========================>
                            CustomText(
                              text: AppStrings.lastName,
                              fontSize: 16.h,
                              bottom: 8.h,
                            ),
                            ///<================== last name text field ===================>
                            CustomTextField(
                              textInputAction: TextInputAction.next,
                              //textEditingController: controller.firstNameController,
                              hintText: AppStrings.lastName,
                              borderRadius: 8,
                              fillColor: AppColors.white,
                              focusBorderColor: const Color(0xff9AC699),
                              fieldBorderColor: const Color(0xff9AC699),
                              hintStyle: TextStyle(color: AppColors.blueLightActive,),
                            ),
                          ],
                        )
                    )
                  ],
                ),

                /// <================== email Name =========================>
                CustomText(
                  text: AppStrings.email,
                  fontSize: 16.h,
                  bottom: 8.h,
                  top: 16.h,
                ),
                ///<================== email text field ===================>
                CustomTextField(
                  textInputAction: TextInputAction.next,
                  //textEditingController: controller.firstNameController,
                  hintText: AppStrings.email,
                  borderRadius: 8,
                  fillColor: AppColors.white,
                  focusBorderColor: const Color(0xff9AC699),
                  fieldBorderColor: const Color(0xff9AC699),
                  hintStyle: TextStyle(color: AppColors.blueLightActive,),
                ),

                /// <================== phn number Name =========================>
                CustomText(
                  text: AppStrings.phoneNumber,
                  fontSize: 16.h,
                  bottom: 8.h,
                  top: 16.h,
                ),
                ///<================== phn number text field ===================>
                CustomTextField(
                  textInputAction: TextInputAction.next,
                  //textEditingController: controller.firstNameController,
                  hintText: AppStrings.phoneNumber,
                  borderRadius: 8,
                  fillColor: AppColors.white,
                  focusBorderColor: const Color(0xff9AC699),
                  fieldBorderColor: const Color(0xff9AC699),
                  hintStyle: TextStyle(color: AppColors.blueLightActive,),
                ),

                /// <================== location =========================>
                CustomText(
                  text: AppStrings.location,
                  fontSize: 16.h,
                  bottom: 8.h,
                  top: 16.h,
                ),
                ///<================== location text field ===================>
                CustomTextField(
                  textInputAction: TextInputAction.next,
                  //textEditingController: controller.firstNameController,
                  hintText: AppStrings.location,
                  borderRadius: 8,
                  fillColor: AppColors.white,
                  focusBorderColor: const Color(0xff9AC699),
                  fieldBorderColor: const Color(0xff9AC699),
                  hintStyle: TextStyle(color: AppColors.blueLightActive,),
                ),


              ],
            ),
          );
        }
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(vertical: 24.h,horizontal: 20.w),
        child: CustomButton(ontap: (){
           Get.to(()=>ProfileScreen());
        },text: AppStrings.saveAndUpdate,),
      ),
    );
  }
}
