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

class AddCar extends StatelessWidget {
    AddCar({super.key});

    List<String> conditionList=["New","Good","Fair"];
    List<String> fuelList=['Petrol','Diesel','LPG','CNG','Ethanol'];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddProductController>(
      builder: (controller) {
        return SingleChildScrollView(
          physics: BouncingScrollPhysics(),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              ///<======================================  Price =========================================>
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
                textInputAction: TextInputAction.next,
                textEditingController: controller.productPrice,
                hintText: 'Price',
                hintStyle: const TextStyle(color: AppColors.blueLightActive),
                borderRadius: 8,
                fillColor: AppColors.white,
              ),
              ///<======================================   Car Make =========================================>
              CustomText(
                text: 'Car Make',
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
                hintText: 'Car Make',
                hintStyle: const TextStyle(color: AppColors.blueLightActive),
                borderRadius: 8,
                fillColor: AppColors.white,
              ),

              ///<======================================   Car Model =========================================>
              CustomText(
                text: 'Car Model',
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
                hintText: 'Car Model ',
                hintStyle: const TextStyle(color: AppColors.blueLightActive),
                borderRadius: 8,
                fillColor: AppColors.white,
              ),
              ///<======================================   Year =========================================>
              CustomText(
                text: 'Year',
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
                hintText: 'Year ',
                hintStyle: const TextStyle(color: AppColors.blueLightActive),
                borderRadius: 8,
                fillColor: AppColors.white,
              ),

              ///<======================================   Trim/Variant =========================================>
              CustomText(
                text: 'Trim/Variant',
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
                hintText: 'Trim/Variant ',
                hintStyle: const TextStyle(color: AppColors.blueLightActive),
                borderRadius: 8,
                fillColor: AppColors.white,
              ),

              ///<======================================   Mileage =========================================>
              CustomText(
                text: 'Mileage',
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
                hintText: 'Mileage ',
                hintStyle: const TextStyle(color: AppColors.blueLightActive),
                borderRadius: 8,
                fillColor: AppColors.white,
              ),

              ///<======================================   Transmission =========================================>
              CustomText(
                text: 'Transmission',
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
                hintText: 'Transmission ',
                hintStyle: const TextStyle(color: AppColors.blueLightActive),
                borderRadius: 8,
                fillColor: AppColors.white,
              ),

              ///<======================================   Engine =========================================>
              CustomText(
                text: 'Engine',
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
                hintText: 'Engine ',
                hintStyle: const TextStyle(color: AppColors.blueLightActive),
                borderRadius: 8,
                fillColor: AppColors.white,
              ),

              ///<======================================   Fuel =========================================>
              CustomText(
                text: 'Fuel',
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
                hintText: 'Fuel',
                hintStyle: const TextStyle(color: AppColors.blueLightActive),
                borderRadius: 8,
                fillColor: AppColors.white,
              ),

              ///<======================================   Color =========================================>
              CustomText(
                text: 'Color',
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
                hintText: 'Color',
                hintStyle: const TextStyle(color: AppColors.blueLightActive),
                borderRadius: 8,
                fillColor: AppColors.white,
              ),

              ///<====================================== Interior Color =========================================>
              CustomText(
                text: 'Interior Color',
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
                hintText: 'Interior Color',
                hintStyle: const TextStyle(color: AppColors.blueLightActive),
                borderRadius: 8,
                fillColor: AppColors.white,
              ),

              ///<====================================== Interior material =========================================>
              CustomText(
                text: 'Interior material',
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
                hintText: 'Interior material',
                hintStyle: const TextStyle(color: AppColors.blueLightActive),
                borderRadius: 8,
                fillColor: AppColors.white,
              ),

              ///<====================================== Features =========================================>
              CustomText(
                text: 'Features',
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
                hintText: 'Features',
                hintStyle: const TextStyle(color: AppColors.blueLightActive),
                borderRadius: 8,
                fillColor: AppColors.white,
              ),


              ///<==========================Condition ========================================================>
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

              ///<====================================== Additional Information =========================================>
              CustomText(
                text: 'Additional Information',
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
                hintText: 'Additional Information',
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
