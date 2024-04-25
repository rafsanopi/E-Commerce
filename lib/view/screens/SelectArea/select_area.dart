import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/screens/SelectArea/controller.dart';
import 'package:bazar24_7/view/screens/home/controller/home_controller.dart';
import 'package:bazar24_7/view/widgets/custom_button/custom_button.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:bazar24_7/view/widgets/custom_text_formfield/custom_text_formfield.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

class SelectAreaScreen extends StatelessWidget {
  SelectAreaScreen({super.key});
  final fromKey = GlobalKey<FormState>();
  HomeController controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: GetBuilder<HomeController>(
        builder: (controller) {
          return SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 24.w),
              child: Column(
                children: [
                  ///<============================================Title Text============================>
                  Center(
                      child: CustomText(
                    text: AppStrings.selectArea,
                    color: AppColors.blueNormal,
                    fontWeight: FontWeight.w500,
                    fontSize: 18,
                    top: 20.h,
                    bottom: 15.h,
                  )),

                  CustomText(
                    text: AppStrings.pleaseSelectYourCitricArea,
                    color: AppColors.blueNormal,
                    fontSize: 12,
                    fontWeight: FontWeight.w400,
                    bottom: 6.h,
                  ),
                  SizedBox(
                    height: 36.h,
                  ),

                  Form(
                      key: fromKey,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          ///<=======================================Current city Section======================================>
                          Align(
                            alignment: Alignment.centerLeft,
                            child: CustomText(
                              text: AppStrings.selectYourCurrentCity,
                              color: AppColors.blueNormal,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              bottom: 8.h,
                            ),
                          ),

                          CustomTextField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return AppStrings.fieldCantBeEmpty;
                              } else {
                                return null;
                              }
                            },
                            textInputAction: TextInputAction.next,
                             textEditingController: controller.city,
                            hintText: AppStrings.selectYourCurrentCity,
                            borderRadius: 8,
                            hintStyle: TextStyle(color: AppColors.blueLightActive,),
                            fillColor: AppColors.white,
                            focusBorderColor: const Color(0xff9AC699),
                            fieldBorderColor: const Color(0xff9AC699),
                          ),

                          SizedBox(
                            height: 24.h,
                          ),

                          ///<=======================================Current area Section======================================>

                          Align(
                            alignment: Alignment.centerLeft,
                            child: CustomText(
                              text: AppStrings.selectYourCurrentArea,
                              color: AppColors.blueNormal,
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              bottom: 8.h,
                            ),
                          ),

                          CustomTextField(
                            validator: (value) {
                              if (value!.isEmpty) {
                                return AppStrings.fieldCantBeEmpty;
                              } else {
                                return null;
                              }
                            },
                            textInputAction: TextInputAction.next,
                            textEditingController: controller.area,
                            hintText: AppStrings.selectYourCurrentArea,
                            borderRadius: 8,
                            hintStyle: TextStyle(color: AppColors.blueLightActive,),
                            fillColor: AppColors.white,
                            focusBorderColor: const Color(0xff9AC699),
                            fieldBorderColor: const Color(0xff9AC699),
                          ),
                        ],
                      )),

                  SizedBox(
                    height: 223.h,
                  ),

                  CustomButton(
                    ontap: () {
                      if (fromKey.currentState!.validate()) {
                        controller.updateLocation();
                        Get.toNamed(AppRoute.homeScreen);
                        Fluttertoast.showToast(
                            msg: "Update SuccessFully",
                            toastLength: Toast.LENGTH_SHORT,
                            gravity: ToastGravity.CENTER,
                            timeInSecForIosWeb: 1,
                            backgroundColor: Colors.green,
                            textColor: Colors.white,
                            fontSize: 16.0
                        );
                      }
                    },
                    text: AppStrings.submit,
                  ),
                ],
              ),
            ),
          );
        }
      ),
    );
  }
}
