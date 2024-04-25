import 'dart:io';

import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_icons.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/screens/AddProduct/add_car.dart';
import 'package:bazar24_7/view/screens/AddProduct/add_fashion.dart';
import 'package:bazar24_7/view/screens/AddProduct/add_house.dart';
import 'package:bazar24_7/view/screens/AddProduct/add_jobs.dart';
import 'package:bazar24_7/view/screens/AddProduct/add_learn.dart';
import 'package:bazar24_7/view/screens/AddProduct/add_motorcycle.dart';
import 'package:bazar24_7/view/screens/AddProduct/add_phone.dart';
import 'package:bazar24_7/view/screens/AddProduct/add_service.dart';
import 'package:bazar24_7/view/screens/AddProduct/controller.dart';
import 'package:bazar24_7/view/widgets/bottom_nab_bar/bottom_nav_bar.dart';
import 'package:bazar24_7/view/widgets/custom_button/custom_button.dart';
import 'package:bazar24_7/view/widgets/custom_image/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:bazar24_7/view/widgets/custom_text_formfield/custom_text_formfield.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class AddProductScreen extends StatelessWidget {
  AddProductScreen({super.key});

  List<String> categoryList = [
   /* AppStrings.car,
    AppStrings.house,
    'Phone',*/
    'Properties',
    'Automobile',
    'Motorcycles',
    'Mobile',
    'Fashion/Beauty',
    'Jobs',
    'Services',
    'Learn and Curse'
  ];

  List screens = [
     AddHouse(),
     AddCar(),
      AddMotorCycle(),
    const AddPhoneScreen(),
      AddFashion(),
      AddJobs(),
      AddService(),
      AddLearn()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: const CustomText(
          text: AppStrings.addProducts,
          fontWeight: FontWeight.w500,
          fontSize: 18,
        ),
      ),
      bottomNavigationBar: const BottomNavBar(currentIndex: 2),
      body: GetBuilder<AddProductController>(builder: (controller) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.only(left: 24.w, right: 24.r, bottom: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ///<================================Product Image upload Section======================================================>
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
                          width: double.maxFinite,
                          height: 200.h,
                          decoration: BoxDecoration(
                            color: AppColors.blueLight,
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          child: const CustomImage(
                            imageSrc: AppImages.cameraImage,
                            imageType: ImageType.png,
                            size: 150,
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
                                height: 200,
                                width: MediaQuery.of(context).size.width,
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
                      )),

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
              ),

              ///<======================================Product Name Section=========================================>
              CustomText(
                text: AppStrings.productName,
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
                textEditingController: controller.productName,
                textInputAction: TextInputAction.next,
                hintText: AppStrings.productName,
                hintStyle: const TextStyle(color: AppColors.blueLightActive),
                borderRadius: 8,
                fillColor: AppColors.white,
              ),

              ///<====================================== Select Category =========================================>
              CustomText(
                text: AppStrings.selectCategory,
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
                textEditingController: controller.categoryListController,
                textInputAction: TextInputAction.next,
                hintText: AppStrings.selectCategory,
                hintStyle: const TextStyle(color: AppColors.blueLightActive),
                borderRadius: 8,
                fillColor: AppColors.white,
                suffixIcon: InkWell(
                  onTap: () {
                    controller.isCategory = !controller.isCategory;
                    controller.update();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: controller.isCategory
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
              controller.isCategory
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
                                  controller.selectedCategory = index;
                                  controller.categoryListController.text =
                                      categoryList[controller.selectedCategory];
                                  controller.isCategory = false;
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

              ///<======================================Product location Section=========================================>
              CustomText(
                text: AppStrings.location,
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
                textEditingController: controller.locationController,
                textInputAction: TextInputAction.next,
                hintText: AppStrings.productName,
                hintStyle: const TextStyle(color: AppColors.blueLightActive),
                borderRadius: 8,
                fillColor: AppColors.white,
              ),

              ///<======================================Product date Section=========================================>
              CustomText(
                text: 'Date',
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
                textEditingController: controller.dateController,
                textInputAction: TextInputAction.next,
                hintText: AppStrings.productName,
                hintStyle: const TextStyle(color: AppColors.blueLightActive),
                borderRadius: 8,
                fillColor: AppColors.white,
              ),

              screens[controller.selectedCategory],

              SizedBox(
                height: 24.h,
              ),
              CustomButton(
                ontap: () {
                  Get.offNamed(AppRoute.homeScreen);
                },
                text: AppStrings.publish,
              ),
            ],
          ),
        );
      }),
    );
  }
}
