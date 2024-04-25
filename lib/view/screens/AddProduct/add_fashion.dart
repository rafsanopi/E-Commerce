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

class AddFashion extends StatelessWidget {
     AddFashion({super.key});

    // List<String> fuelList=["Gasoline","Diesel","Liquefied Petroleum","Compressed Natural Gas","Ethanol","Bio-diesel", "electricity"];
     List<String> conditionList=["New","Good","Fair"];
     List<String> categoryList=["Clothing", "Accessories", "Skincare"];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddProductController>(builder: (controller) {
      return SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          /*///<========================Doted Indicator==============================>

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
                  ),
                  SizedBox(
                    height: 16.h,
                  ),*/
              ///<================================ product type======================================================>
          CustomText(
            text:"Product Type",
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
            textEditingController: controller.fuelController,
            textInputAction: TextInputAction.next,
            hintText: AppStrings.selectCategory,
            hintStyle: const TextStyle(color: AppColors.blueLightActive),
            borderRadius: 8,
            fillColor: AppColors.white,
            suffixIcon: InkWell(
              onTap: () {
                controller.fashionProductType = !controller.fashionProductType;
                controller.update();
              },
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: controller.fashionProductType
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
          controller.fashionProductType
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
                    categoryList.length,
                        (index) => GestureDetector(
                      onTap: () {
                        controller.fuelController.text =
                        categoryList[index];
                        controller.fashionProductType =!controller.fashionProductType ;
                        controller.update();
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          decoration: const BoxDecoration(),
                          child: CustomText(
                            text: categoryList[index],
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

          ///<====================================== Brand =========================================>
          CustomText(
            text: "Brand",
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
            //textEditingController: controller.productPrice,
            hintText: "Brand",
            hintStyle: const TextStyle(color: AppColors.blueLightActive),
            borderRadius: 8,
            fillColor: AppColors.white,
          ),

          ///<==========================Color ============================================================>
          SizedBox(
            height: 16.h,
          ),
          CustomText(
            text:AppStrings.color,
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
            //textEditingController: controller.productPrice,
            hintText:AppStrings.color,
            hintStyle: const TextStyle(color: AppColors.blueLightActive),
            borderRadius: 8,
            fillColor: AppColors.white,
          ),

          ///<==========================Condition ========================================================>
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


          ///<====================================== Description =========================================>
          CustomText(
            text:"Description",
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
            textInputAction: TextInputAction.next,
            //textEditingController: controller.productPrice,
            hintText: "Description",
            hintStyle: const TextStyle(color: AppColors.blueLightActive),
            borderRadius: 8,
            fillColor: AppColors.white,
          ),
        ],
      )
      );
    });
  }
}
