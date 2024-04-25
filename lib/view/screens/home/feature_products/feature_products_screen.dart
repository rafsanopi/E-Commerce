import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_icons.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/screens/home/controller/home_controller.dart';
import 'package:bazar24_7/view/widgets/custom_card/custom_card.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:bazar24_7/view/widgets/custom_text_formfield/custom_text_formfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../widgets/custom_image/custom_image.dart';

class FeatureProductsScreen extends StatelessWidget {
    FeatureProductsScreen({super.key});
    List<Map<String, String>> productList = [
      {
        'image': AppImages.car1,
        'name': 'Luxury',
        'rating': '4.5',
        'amount': '\$${5447}',
        'status': 'used'
      },
      {
        'image': AppImages.car2,
        'name': 'Baltimore',
        'rating': '4.5',
        'amount': '\$${5447}',
        'status': 'New'
      },
      {
        'image': AppImages.car3,
        'name': 'BMW',
        'rating': '4.5',
        'amount': '\$${5447}',
        'status': 'new'
      },
      {
        'image': AppImages.car5,
        'name': 'Sports',
        'rating': '4.5',
        'amount': '\$${5447}',
        'status': 'used'
      },
      {
        'image': AppImages.car6,
        'name': 'Toronto',
        'rating': '4.5',
        'amount': '\$${6787}',
        'status': 'used'
      },
      {
        'image': AppImages.car1,
        'name': 'Luxury',
        'rating': '4.5',
        'amount': '\$${5447}',
        'status': 'used'
      },
      {
        'image': AppImages.car2,
        'name': 'Baltimore',
        'rating': '4.5',
        'amount': '\$${5447}',
        'status': 'New'
      },
      {
        'image': AppImages.car3,
        'name': 'BMW',
        'rating': '4.5',
        'amount': '\$${5447}',
        'status': 'new'
      },
      {
        'image': AppImages.car5,
        'name': 'Sports',
        'rating': '4.5',
        'amount': '\$${5447}',
        'status': 'used'
      },
      {
        'image': AppImages.car6,
        'name': 'Toronto',
        'rating': '4.5',
        'amount': '\$${6787}',
        'status': 'used'
      },
    ];
    var data=Get.arguments;
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
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                    children: [
                  ///================Search Text Form Field==============
                  Expanded(
                      child: Container(
                        decoration: const BoxDecoration(
                        ),
                        child: CustomTextField(
                          borderRadius: 8.sp,
                          onTapClick: () {
                            Get.toNamed(AppRoute.searchScreen);
                          },
                          readOnly: true,
                          hintText: AppStrings.search,
                          isPrefixIcon: true,
                          fillColor: Colors.transparent,
                          // height: 38,
                          fieldBorderColor: AppColors.blueLightActive,
                        ),
                      )),
                  SizedBox(
                    width: 12.w,
                  ),

                  ///================Filter Button==============
                  GestureDetector(
                    onTap: (){
                      Get.toNamed(AppRoute.filterScreen);
                    },
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                              offset: Offset(0, 4),
                              blurRadius: 4,
                              color: Color(0xffCDCCCC)),
                        ],
                        color: AppColors.greenNormal,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: CustomImage(imageSrc: AppIcons.filter,imageColor: AppColors.white,size: 24.h,),
                    ),
                  )

                ]
                ),
                SizedBox(height: 24.h,),
                ///<================== feature text =============>
                CustomText(
                  text: data,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.h,
                  bottom: 16.h,
                ),

                ///<======================== feature list =====================>
                GridView.builder(
                  itemCount: productList.length,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 8,
                      mainAxisExtent: 240),
                  itemBuilder: (BuildContext context, int index) {
                    return CustomCard(

                        status: productList[index]['status'] ?? '',
                        rating: productList[index]['rating'] ?? '',
                        amount: productList[index]['amount'] ?? '',
                        productName: productList[index]['name'] ?? '',
                        onTapFavour: () {
                         /* controller.isFavour.value = ! controller.isFavour.value;
                          controller.update();*/
                        },
                        productImage: productList[index]['image'] ?? '',
                        onTapCard: () {
                          Get.toNamed(AppRoute.carDetailsScreen);
                        });
                  },
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}
