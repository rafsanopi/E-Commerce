import 'package:bazar24_7/helper/network_image.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_icons.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/screens/home/controller/home_controller.dart';
import 'package:bazar24_7/view/widgets/custom_button/custom_button.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../custom_image/custom_image.dart';

class CustomCard extends StatelessWidget {
    CustomCard({super.key, required this.status, required this.rating, required this.amount, required this.productName, required this.onTapFavour, required this.productImage, required this.onTapCard});

    //final VoidCallback onTapButton;
    final VoidCallback onTapFavour;
    final VoidCallback onTapCard;
    final String status;
    final String rating;
    final String amount;
    final String productName;
    final String productImage;

    final HomeController controller = Get.find<HomeController>();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTapCard,
      child: Container(
        margin: EdgeInsets.only( bottom: 10.h, ),
        width: MediaQuery.of(context).size.width * .44,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  offset: Offset(0, 4),
                  blurRadius: 4,
                  color: Color(0xffCDCCCC)),
            ],
            borderRadius: BorderRadius.circular(4),
            color: AppColors.white),
        child: Column(
          children: [
            Stack(
              children: [
                CustomNetworkImage(
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(4),
                        topLeft: Radius.circular(4),
                        bottomRight: Radius.circular(0),
                        bottomLeft: Radius.circular(0)),
                    imageUrl: productImage,
                    height: 150,
                    width: MediaQuery.of(context).size.width * .5),
                Positioned(
                    top: 12.h,
                    right: 12.w,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: GestureDetector(
                        onTap: onTapFavour,
                        child: Container(
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: AppColors.white,
                              shape: BoxShape.circle
                          ),
                          child:controller.isFavour.value  ? CustomImage(
                            imageSrc: AppIcons.favourite,
                            imageType: ImageType.svg,
                            size: 16.h,
                          ): CustomImage(
                            imageSrc: AppIcons.favourActive,
                            imageType: ImageType.svg,
                            imageColor: AppColors.greenNormal,
                            size: 16.h,
                          ),
                        ),
                      ),
                    )
                )
              ],
            ),
            Container(
              padding:
              EdgeInsets.symmetric(vertical: 8.h, horizontal: 8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ///<================ product name & Rating +===================>
                  Row(
                    //mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Flexible(
                        child: CustomText(
                        
                          textAlign: TextAlign.start,
                          text: productName,
                        ),
                      ),
                      /*Row(
                        children: [
                          const Icon(
                            Icons.star_border,
                            color: AppColors.blueNormal,
                            size: 18,
                          ),
                          CustomText(
                            text: rating,
                            left: 4.w,
                          ),
                        ],
                      )*/
                    ],
                  ),

                  SizedBox(
                    height: 8.h,
                  ),

                  ///<==================== amount & product status =====================>
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(
                        text: amount,
                        fontSize: 14.h,
                        fontWeight: FontWeight.w500,
                      ),
                      Container(
                        padding: EdgeInsets.all(4.h),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: AppColors.blueLightHover),
                        child: CustomText(
                          text: status,
                          fontSize: 12.h,
                        ),
                      )
                    ],
                  ),

/*
                  ///<==================== button ===============>
                  CustomButton(
                    ontap: onTapButton,
                    buttonColor: AppColors.greenLightHover,
                    text: AppStrings.details,
                    textColor: AppColors.greenNormal,
                    height: 32.h,
                  )*/
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
