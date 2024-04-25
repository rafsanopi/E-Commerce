import 'dart:io';

import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_icons.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/screens/AddProduct/controller.dart';
import 'package:bazar24_7/view/widgets/custom_button/custom_button.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:bazar24_7/view/widgets/custom_text_formfield/custom_text_formfield.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AddPhoneScreen extends StatelessWidget {
  const AddPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetBuilder<AddProductController>(
      builder: (controller) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(
                text: AppStrings.productsShortDescription,
                color: AppColors.blueNormal,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                top: 19.h,
                bottom: 8.h,
              ),
              CustomTextField(
                validator: (value) {
                  if (value.isEmpty) {
                    return AppStrings.fieldCantBeEmpty;
                  } else {
                    return null;
                  }
                },
                textEditingController: controller.productsDescription,
                textInputAction: TextInputAction.next,
                hintStyle: const TextStyle(color: AppColors.blueLightActive),
                hintText: AppStrings.productsShortDescription,
                borderRadius: 8,
                maxLines: 5,
                fillColor: AppColors.white,
              ),

              /*///<================================Product Image upload Section======================================================>
              CustomText(
                text: "${AppStrings.productImage}" "Maximum 6 photos",
                top: 16.h,
                bottom: 16.h,
              ),

              controller.selectedImagesMulti.isEmpty
                  ? GestureDetector(
                onTap: () {
                  controller.pickMultiImage();
                },

                ///<=================================Image card when unselected====================>
                child: Align(
                  alignment: Alignment.center,
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 78.h),
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, 4),
                          blurRadius: 200.r,
                          color: const Color(0xffe0f9f7),
                        ),
                      ],
                      color: AppColors.white,
                      borderRadius: BorderRadius.circular(8.r),
                      image: const DecorationImage(
                        fit: BoxFit.fitWidth,
                        image:
                        AssetImage(AppImages.imagePickerBackGround),
                      ),
                    ),
                    child: SvgPicture.asset(
                      AppIcons.imageUploadIcon,
                      colorFilter: const ColorFilter.mode(
                          AppColors.blueNormal, BlendMode.srcIn),
                    ),
                  ),
                ),
              )
                  :

              ///<=================================Image card when selected====================>

              SizedBox(
                  height: 200.h,
                  child: PageView.builder(
                    physics: const BouncingScrollPhysics(),
                    itemCount: controller.selectedImagesMulti.length,
                    onPageChanged: (value) {
                      controller.imageIndex = value;
                      controller.update();
                    },
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Align(
                        alignment: Alignment.center,
                        child: GestureDetector(
                          onTap: () {
                            controller.pickMultiImage();
                          },
                          child: Container(
                            padding: EdgeInsets.symmetric(
                                horizontal: 165.w, vertical: 78.h),
                            margin: EdgeInsets.symmetric(horizontal: 16.w),
                            decoration: BoxDecoration(
                              color: AppColors.white,
                              borderRadius: BorderRadius.circular(8.r),
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: FileImage(
                                  File(controller
                                      .selectedImagesMulti[index].path),
                                ),
                              ),
                            ),
                            child: controller.selectedImagesMulti.isEmpty
                                ? SvgPicture.asset(
                              AppIcons.imageUploadIcon,
                              colorFilter: const ColorFilter.mode(
                                  AppColors.greenLight,
                                  BlendMode.srcIn),
                            )
                                : const SizedBox(),
                          ),
                        ),
                      );
                    },
                  )),*/

         /*     SizedBox(
                height: 16.h,
              ),

              ///<========================Doted Indicator==============================>

              controller.selectedImagesMulti.isEmpty
                  ? const SizedBox()
                  : Align(
                alignment: Alignment.center,
                child: DotsIndicator(
                  dotsCount: controller.selectedImagesMulti.length,
                  position: controller.imageIndex,
                  decorator: DotsDecorator(
                    color: AppColors.greenLight,
                    activeColor: AppColors.greenNormal,
                    size: const Size.square(9.0),
                    activeSize: const Size(18.0, 9.0),
                    activeShape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0)),
                  ),
                ),
              ),*/
              SizedBox(
                height: 16.h,
              ),

              ///<===================================== Products Currency=======================>
              CustomText(
                text: AppStrings.productPriceCurrency,
                fontWeight: FontWeight.w400,
                fontSize: 16,
                bottom: 16.h,
              ),

              CustomTextField(
                validator: (value) {
                  if (value.isEmpty) {
                    return AppStrings.fieldCantBeEmpty;
                  } else {
                    return null;
                  }
                },
                textEditingController: controller.productPriceCurrency,
                textInputAction: TextInputAction.next,
                hintText: AppStrings.productPriceCurrency,
                hintStyle: const TextStyle(color: AppColors.blueLightActive),
                borderRadius: 8,
                fillColor: AppColors.white,
              ),

              ///<======================================Product Price Section=========================================>
              CustomText(
                text: AppStrings.productPrice,
                color: AppColors.blueNormal,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                top: 19.h,
                bottom: 8.h,
              ),
              CustomTextField(
                validator: (value) {
                  if (value.isEmpty) {
                    return AppStrings.fieldCantBeEmpty;
                  } else {
                    return null;
                  }
                },
                textInputAction: TextInputAction.next,
                textEditingController: controller.productPrice,
                hintText: AppStrings.productPrice,
                hintStyle: const TextStyle(color: AppColors.blueLightActive),
                borderRadius: 8,
                fillColor: AppColors.white,
              ),

              ///<==========================Color and Size============================================================>
              SizedBox(
                height: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///<===================================== Products Color==============================================>
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: AppStrings.color,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            bottom: 16.h,
                          ),
                          CustomTextField(
                            validator: (value) {
                              if (value.isEmpty) {
                                return AppStrings.fieldCantBeEmpty;
                              } else {
                                return null;
                              }
                            },
                            textEditingController: controller.productColor,
                            textInputAction: TextInputAction.next,
                            hintText: AppStrings.color,
                            hintStyle: const TextStyle(
                                color: AppColors.blueLightActive),
                            borderRadius: 8,
                            fillColor: AppColors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),

                  ///<============================================Product Size=============================================>
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: AppStrings.size,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            bottom: 16.h,
                          ),
                          CustomTextField(
                            validator: (value) {
                              if (value.isEmpty) {
                                return AppStrings.fieldCantBeEmpty;
                              } else {
                                return null;
                              }
                            },
                            textEditingController: controller.productSize,
                            textInputAction: TextInputAction.next,
                            hintText: AppStrings.size,
                            hintStyle: const TextStyle(
                                color: AppColors.blueLightActive),
                            borderRadius: 8,
                            fillColor: AppColors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              ///<==========================Quantity and Display========================================================>
              SizedBox(
                height: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///<===================================== Quantity==============================================>
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: AppStrings.productQuantity,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            bottom: 16.h,
                          ),
                          CustomTextField(
                            validator: (value) {
                              if (value.isEmpty) {
                                return AppStrings.fieldCantBeEmpty;
                              } else {
                                return null;
                              }
                            },
                            textEditingController: controller.productQuantity,
                            textInputAction: TextInputAction.next,
                            hintText: AppStrings.productQuantity,
                            hintStyle: const TextStyle(
                                color: AppColors.blueLightActive),
                            borderRadius: 8,
                            fillColor: AppColors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),

                  ///<============================================Display=============================================>
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: AppStrings.display,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            bottom: 16.h,
                          ),
                          CustomTextField(
                            validator: (value) {
                              if (value.isEmpty) {
                                return AppStrings.fieldCantBeEmpty;
                              } else {
                                return null;
                              }
                            },
                            textEditingController: controller.productWeight,
                            textInputAction: TextInputAction.next,
                            hintText: AppStrings.display,
                            hintStyle: const TextStyle(
                                color: AppColors.blueLightActive),
                            borderRadius: 8,
                            fillColor: AppColors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              ///<==========================Chip And Camera========================================================>
              SizedBox(
                height: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///<===================================== Chip==============================================>
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: AppStrings.chip,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            bottom: 16.h,
                          ),
                          CustomTextField(
                            validator: (value) {
                              if (value.isEmpty) {
                                return AppStrings.fieldCantBeEmpty;
                              } else {
                                return null;
                              }
                            },
                            textEditingController: controller.productSpeed,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            hintText: AppStrings.chip,
                            hintStyle: const TextStyle(
                                color: AppColors.blueLightActive),
                            borderRadius: 8,
                            fillColor: AppColors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),

                  ///<============================================Camera=============================================>
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: AppStrings.camera,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            bottom: 16.h,
                          ),
                          CustomTextField(
                            validator: (value) {
                              if (value.isEmpty) {
                                return AppStrings.fieldCantBeEmpty;
                              } else {
                                return null;
                              }
                            },
                            textEditingController:
                            controller.productTransmission,
                            textInputAction: TextInputAction.next,
                            hintText: AppStrings.camera,
                            hintStyle: const TextStyle(
                                color: AppColors.blueLightActive),
                            borderRadius: 8,
                            fillColor: AppColors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              ///<==========================Storage and weight ========================================================>
              SizedBox(
                height: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///<===================================== Storage==============================================>
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: AppStrings.storage,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            bottom: 16.h,
                          ),
                          CustomTextField(
                            validator: (value) {
                              if (value.isEmpty) {
                                return AppStrings.fieldCantBeEmpty;
                              } else {
                                return null;
                              }
                            },
                            textEditingController: controller.productHP,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            hintText: AppStrings.storage,
                            hintStyle: const TextStyle(
                                color: AppColors.blueLightActive),
                            borderRadius: 8,
                            fillColor: AppColors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),

                  ///<============================================Weight=============================================>
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: AppStrings.weight,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            bottom: 16.h,
                          ),
                          CustomTextField(
                            validator: (value) {
                              if (value.isEmpty) {
                                return AppStrings.fieldCantBeEmpty;
                              } else {
                                return null;
                              }
                            },
                            textEditingController: controller.productTorque,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            hintText: AppStrings.weight,
                            hintStyle: const TextStyle(
                                color: AppColors.blueLightActive),
                            borderRadius: 8,
                            fillColor: AppColors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              ///<==========================Battery and face Id ========================================================>
              SizedBox(
                height: 16.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ///<===================================== Battery==============================================>
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: AppStrings.battery,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            bottom: 16.h,
                          ),
                          CustomTextField(
                            validator: (value) {
                              if (value.isEmpty) {
                                return AppStrings.fieldCantBeEmpty;
                              } else {
                                return null;
                              }
                            },
                            textEditingController: controller.productHP,
                            keyboardType: TextInputType.number,
                            textInputAction: TextInputAction.next,
                            hintText: AppStrings.battery,
                            hintStyle: const TextStyle(
                                color: AppColors.blueLightActive),
                            borderRadius: 8,
                            fillColor: AppColors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.w,
                  ),

                  ///<============================================Face Id =============================================>
                  Expanded(
                    child: SizedBox(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomText(
                            text: AppStrings.faceID,
                            fontWeight: FontWeight.w400,
                            fontSize: 16,
                            bottom: 16.h,
                          ),
                          CustomTextField(
                            validator: (value) {
                              if (value.isEmpty) {
                                return AppStrings.fieldCantBeEmpty;
                              } else {
                                return null;
                              }
                            },
                            textEditingController: controller.productTorque,
                            textInputAction: TextInputAction.next,
                            keyboardType: TextInputType.number,
                            hintText: AppStrings.faceID,
                            hintStyle: const TextStyle(
                                color: AppColors.blueLightActive),
                            borderRadius: 8,
                            fillColor: AppColors.white,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),



              ///<======================================New or used=========================================>
              CustomText(
                text: AppStrings.newOrUsed,
                color: AppColors.blueNormal,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                top: 19.h,
                bottom: 8.h,
              ),
              CustomTextField(
                validator: (value) {
                  if (value.isEmpty) {
                    return AppStrings.fieldCantBeEmpty;
                  } else {
                    return null;
                  }
                },
                textEditingController: controller.productNewUsed,
                textInputAction: TextInputAction.next,
                hintText: AppStrings.newOrUsed,
                hintStyle: const TextStyle(color: AppColors.blueLightActive),
                borderRadius: 8,
                fillColor: AppColors.white,
              ),
            ],
          ),
        );
      }
    );
  }
}
