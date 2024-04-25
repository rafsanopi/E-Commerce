import 'dart:io';

import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_icons.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/screens/AddProduct/controller.dart';
import 'package:bazar24_7/view/widgets/custom_image/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:bazar24_7/view/widgets/custom_text_formfield/custom_text_formfield.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AddHouse extends StatelessWidget {
    AddHouse({super.key});
    List<String> conditionList=['Apartment', 'House',' Commercial Space'];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddProductController>(
      builder: (controller) {
        return SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              ///<========================== Property Type ========================================================>
              CustomText(
                text:"Property Type",
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
                hintText:"Property Type",
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


              ///<======================== property location =========================>
              CustomText(
                text: 'Property Location',
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
                hintText: 'Property Location',
                borderRadius: 8,
                fillColor: AppColors.white,
              ),

              ///<======================== Property Size =========================>
              CustomText(
                text: 'Property Size',
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
                hintText: 'Property Size',
                borderRadius: 8,

                fillColor: AppColors.white,
              ),


              ///<======================== Number of Bedrooms =========================>
              CustomText(
                text: 'Number of Bedrooms',
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
                hintText: 'Number of Bedrooms',
                borderRadius: 8,

                fillColor: AppColors.white,
              ),

              ///<======================== Amenities =========================>
              CustomText(
                text: 'Amenities',
                color: AppColors.blueNormal,
                fontSize: 16,
                fontWeight: FontWeight.w400,
                top: 19.h,
                bottom: 8.h,
              ),

              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: AppColors.blueLightHover)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'Parking',
                    ),
                    Container(
                      height: 24.h,
                      width: 24.h,
                      decoration: BoxDecoration(
                        border: Border.all(color:AppColors.blueNormal )
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 8.h,),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.blueLightHover)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'Garder',
                    ),
                    Container(
                      height: 24.h,
                      width: 24.h,
                      decoration: BoxDecoration(
                          border: Border.all(color:AppColors.blueNormal )
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 8.h,),
              Container(
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    border: Border.all(color: AppColors.blueLightHover)
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: 'Pool',
                    ),
                    Container(
                      height: 24.h,
                      width: 24.h,
                      decoration: BoxDecoration(
                          border: Border.all(color:AppColors.blueNormal )
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 8.h,),
              ///<======================== Description =========================>
              CustomText(
                text: 'Description',
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
                hintText: 'Description',
                borderRadius: 8,
                maxLines: 4,

                fillColor: AppColors.white,
              ),
            ],
          ),
        );
      }
    );
  }
}
