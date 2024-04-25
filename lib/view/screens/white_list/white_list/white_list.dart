import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_icons.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/screens/home/controller/home_controller.dart';
import 'package:bazar24_7/view/widgets/CsutomImage/custom_image.dart';
import 'package:bazar24_7/view/widgets/bottom_nab_bar/bottom_nav_bar.dart';
import 'package:bazar24_7/view/widgets/custom_card/custom_card.dart';
import 'package:bazar24_7/view/widgets/custom_image/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WhiteListScreen extends StatelessWidget {
   WhiteListScreen({super.key});

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(currentIndex: 3),
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        title:  CustomText(text: AppStrings.myWishlist,fontWeight: FontWeight.w500,fontSize: 16.h,),
        actions: [
          GestureDetector(
              onTap: (){
                Get.toNamed(AppRoute.searchScreen);
              },
              child: CustomImage(imageSrc: AppIcons.search,size: 24.h,)),
          SizedBox(width: 16.h,)
        ],
      ),
      body: GetBuilder<HomeController>(
        builder: (controller) {
          return SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 24.h,horizontal: 20.w),
            child:  GridView.builder(
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
                      /*controller.isFavour.value = ! controller.isFavour.value;
                      controller.update();*/
                    },
                    productImage: productList[index]['image'] ?? '',
                    onTapCard: () {
                      Get.toNamed(AppRoute.carDetailsScreen);
                    });
              },
            ),
          );
        }
      ),
    );
  }
}
