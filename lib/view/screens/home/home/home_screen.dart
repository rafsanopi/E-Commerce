import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_icons.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/screens/SelectArea/controller.dart';
import 'package:bazar24_7/view/screens/home/controller/home_controller.dart';
import 'package:bazar24_7/view/screens/home/home/inner/home_app_bar/home_app_bar.dart';
import 'package:bazar24_7/view/widgets/bottom_nab_bar/bottom_nav_bar.dart';
import 'package:bazar24_7/view/widgets/custom_card/custom_card.dart';
import 'package:bazar24_7/view/widgets/custom_image/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  List<Map<String, String>> categoryList = [
    {'icon': AppIcons.all, 'category': 'All'},
    {'icon': AppIcons.home, 'category': 'Properties'},
    {'icon': AppIcons.car, 'category': 'Automobile '},
    {'icon': AppIcons.motorcycle, 'category': 'Motorcycles'},
    {'icon': AppIcons.mobile, 'category': 'Mobile'},
    {'icon': AppIcons.fashion, 'category': 'Fashion/Beauty'},
    {'icon': AppIcons.job, 'category': 'Jobs'},
    {'icon': AppIcons.service, 'category': 'Services'},
    {'icon': AppIcons.learn, 'category': 'Learn and curse'},
  ];
  final List<String> bannerImg = [
    AppImages.bannerImage3,
    AppImages.bannerImage4,
    AppImages.bannerImage5,
  ];
  List<Map<String, String>> productList = [
    {
      'image': AppImages.car1,
      'name': 'Luxury ',
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

  final HomeController homeController = Get.find<HomeController>();
  var productName = 'Feature Products';
  var topName = 'Top Deals';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: const BottomNavBar(currentIndex: 0),
        body: GetBuilder<HomeController>(builder: (controller) {
          return SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            padding: EdgeInsets.symmetric(horizontal: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///=============== location,notification,search filter =====================>
                HomeAppBar(
                  location:'Dhaka',
                  onTapNotification: () {
                    Get.toNamed(AppRoute.notificationsScreen);
                  },
                  onTapFilter: () {
                    Get.toNamed(AppRoute.filterScreen);
                  },
                  area: 'Banasree',
                ),

                SizedBox(
                  height: 16.h,
                ),

                ///<============================ Categories =======================>
                CustomText(
                  text: AppStrings.categories,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.h,
                  bottom: 8.h,
                ),

                ///<============================ Categories list =======================>
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        categoryList.length,
                        (index) => GestureDetector(
                              onTap: () {
                                Get.toNamed(AppRoute.categoryScreen);
                              },
                              child: Container(
                                margin: EdgeInsets.only(right: 8.w),
                                padding: EdgeInsets.symmetric(
                                    vertical: 4.h, horizontal: 16.w),
                                decoration: BoxDecoration(
                                  color: AppColors.greenLightActive,
                                  borderRadius: BorderRadius.circular(36),
                                ),
                                child: Row(
                                  children: [
                                    CustomImage(
                                      imageSrc:
                                          categoryList[index]['icon'] ?? '',
                                      size: 18.h,
                                      imageColor: AppColors.greenNormal,
                                    ),
                                    CustomText(
                                      text:
                                          categoryList[index]['category'] ?? '',
                                      color: AppColors.greenNormal,
                                      left: 4.w,
                                      fontSize: 14.h,
                                    )
                                  ],
                                ),
                              ),
                            )),
                  ),
                ),


                /*///<================== special offers =======================>
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: AppStrings.specialOffers,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoute.specialOfferScreen);
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
                  height: 8.h,
                ),*/

                ///<================= slider =================>
                Obx(() => GestureDetector(
                      onTap: () {
                        // Get.toNamed(AppRoute.specialOfferScreen);
                      },
                      child: Column(
                        children: [
                          CarouselSlider(
                            options: CarouselOptions(
                              height: 150.0.h,
                              autoPlay: true,
                              autoPlayCurve: Curves.ease,
                              pageSnapping: false,
                              //viewportFraction: 1,
                              onPageChanged: (int index, reason) {
                                homeController.bannerIndex.value = index;

                                homeController.pageController.value =
                                    PageController(
                                        initialPage:
                                            homeController.bannerIndex.value);
                              },
                            ),
                            items: bannerImg.map((imagePath) {
                              return Builder(
                                builder: (BuildContext context) {
                                  return Container(
                                    width: 330.w,
                                    margin: EdgeInsets.only(right: 4.w),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage(imagePath))),
                                  );
                                },
                              );
                            }).toList(),
                          ),
                          SmoothPageIndicator(
                            controller: homeController.pageController.value,
                            count: bannerImg.length,
                            axisDirection: Axis.horizontal,
                            effect: const ExpandingDotsEffect(
                              expansionFactor: 3,
                              spacing: 8.0,
                              radius: 4.0,
                              dotWidth: 8.0,
                              dotHeight: 8.0,
                              paintStyle: PaintingStyle.fill,
                              strokeWidth: 1.5,
                              dotColor: AppColors.greenLightActive,
                              activeDotColor: AppColors.greenNormal,
                            ),
                          ),
                        ],
                      ),
                    )),

                SizedBox(
                  height: 8.h,
                ),

                ///<================ featured products =======================>
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: AppStrings.featuredProducts,
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
                  height: 8.h,
                ),

                ///<======================= featured list =======================>
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate(
                        productList.length,
                        (index) => Container(
                          margin: EdgeInsets.only(right: 8.w),
                          child: CustomCard(
                              status: productList[index]['status'] ?? '',
                              rating: productList[index]['rating'] ?? '',
                              amount: productList[index]['amount'] ?? '',
                              productName: productList[index]['name'] ?? '',
                              onTapFavour: () {
                               /* controller.isFavour.value =
                                    !controller.isFavour.value;
                                controller.update();*/
                              },
                              productImage: productList[index]['image'] ?? '',
                              onTapCard: () {
                                Get.toNamed(AppRoute.carDetailsScreen);
                              }),
                        )),
                  ),
                ),

                SizedBox(
                  height: 8.h,
                ),

                ///<================ Top Deals =======================>
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      text: AppStrings.topDeals,
                      fontWeight: FontWeight.w500,
                      fontSize: 16.h,
                    ),
                    GestureDetector(
                      onTap: () {
                        Get.toNamed(AppRoute.featureProductsScreen,
                            arguments: topName);
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
                  height: 8.h,
                ),

                ///<======================= top list =======================>
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: List.generate(
                        productList.length,
                        (index) => Container(
                          margin: EdgeInsets.only(right: 8.w),
                          child: CustomCard(
                              status: productList[index]['status'] ?? '',
                              rating: productList[index]['rating'] ?? '',
                              amount: productList[index]['amount'] ?? '',
                              productName: productList[index]['name'] ?? '',
                              onTapFavour: () {
                                /*controller.isFavour.value =
                                    !controller.isFavour.value;
                                controller.update();*/
                              },
                              productImage: productList[index]['image'] ?? '',
                              onTapCard: () {
                                Get.toNamed(AppRoute.carDetailsScreen);
                              }),
                        )),
                  ),
                ),
              ],
            ),
          );
        }));
  }
}
