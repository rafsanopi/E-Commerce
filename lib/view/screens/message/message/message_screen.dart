import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/helper/network_image.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_icons.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/widgets/bottom_nab_bar/bottom_nav_bar.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomNavBar(currentIndex: 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const CustomText(
          text: AppStrings.chat,
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
        leading: SizedBox(),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(24.r),
        child: Column(
          children: [
            ///<====================================Search Field==================================>

            GestureDetector(
              onTap: () {},
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 8.h),
                decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(8.r),
                  boxShadow: const [
                    BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 95,
                        color: Color(0xff99ABC6)),
                  ],
                ),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      AppIcons.search,
                      height: 24.h,
                      width: 24.w,
                    ),
                    CustomText(
                      text: AppStrings.search,
                      color: AppColors.blueLightActive,
                      left: 10.w,
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 24.h,
            ),

            ///<====================================Chat Item====================================>

            ListView.builder(
              itemCount: 100,
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    Get.toNamed(AppRoute.inboxScreen);
                  },
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              ///<===================================Image Section===================================>
                              Container(
                                height: 50.h,
                                width: 50.w,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: AppColors.cardBack,
                                ),
                                child: CustomNetworkImage(
                                  imageUrl: AppImages.house1,
                                  height: 50.h,
                                  width: 50.w,
                                  boxShape: BoxShape.circle,
                                ),
                              ),
                              SizedBox(
                                width: 16.w,
                              ),

                              ///<====================================Name and message section====================>
                              const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomText(
                                    text: "Md.Nazmul Hoque",
                                    fontWeight: FontWeight.w500,
                                    fontSize: 16,
                                  ),
                                  CustomText(
                                    text: "Hi!! Can i talk to you",
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                ],
                              ),
                            ],
                          ),

                          ///<========================================Message time =============================>
                          const CustomText(text: "4/4/24")
                        ],
                      ),
                      SizedBox(
                        height: 24.h,
                      ),
                    ],
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
