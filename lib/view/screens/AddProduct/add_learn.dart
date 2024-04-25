import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_icons.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/screens/AddProduct/controller.dart';
import 'package:bazar24_7/view/screens/AddProduct/yes_no.dart';
import 'package:bazar24_7/view/widgets/custom_image/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:bazar24_7/view/widgets/custom_text_formfield/custom_text_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AddLearn extends StatelessWidget {
  AddLearn({super.key});

  List<String> timeList=["9 am - 5pm", "12 am - 7 pm", "8 pm - 3 am"];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddProductController>(builder: (controller) {
      return SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ///<====================================== Price =========================================>
            CustomText(
              text: 'Price',
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
              textEditingController: controller.productColor,
              textInputAction: TextInputAction.next,
              hintText: 'Price',
              hintStyle:
              const TextStyle(color: AppColors.blueLightActive),
              borderRadius: 8,
              fillColor: AppColors.white,
            ),

            ///<====================================== Availability =========================================>
            CustomText(
              text: 'Availability',
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
              textEditingController: controller.productColor,
              textInputAction: TextInputAction.next,
              hintText: 'Availability',
              hintStyle:
              const TextStyle(color: AppColors.blueLightActive),
              borderRadius: 8,
              fillColor: AppColors.white,
            ),

            ///<====================================== Model =========================================>
            CustomText(
              text: 'Model',
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
              textEditingController: controller.productColor,
              textInputAction: TextInputAction.next,
              hintText: 'model',
              hintStyle:
              const TextStyle(color: AppColors.blueLightActive),
              borderRadius: 8,
              fillColor: AppColors.white,
            ),
            ///<========================== Availability ========================================================>
            SizedBox(
              height: 16.h,
            ),

            CustomText(
              text:"Availability",
              color: AppColors.blueNormal,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              top: 19.h,
              bottom: 8.h,
            ),
            CustomTextField(
              readOnly: true,
              validator: (value) {
                if (value.isEmpty) {
                  return AppStrings.fieldCantBeEmpty;
                } else {
                  return null;
                }
              },
              textEditingController: controller.conditionController,
              textInputAction: TextInputAction.next,
              hintText:"Availability",
              hintStyle: const TextStyle(color: AppColors.blueLightActive),
              borderRadius: 8,
              fillColor: AppColors.white,
              suffixIcon: InkWell(
                onTap: () {
                  controller.conditionExpend = !controller.conditionExpend;
                  controller.update();
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: controller.conditionExpend
                      ? const CustomImage(
                    imageSrc: AppIcons.down,
                  )
                      : const CustomImage(
                    imageSrc: AppIcons.top,
                  ),
                ),
              ),
            ),

            ///<========================= dropdown ============================>
            controller.conditionExpend
                ? Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: 12.h, horizontal: 16.w),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.sp),
                          bottomRight: Radius.circular(10.sp))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      timeList.length,
                          (index) => GestureDetector(
                        onTap: () {
                          controller.conditionController.text =
                          timeList[index];
                          controller.conditionExpend =!controller.conditionExpend ;
                          controller.update();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: const BoxDecoration(),
                            child: CustomText(
                              text: timeList[index],
                              fontWeight: FontWeight.w500,
                              bottom: 4.h,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )),
            )
                : const SizedBox(),

            ///<==========================Class Duration ========================================================>
            SizedBox(
              height: 16.h,
            ),

            CustomText(
              text:"Duty Time",
              color: AppColors.blueNormal,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              top: 19.h,
              bottom: 8.h,
            ),

            CustomTextField(
              readOnly: true,
              validator: (value) {
                if (value.isEmpty) {
                  return AppStrings.fieldCantBeEmpty;
                } else {
                  return null;
                }
              },
              textEditingController: controller.conditionController,
              textInputAction: TextInputAction.next,
              hintText:"9 am - 5 pm",
              hintStyle: const TextStyle(color: AppColors.blueLightActive),
              borderRadius: 8,
              fillColor: AppColors.white,
              suffixIcon: InkWell(
                onTap: () {
                  controller.conditionExpend = !controller.conditionExpend;
                  controller.update();
                },
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: controller.conditionExpend
                      ? const CustomImage(
                    imageSrc: AppIcons.down,
                  )
                      : const CustomImage(
                    imageSrc: AppIcons.top,
                  ),
                ),
              ),
            ),

            ///<========================= dropdown ============================>
            controller.conditionExpend
                ? Align(
              alignment: Alignment.bottomRight,
              child: Container(
                  padding: EdgeInsets.symmetric(
                      vertical: 12.h, horizontal: 16.w),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10.sp),
                          bottomRight: Radius.circular(10.sp))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      timeList.length,
                          (index) => GestureDetector(
                        onTap: () {
                          controller.conditionController.text =
                          timeList[index];
                          controller.conditionExpend =!controller.conditionExpend ;
                          controller.update();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: const BoxDecoration(),
                            child: CustomText(
                              text: timeList[index],
                              fontWeight: FontWeight.w500,
                              bottom: 4.h,
                            ),
                          ),
                        ),
                      ),
                    ),
                  )),
            )
                : const SizedBox(),

            ///<====================================== Description =========================================>
            CustomText(
              text: 'Description',
              color: AppColors.blueNormal,
              fontSize: 16,
              fontWeight: FontWeight.w400,
              top: 19.h,
              bottom: 8.h,
            ),
            CustomTextField(
              maxLines: 3,
              validator: (value) {
                if (value.isEmpty) {
                  return AppStrings.fieldCantBeEmpty;
                } else {
                  return null;
                }
              },
              textEditingController: controller.productNewUsed,
              textInputAction: TextInputAction.next,
              hintText: 'Description',
              hintStyle: const TextStyle(color: AppColors.blueLightActive),
              borderRadius: 8,
              fillColor: AppColors.white,
            ),

            ///<====================================== Details =========================================>
            CustomText(
              text: 'Details',
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
              hintText: 'Type your features',
              hintStyle: const TextStyle(color: AppColors.blueLightActive),
              borderRadius: 8,
              fillColor: AppColors.white,
            ),

          ],
        ),
      );
    });
  }
}
