import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/widgets/CsutomImage/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_image/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecialOfferScreen extends StatelessWidget {
    SpecialOfferScreen({super.key});
    List<String> offerList=[
      AppImages.bannerImage1,
      AppImages.bannerImage2,
      AppImages.bannerImage3,
      AppImages.bannerImage4,
      AppImages.bannerImage5,
      AppImages.bannerImage6,
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        title:  CustomText(text: AppStrings.specialOffers,fontWeight: FontWeight.w500,fontSize: 16.h,),
      ),

      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 24.h,horizontal: 20.h),
        child: Column(
          children: List.generate(offerList.length, (index) => Container(
            margin: EdgeInsets.only(bottom: 16.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.sp),
            ),
            child: CustomImage(
              imageSrc: offerList[index],
              imageType: ImageType.png,

            ),
          )),
        ),
      ),
    );
  }
}
