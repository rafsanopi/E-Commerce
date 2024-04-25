import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/screens/home/controller/home_controller.dart';
import 'package:bazar24_7/view/widgets/custom_button/custom_button.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:bazar24_7/view/widgets/custom_text_formfield/custom_text_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class FilterScreen extends StatelessWidget {
    FilterScreen({super.key});

    RangeValues sliderValue = const RangeValues(1, 20);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
      ),
      bottomNavigationBar: Padding(
          padding: EdgeInsets.symmetric(vertical: 44.h,horizontal: 20.w),
        child: CustomButton(ontap: (){
          Get.toNamed(AppRoute.homeScreen);
        },text: AppStrings.submit,),
      ),
      body: GetBuilder<HomeController>(
        builder: (controller) {
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 24.h,horizontal: 20.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///<===================== range distance =======================>
                CustomText(
                  text: AppStrings.category,
                  fontSize: 16.h,
                  bottom: 16.h,
                ),

                const CustomTextField(
                  textInputAction: TextInputAction.next,
                  //textEditingController: controller.signInEmail,
                  hintText: AppStrings.category,
                  borderRadius: 8,
                  fillColor: AppColors.white,
                  focusBorderColor: Color(0xff9AC699),
                  fieldBorderColor: Color(0xff9AC699),
                ),

                ///<===================== range distance =======================>
                CustomText(
                  text: AppStrings.location,
                  fontSize: 16.h,
                  bottom: 16.h,
                  top: 24.h,
                ),

                const CustomTextField(
                  textInputAction: TextInputAction.next,
                  //textEditingController: controller.signInEmail,
                  hintText: AppStrings.location,
                  borderRadius: 8,
                  fillColor: AppColors.white,
                  focusBorderColor: Color(0xff9AC699),
                  fieldBorderColor: Color(0xff9AC699),
                ),
                ///<===================== range distance =======================>
                CustomText(text: AppStrings.budget,
                fontSize: 16.h,
                  bottom: 54.h,
                  top: 24.h,
                ),

                ///<===================== range distance =======================>
                RangeSlider(
                  values: sliderValue,
                  max: 20,
                  min: 1,
                  activeColor: AppColors.greenNormal,
                  inactiveColor: AppColors.blueNormal,
                  onChanged: (newValue) {
                    sliderValue = newValue;

                    controller.distance=sliderValue.end.toInt();
                    controller.update();
                  },
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 38.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: "\$${sliderValue.start.toInt().toString()}k",
                      ),
                      CustomText(
                        text: "\$${sliderValue.end.toInt().toString()}k",
                      ),
                    ],
                  ),
                ),
                
                SizedBox(height: 44.h,),
                
              ],
            ),
          );
        },
        
      ),
    );
  }
}
