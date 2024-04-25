import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/helper/network_image.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/widgets/custom_button/custom_button.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class MyDashboardScreen extends StatelessWidget {
  MyDashboardScreen({super.key});

  List<String> totalList = [
    AppStrings.totalAddProducts,
    AppStrings.totalOrderList,
    AppStrings.totalProductStock,
    AppStrings.addNewProduct,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: CustomText(
          text: AppStrings.myDashboard,
          fontWeight: FontWeight.w500,
          fontSize: 16.h,
        ),
        actions: [
          InkWell(
              borderRadius: BorderRadius.circular(50),
              onTap: () {
                Get.toNamed(AppRoute.editProfileScreen);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.edit_note,
                  size: 24.h,
                ),
              )),
          SizedBox(
            width: 16.h,
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 20.w),
        child: Column(
          children: [
            ///<========================== profile section ============================>
            Align(
              alignment: Alignment.center,
              child: Column(
                children: [
                  ///<===================== profile image =======================>
                  CustomNetworkImage(
                      borderRadius: BorderRadius.circular(50.sp),
                      imageUrl: AppImages.profile,
                      height: 70.h,
                      width: 70.w),

                  ///<===================== user name ==================>
                  CustomText(
                    text: 'Nadim Hasan',
                    fontSize: 16.h,
                    top: 8.h,
                    bottom: 8.h,
                  ),

                  ///<===================== user name ==================>
                  CustomText(
                    text: 'user@gmail.com',
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 54.h,
            ),

            GridView.builder(
              itemCount: totalList.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  mainAxisExtent: 150),
              itemBuilder: (BuildContext context, int index) {
                if (index == 3) {
                  return GestureDetector(
                    onTap: () {
                      if (index == 3) {
                        Get.toNamed(AppRoute.addCarScreen);
                      }
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                          vertical: 24.h, horizontal: 16.w),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.greenLightHover,
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10.sp),
                              color: AppColors.greenNormal,
                            ),
                            child: Icon(
                              Icons.add,
                              color: AppColors.white,
                              size: 24,
                            ),
                          ),
                          CustomText(
                            maxLines: 2,
                            text: totalList[index],
                            color: AppColors.greenNormal,
                            top: 4.h,
                          )
                        ],
                      ),
                    ),
                  );
                }
                return GestureDetector(
                  onTap: () {
                    if (index == 0) {
                      Get.toNamed(AppRoute.allProductsScreen);
                    }
                    if (index == 1) {
                      Get.toNamed(AppRoute.myOrderScreen);
                    }
                    if (index == 2) {
                      Get.toNamed(AppRoute.productStockScreen);
                    }
                    /*if(index==3){
                      Get.toNamed(AppRoute.selectProductScreen);
                    }*/
                  },
                  child: Container(
                    padding:
                        EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.greenLightHover,
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.sp),
                            color: AppColors.greenNormal,
                          ),
                          child: CustomText(
                            text: '120000',
                            color: AppColors.white,
                            fontSize: 16.h,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        CustomText(
                          maxLines: 2,
                          text: totalList[index],
                          color: AppColors.greenNormal,
                          top: 4.h,
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
