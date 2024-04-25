import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/helper/network_image.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_icons.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/screens/home/ProductDetails/PhoneDetails/Inner/phone_design.dart';
import 'package:bazar24_7/view/screens/home/ProductDetails/PhoneDetails/Inner/phone_detailses.dart';
import 'package:bazar24_7/view/screens/home/ProductDetails/PhoneDetails/Inner/phone_feature.dart';
import 'package:bazar24_7/view/screens/home/ProductDetails/controller.dart';
import 'package:bazar24_7/view/widgets/custom_button/custom_button.dart';
import 'package:bazar24_7/view/widgets/custom_card/custom_card.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class PhoneDDetailsScreen extends StatelessWidget {
  PhoneDDetailsScreen({super.key});

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
  ];

  List<String> tabText = [
    AppStrings.details,
    AppStrings.features,
    AppStrings.design
  ];

  List<Widget> tabPage = [DetailsPhone(), PhoneFeature(), PhoneDesign()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///<====================================Appbar===========================>
      appBar: AppBar(
        backgroundColor: AppColors.white,
        actions: [
          GestureDetector(
              onTap: () {
                Get.toNamed(AppRoute.notificationsScreen);
              },
              child: Padding(
                padding: EdgeInsets.only(right: 24.w),
                child: SvgPicture.asset(
                  AppIcons.notification,
                  colorFilter: const ColorFilter.mode(
                      AppColors.greenNormal, BlendMode.srcIn),
                ),
              ))
        ],
      ),

      body: GetBuilder<ProductsDetailsController>(builder: (controller) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          padding: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 24.h),
          child: Column(
            children: [
              ///<========================================Top Card=====================================>

              if (controller.tabPosition == 0)
                Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                      boxShadow: const [
                        BoxShadow(
                            offset: Offset(0, 4),
                            blurRadius: 4,
                            color: Color(0xffCDCCCC)),
                      ],
                      borderRadius: BorderRadius.circular(10),
                      color: AppColors.white),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 17.w, vertical: 14.h),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ///<============================================Image=================================>

                        CustomNetworkImage(
                          imageUrl: AppImages.phone1,
                          height: 180.h,
                          width: double.maxFinite,
                          borderRadius: BorderRadius.circular(5.r),
                        ),
                        SizedBox(
                          height: 6.h,
                        ),
                        Align(
                          alignment: AlignmentDirectional.bottomEnd,
                          child: GestureDetector(
                            onTap: () {
                              controller.isFavourite = !controller.isFavourite;
                              controller.update();
                            },
                            child: Container(
                                height: 28.h,
                                width: 28.w,
                                decoration: const BoxDecoration(
                                  boxShadow: [
                                    BoxShadow(
                                        offset: Offset(0, 4),
                                        blurRadius: 4,
                                        color: Color(0xffCDCCCC)),
                                  ],
                                  shape: BoxShape.circle,
                                  color: AppColors.white,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(5.r),
                                  child: SvgPicture.asset(
                                    color: AppColors.greenNormal,
                                    controller.isFavourite
                                        ? AppIcons.favourActive
                                        : AppIcons.favourite,
                                    height: 12.h,
                                    width: 13.h,
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              ///<========================================Tab bar=====================================>
              SizedBox(
                height: 24.h,
              ),

              Align(
                alignment: AlignmentDirectional.centerStart,
                child: Column(
                  children: [
                    const CustomText(
                      text: AppStrings.details,
                      color: AppColors.greenNormal,
                    ),
                    Container(
                      color: AppColors.greenNormal,
                      height: 1.h,
                      width: 50.w,
                    ),
                  ],
                ),
              ),

              // Row(
              //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //   children: List.generate(3, (index) {
              //     return TextButton(
              //       onPressed: () {
              //         controller.tabPosition = index;
              //         controller.update();
              //       },
              //       child: Column(
              //         children: [
              //           CustomText(
              //             text: tabText[index],
              //             color: controller.tabPosition == index
              //                 ? AppColors.greenNormal
              //                 : AppColors.blueNormal,
              //           ),
              //           controller.tabPosition == index
              //               ? Container(
              //                   height: 1.h,
              //                   width: 60.w,
              //                   color: AppColors.greenNormal,
              //                 )
              //               : SizedBox(),
              //         ],
              //       ),
              //     );
              //   }),
              // ),
              SizedBox(
                height: 12.h,
              ),

              ///<======================================Tap Pages========================================>
              DetailsPhone(),

              PhoneFeature(),
              //tabPage[controller.tabPosition],

              ///<============================Price Section========================================>
              Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: CustomText(
                    text: "${AppStrings.price}" "(Cash)",
                    color: AppColors.blueNormal,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    top: 24.h,
                  )),

              ///<=========================Amount section =================================================>
              Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: CustomText(
                    text: "\$9858",
                    fontSize: 24,
                    fontWeight: FontWeight.w500,
                    top: 8.h,
                  )),

              SizedBox(
                height: 24.h,
              ),

              ///<========================================Related products ===========================>
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(
                    text: "Related Products ",
                    fontWeight: FontWeight.w500,
                    fontSize: 16.h,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Get.toNamed(AppRoute.featureProductsScreen,arguments: productName);
                    },
                    child: const CustomText(
                      text: AppStrings.seeAll,
                      fontWeight: FontWeight.w400,
                      decoration: TextDecoration.underline,
                      color: AppColors.greenNormal,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 16.h,
              ),

              ///<=======================Product  list =======================>
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: List.generate(
                      productList.length,
                      (index) => CustomCard(

                          status: productList[index]['status'] ?? '',
                          rating: productList[index]['rating'] ?? '',
                          amount: productList[index]['amount'] ?? '',
                          productName: productList[index]['name'] ?? '',
                          onTapFavour: () {
                            // controller.isFavour.value =
                            // !controller.isFavour.value;
                            // controller.update();
                          },
                          productImage: productList[index]['image'] ?? '',
                          onTapCard: () {
                            Get.toNamed(AppRoute.carDetailsScreen);
                          })),
                ),
              ),

              ///<=============================Button====================================================>
              CustomButton(
                ontap: () {
                  Get.toNamed(AppRoute.orderPreviewDetailsScreen);
                },
                text: "Go to order details",
              ),
            ],
          ),
        );
      }),
    );
  }
}
