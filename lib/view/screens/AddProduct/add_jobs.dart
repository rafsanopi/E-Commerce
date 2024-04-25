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

class AddJobs extends StatelessWidget {
    AddJobs({super.key});

    List<String> conditionList=["New","Good","Fair"];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddProductController>(builder: (controller) {
      return SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            ///<====================================== Job Type =========================================>
            CustomText(
              text: 'Job Type',
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
              textEditingController: controller.productColor,
              textInputAction: TextInputAction.next,
              hintText: 'Job Type',
              hintStyle:
              const TextStyle(color: AppColors.blueLightActive),
              borderRadius: 8,
              fillColor: AppColors.white,
            ),

            SizedBox(
              height: 16.h,
            ),
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
              textEditingController: controller.productColor,
              textInputAction: TextInputAction.next,
              hintText: 'Description',
              hintStyle:
              const TextStyle(color: AppColors.blueLightActive),
              borderRadius: 8,
              fillColor: AppColors.white,
            ),

            ///<====================================== Requirements =========================================>
            CustomText(
              text: 'Requirements',
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
              hintText: 'Requirements',
              hintStyle:
              const TextStyle(color: AppColors.blueLightActive),
              borderRadius: 8,
              fillColor: AppColors.white,
            ),

            ///<====================================== Benefits =========================================>
            CustomText(
              text: 'Benefits',
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
              hintText: 'Benefits',
              hintStyle:
              const TextStyle(color: AppColors.blueLightActive),
              borderRadius: 8,
              fillColor: AppColors.white,
            ),

           /* ///<==========================Condition ========================================================>
            SizedBox(
              height: 16.h,
            ),

            CustomText(
              text:"Condition",
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
              hintText:"Condition",
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
            ),*/

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
                      conditionList.length,
                          (index) => GestureDetector(
                        onTap: () {
                          controller.conditionController.text =
                          conditionList[index];
                          controller.conditionExpend =!controller.conditionExpend ;
                          controller.update();
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            decoration: const BoxDecoration(),
                            child: CustomText(
                              text: conditionList[index],
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

            ///<====================================== Salary =========================================>
            CustomText(
              text: 'Salary',
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
              hintText: 'Salary',
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
