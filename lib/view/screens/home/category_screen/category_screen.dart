import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_icons.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/screens/home/category_screen/inner/all_category_screen.dart';
import 'package:bazar24_7/view/screens/home/category_screen/inner/car_category_screen.dart';
import 'package:bazar24_7/view/screens/home/category_screen/inner/fashion_category_screen.dart';
import 'package:bazar24_7/view/screens/home/category_screen/inner/jobs_category_screen.dart';
import 'package:bazar24_7/view/screens/home/category_screen/inner/learn_category_screen.dart';
import 'package:bazar24_7/view/screens/home/category_screen/inner/mobile_category_screen.dart';
import 'package:bazar24_7/view/screens/home/category_screen/inner/motocycle_category_screen.dart';
import 'package:bazar24_7/view/screens/home/category_screen/inner/properties_category_screen.dart';
import 'package:bazar24_7/view/screens/home/controller/home_controller.dart';
import 'package:bazar24_7/view/screens/home/home/inner/home_app_bar/home_app_bar.dart';
import 'package:bazar24_7/view/widgets/CsutomImage/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_image/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CategoryScreen extends StatelessWidget {
   CategoryScreen({super.key});

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
   List<Widget> screens = [
      AllCategoryScreen(),
      PropertiesCategoryScreen(),
      CarCategoryScreen(),
      MotocycleCategoryScreen(),
      MobileCategoryScreen(),
      FashionCategoryScreen(),
      JobsCategoryScreen(),
      CarCategoryScreen(),
      LearnCategoryScreen(),
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<HomeController>(
        builder: (controller) {
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
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
                  }, area:'Banasree',
                ),

                SizedBox(
                  height: 24.h,
                ),

                ///<============================ Categories =======================>
                CustomText(
                  text: AppStrings.categories,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.h,
                  bottom: 8.h,
                ),

                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                        categoryList.length,
                            (index) => GestureDetector(
                          onTap: (){
                            controller.categoryIndex = index;
                            controller.update();
                            print(controller.categoryIndex);
                          },
                          child: Container(
                            margin: EdgeInsets.only(right: 8.w),
                            padding: EdgeInsets.symmetric(
                                vertical: 4.h, horizontal: 16.w),
                            decoration: BoxDecoration(
                              color:controller.categoryIndex == index ? AppColors.greenNormal : AppColors.greenLightHover,
                              borderRadius: BorderRadius.circular(36),
                            ),
                            child: Row(
                              children: [
                                CustomImage(
                                  imageSrc: categoryList[index]['icon'] ?? '',
                                  size: 18.h,
                                  imageColor:controller.categoryIndex == index ? Colors.white : AppColors.greenNormal,
                                ),
                                CustomText(
                                  text: categoryList[index]['category'] ?? '',
                                  color:controller.categoryIndex == index ? Colors.white : AppColors.greenNormal,
                                  left: 4.w,
                                  fontSize: 16.h,
                                )
                              ],
                            ),
                          ),
                        )),
                  ),
                ),
                SizedBox(height: 24.h,),

                screens[controller.categoryIndex]

              ],
            ),
          );
        }
      ),
    );
  }
}
