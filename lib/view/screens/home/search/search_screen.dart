import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/screens/home/controller/home_controller.dart';
import 'package:bazar24_7/view/widgets/custom_text_formfield/custom_text_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
      ),
      body: GetBuilder<HomeController>(
        builder: (controller) {
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 24.h,horizontal: 20.w),
            child: Column(
              children: [
                CustomTextField(
                  textEditingController: controller.searchController,
                  borderRadius: 8.sp,
                  hintText: AppStrings.search,
                  isPrefixIcon: true,
                  suffixIcon: InkWell(
                      onTap: (){
                        controller.searchController.clear();
                      },
                      child: Icon(Icons.close,color: AppColors.blueNormal,size: 24.h,)),
                  fillColor: Colors.transparent,
                  // height: 38,
                  fieldBorderColor: AppColors.blueLightActive,
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}
