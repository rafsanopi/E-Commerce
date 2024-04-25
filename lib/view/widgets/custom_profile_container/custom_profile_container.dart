import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_icons.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/widgets/CsutomImage/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_image/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class CustomProfileContainer extends StatelessWidget {
    CustomProfileContainer({super.key, required this.onTap, required this.icon, required this.name});

    final VoidCallback onTap;
    final String icon;
    final String name;
  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(16.h),
        margin: EdgeInsets.only(bottom: 24.h),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.sp),
          color: AppColors.white,
          border: Border.all(color: AppColors.blueLightHover )
        ),
        child: Row(
          children: [
            CustomImage(imageSrc: icon,size: 24.h,imageColor: AppColors.blueNormal ,),
            CustomText(
              text: name,
              fontSize: 16.h,
              left: 16.w,
              //fontWeight: FontWeight.w500,
            ),
          ],
        ),
      ),
    );
  }
}
