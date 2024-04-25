import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/helper/network_image.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_icons.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/screens/home/ProductDetails/CarDetails/Inner/design.dart';
import 'package:bazar24_7/view/screens/home/ProductDetails/CarDetails/Inner/details.dart';
import 'package:bazar24_7/view/screens/home/ProductDetails/CarDetails/Inner/features.dart';
import 'package:bazar24_7/view/screens/home/ProductDetails/controller.dart';
import 'package:bazar24_7/view/widgets/custom_button/custom_button.dart';
import 'package:bazar24_7/view/widgets/custom_card/custom_card.dart';
import 'package:bazar24_7/view/widgets/custom_image/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

class CarDetailsPage extends StatelessWidget {
  CarDetailsPage({super.key});

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
  ProductsDetailsController pdController =
      Get.find<ProductsDetailsController>();

  List<String> image = [
    AppImages.car1,
    AppImages.car2,
    AppImages.car3,
  ];

  List<String> tabText = [
    AppStrings.details,
    AppStrings.features,
    AppStrings.design
  ];
  int currentIndex = 0;
  var productName = 'Related products';
  // List<Widget> tabPage = [Details(), Features(), Design()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ///<========================AppBar============================>
      appBar: AppBar(
        centerTitle: true,
        title: const CustomText(
          text: "Tesla features model 3",
        ),
        backgroundColor: AppColors.white,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 24.w),
            child: GestureDetector(
                onTap: () {
                  Get.toNamed(AppRoute.notificationsScreen);
                },
                child: SvgPicture.asset(
                  AppIcons.notification,
                  color: AppColors.greenNormal,
                )),
          )
        ],
      ),

      body: GetBuilder<ProductsDetailsController>(builder: (controller) {
        return SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          //padding: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              ///<========================================Car Image  card=========================>
              if (controller.tabPosition == 0)
                Stack(
                  children: [
                    ///<========================Main Car Image=========================================>
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoute.photoView);
                      },
                      child: Container(
                          width: double.maxFinite,
                          height: 250.h,
                          decoration: BoxDecoration(
                            color: AppColors.blueLight,
                            borderRadius: BorderRadius.circular(5.r),
                          ),
                          child: CustomImage(
                            imageSrc: AppImages.carr,
                            imageType: ImageType.png,
                          )

                          /*CustomNetworkImage(
                          borderRadius: BorderRadius.circular(5.r),
                          imageUrl: image[controller.imageIndex],
                          height: 139.h,
                          width: double.maxFinite,
                        ),*/
                          ),
                    ),
                    Positioned(
                        bottom: 0.h,
                        right: 0.w,
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              vertical: 4.h, horizontal: 12.w),
                          decoration: const BoxDecoration(
                              color: AppColors.greenDarkHover),
                          child: CustomText(
                            text: "${currentIndex + 1}/" "${image.length}",
                            color: AppColors.white,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        )),

                    ///<====================================Others Image=============================>
                    // Positioned(
                    //   top: 155.h,
                    //   child: SingleChildScrollView(
                    //     physics: BouncingScrollPhysics(),
                    //     padding: EdgeInsets.symmetric(horizontal: 5.w),
                    //     scrollDirection: Axis.horizontal,
                    //     child: Row(
                    //         children: List.generate(image.length, (index) {
                    //       return Padding(
                    //         padding: EdgeInsets.only(right: 24.w),
                    //         child: GestureDetector(
                    //           onTap: () {
                    //             controller.imageIndex = index;
                    //             controller.update();
                    //           },
                    //           child: CustomNetworkImage(
                    //               borderRadius: BorderRadius.circular(5.r),
                    //               imageUrl: image[index],
                    //               height: 43.h,
                    //               width: 76.w),
                    //         ),
                    //       );
                    //     })),
                    //   ),
                    // ),

                    ///<=====================Favourite icon========================================>
                    Positioned(
                      top: 16.h,
                      right: 16.w,
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


              ///<=================== product name ========================>
              Padding(
                padding: EdgeInsets.only(left: 24.w, right: 24.w, bottom: 24.h),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomText(
                      text: 'Tesla offers six vehicle model',
                      fontWeight: FontWeight.w600,
                      top: 16.h,
                      bottom: 8,
                    ),
                    ///<========================= amount =========================>
                    CustomText(
                      text: '\$${1929}',
                      fontWeight: FontWeight.w600,
                      bottom: 8.h,
                      fontSize: 18.h,
                    ),
                    ///<=================== location +==============\====>
                    Row(
                      children: [
                        const CustomImage(
                          imageSrc: AppIcons.location,
                          size: 16,
                        ),
                        CustomText(
                          text: '22187 Hamburg Bramfeld',
                          top: 8.h,
                          bottom: 8.w,
                          left: 8.w,
                        ),
                      ],
                    ),

                    ///<=================== date +==============\====>
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const CustomImage(
                          imageSrc: AppIcons.date,
                          size: 16,
                        ),
                        CustomText(
                          text: '20-3-2024',
                          bottom: 8.w,
                          left: 8.w,
                        ),
                      ],
                    ),

                    /*///<========================= phn number =========================>
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Icon(
                          Icons.send_to_mobile_outlined,
                          size: 18.sp,
                        ),
                        CustomText(
                          text: '01923647794',
                          bottom: 8.h,
                          left: 4.w,
                        ),
                      ],
                    ),*/


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
                      height: 8.h,
                    ),

                    ///<===============================Details========================>


                    ///<=================================Features======================>
                    // Features(),

                    Container(
                      margin: EdgeInsets.only(bottom: 12.h, top: 12.h),
                      height: 1.h,
                      width: MediaQuery.of(context).size.width,
                      color: AppColors.blueLightHover,
                    ),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(text: AppStrings.horsepower),
                        CustomText(text: '335 Hp'),
                      ],
                    ),

                    Container(
                      margin: EdgeInsets.only(bottom: 12.h, top: 12.h),
                      height: 1.h,
                      width: MediaQuery.of(context).size.width,
                      color: AppColors.blueLightHover,
                    ),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(text: AppStrings.torque),
                        CustomText(text: '369 Ib-ft'),
                      ],
                    ),

                    Container(
                      margin: EdgeInsets.only(bottom: 12.h, top: 12.h),
                      height: 1.h,
                      width: MediaQuery.of(context).size.width,
                      color: AppColors.blueLightHover,
                    ),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(text: AppStrings.topSpeed),
                        CustomText(text: '286 kmph'),
                      ],
                    ),

                    Container(
                      margin: EdgeInsets.only(bottom: 12.h, top: 12.h),
                      height: 1.h,
                      width: MediaQuery.of(context).size.width,
                      color: AppColors.blueLightHover,
                    ),

                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomText(text: AppStrings.transmission),
                        CustomText(text: 'Automatic'),
                      ],
                    ),

                    Container(
                      margin: EdgeInsets.only(bottom: 12.h, top: 12.h),
                      height: 1.h,
                      width: MediaQuery.of(context).size.width,
                      color: AppColors.blueLightHover,
                    ),

                    ///<=========================Bluetooth connectivity==============================================>
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              AppIcons.blutooth,
                              width: 12.h,
                              height: 20.h,
                            ),
                            CustomText(
                              left: 8.w,
                              text: AppStrings.bluetoothConnectivity,
                              color: AppColors.blueNormal,
                            ),
                          ],
                        ),
                        const CustomText(
                          text: "Yes",
                          color: AppColors.greenNormal,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 22.h,
                    ),

                    ///<==========================Divider============================================================>
                    Container(
                      height: 1.h,
                      width: double.maxFinite,
                      color: AppColors.blueLight,
                    ),

                    ///<============================================Automatic Climate Change==============================>
                    SizedBox(
                      height: 22.h,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset(
                              AppIcons.weather,
                              width: 12.h,
                              height: 20.h,
                            ),
                            CustomText(
                              left: 8.w,
                              text: AppStrings.automaticClimateControl,
                              color: AppColors.blueNormal,
                            ),
                          ],
                        ),
                        const CustomText(
                          text: "Yes",
                          color: AppColors.greenNormal,
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ],
                    ),
                    // tabPage[controller.tabPosition],
                    SizedBox(
                      height: 12.h,
                    ),

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
                          bottom: 8,
                        )),
                    ///<=================================Tab Bar=========== ==============================>
                    Align(
                        alignment: AlignmentDirectional.centerStart,
                        child: Column(
                          children: [
                            CustomText(
                              text: AppStrings.details,
                              color: AppColors.greenNormal,
                              fontSize: 14.h,
                            ),
                            Container(
                              height: 1.h,
                              width: 50.w,
                              color: AppColors.greenNormal,
                            ),
                          ],
                        )),
                    const Details(),
                    SizedBox(
                      height: 24.h,
                    ),

                    ///<======================= button =======================>

                    SizedBox(
                      height: 16.h,
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
                            Get.toNamed(AppRoute.featureProductsScreen,
                                arguments: productName);
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
                            (index) => Container(
                                  margin: EdgeInsets.only(right: 8.h),
                                  child: CustomCard(
                                      status:
                                          productList[index]['status'] ?? '',
                                      rating:
                                          productList[index]['rating'] ?? '',
                                      amount:
                                          productList[index]['amount'] ?? '',
                                      productName:
                                          productList[index]['name'] ?? '',
                                      onTapFavour: () {
                                        // controller.isFavour.value =
                                        // !controller.isFavour.value;
                                        // controller.update();
                                      },
                                      productImage:
                                          productList[index]['image'] ?? '',
                                      onTapCard: () {
                                        Get.toNamed(AppRoute.carDetailsScreen);
                                      }),
                                )),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      }),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 20.w),
        child: Row(
          children: [
            Expanded(
              child: CustomButton(
                ontap: () {
                  Get.toNamed(AppRoute.inboxScreen);
                },
                text: 'Message',
              ),
            ),
            SizedBox(width: 8.w,),
            Expanded(
              child: CustomButton(
                
                ontap: () async{

                    String url = 'tel:ß0123456789';
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                },
                text: 'Call',
              ),
            )
          ],
        ),
      ),
    );
  }
}
