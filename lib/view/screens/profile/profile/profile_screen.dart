import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/helper/network_image.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_icons.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/widgets/bottom_nab_bar/bottom_nav_bar.dart';
import 'package:bazar24_7/view/widgets/bottom_sheet/bottom_sheet_screen.dart';
import 'package:bazar24_7/view/widgets/custom_profile_container/custom_profile_container.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavBar(currentIndex: 4),
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: CustomText(
          text: AppStrings.myProfile,
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

            SizedBox(height: 16.h,),
            ///<========================= total product =========================>
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: 'Total Add Products:',
                  fontSize: 16.h,
                  color: AppColors.greenDarkHover,
                ),
                CustomText(
                  text: '12000',
                  fontSize: 16.h,
                  fontWeight: FontWeight.w500,
                  color: AppColors.greenDarkHover,
                  left: 8,
                ),
              ],
            ),

            SizedBox(height: 8.h,),
            ///<========================= add new product button ==================>
            Align(
              alignment: Alignment.center,
              child: GestureDetector(
                onTap: (){
                  Get.toNamed(AppRoute.addProductScreen);
                },
                child: Container(
                  width: MediaQuery.of(context).size.width *.54 ,
                  padding: EdgeInsets.symmetric(vertical: 8.h,horizontal: 12.w),
                  decoration: BoxDecoration(
                    color: AppColors.greenNormal,
                    borderRadius: BorderRadius.circular(4.sp),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                     const CustomText(
                        text: 'Add new product',
                        color: Colors.white,
                      ),
                      Icon(Icons.add,color: Colors.white,size: 34.h,)
                    ],
                  ),
                ),
              ),
            ),

            SizedBox(height: 24.h,),
            ///<================= settings =========================
             CustomProfileContainer(onTap: (){
               Get.toNamed(AppRoute.settingsScreen);
             }, icon: AppIcons.setting, name: AppStrings.settings),

            /*///<================= My order =========================
            CustomProfileContainer(onTap: (){
              Get.toNamed(AppRoute.myOrderScreen);
            }, icon: AppIcons.order, name: AppStrings.myOrder),*/

            ///<================= My Subscription =========================
            //CustomProfileContainer(onTap: (){}, icon: AppIcons.subscription, name: AppStrings.subscriptions),

          /*  ///<================= My Dashboard =========================
            CustomProfileContainer(onTap: (){
              Get.toNamed(AppRoute.myDashboardScreen);
            }, icon: AppIcons.dashboard, name: AppStrings.myDashboard),*/

           /* ///<================= Order Request =========================
            CustomProfileContainer(onTap: (){
              Get.toNamed(AppRoute.orderRequestScreen);
            }, icon: AppIcons.orderRequest, name: AppStrings.orderRequest),*/

            ///<================= All Products =========================
            CustomProfileContainer(onTap: (){
              Get.toNamed(AppRoute.allProductsScreen);
            }, icon: AppIcons.all, name: AppStrings.allProducts),

            ///<================= Log Out =========================
            CustomProfileContainer(onTap: (){
              showModalBottomSheet(
                  isScrollControlled: true,
                  backgroundColor: AppColors.white,
                  context: context,
                  builder: (context) {
                    return BottomSheetScreen(mainText: AppStrings.logOut, sureText: AppStrings.areYouSureYouWantToLogout, onTap: (){
                      Get.offAllNamed(AppRoute.signInScreen);
                    });
                  });    
            }, icon: AppIcons.logout, name: AppStrings.logOut),
          ],
        ),
      ),
    );
  }
}
