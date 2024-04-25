import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_icons.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/screens/AddProduct/controller.dart';
import 'package:bazar24_7/view/widgets/custom_image/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:bazar24_7/view/widgets/custom_text_formfield/custom_text_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class AddMotorCycle extends StatelessWidget {
   AddMotorCycle({super.key});
  List<String> fuelList=["Gasoline","Diesel","Liquefied Petroleum","Compressed Natural Gas","Ethanol","Bio-diesel", "electricity"];
  List<String> conditionList=["New","Good","Fair"];
  @override
  Widget build(BuildContext context) {
    return GetBuilder<AddProductController>(
        builder: (controller) {
          return Column(
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

              ///<===================================== MotorCycle Make =======================>
              CustomText(
                text:"Motorcycle Make",
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
                //textEditingController: controller.productPriceCurrency,
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
                //textEditingController: controller.productPrice,
                hintText: AppStrings.productPrice,
                hintStyle: const TextStyle(color: AppColors.blueLightActive),
                borderRadius: 8,
                fillColor: AppColors.white,
              ),

              ///<======================================MotorCycle model Section=========================================>
              CustomText(
                text: "Motorcycle model",
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
                hintText: "Motor cycle model",
                hintStyle: const TextStyle(color: AppColors.blueLightActive),
                borderRadius: 8,
                fillColor: AppColors.white,
              ),



              ///<======================================Year Section=========================================>
              CustomText(
                text:"Year",
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
                hintText: "Year",
                hintStyle: const TextStyle(color: AppColors.blueLightActive),
                borderRadius: 8,
                fillColor: AppColors.white,
              ),



              ///<======================================Mileage Section=========================================>
              CustomText(
                text: "Mileage",
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
                hintText: "Mileage",
                hintStyle: const TextStyle(color: AppColors.blueLightActive),
                borderRadius: 8,
                fillColor: AppColors.white,
              ),


              ///<======================================Engine Section=========================================>
              CustomText(
                text: "Engine",
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
                hintText: "Engine",
                hintStyle: const TextStyle(color: AppColors.blueLightActive),
                borderRadius: 8,
                fillColor: AppColors.white,
              ),

              ///<================================Fuel section======================================================>

              CustomText(
                text:"Fuel",
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
                    controller.fuelExpend = !controller.fuelExpend;
                    controller.update();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: controller.fuelExpend
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
              controller.fuelExpend
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
                        fuelList.length,
                            (index) => GestureDetector(
                          onTap: () {
                            controller.fuelController.text =
                            fuelList[index];
                            controller.fuelExpend =!controller.fuelExpend ;
                            controller.update();
                          },
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              decoration: const BoxDecoration(),
                              child: CustomText(
                                text: fuelList[index],
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

              ///<====================================== type feature =========================================>
              CustomText(
                text:"Feature",
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
                hintText: "Type your feature",
                hintStyle: const TextStyle(color: AppColors.blueLightActive),
                borderRadius: 8,
                fillColor: AppColors.white,
              ),

              ///<====================================== Additional Information =========================================>
              CustomText(
                text:"Additional Information",
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
                hintText: "Additional Information",
                hintStyle: const TextStyle(color: AppColors.blueLightActive),
                borderRadius: 8,
                fillColor: AppColors.white,
              ),
            ],
          );
        }
    );
  }
}
