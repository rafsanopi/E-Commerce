import 'package:bazar24_7/helper/network_image.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/widgets/custom_button/custom_button.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOrderCard extends StatelessWidget {
  CustomOrderCard(
      {super.key,
      this.productImage = '',
      this.productName = '',
      this.productAmount = '',
      this.onTapEdit,

      this.onTapDelete,
      this.quantity = '',
      this.isAmount = true,
      this.isDetails = true,
      this.isPopup = true,
      this.productLocation = 'banasree rampura',
      this.productDate = '10 April 2024',required this.onTapDetails, this.buttonText=AppStrings.details});

  final String productImage;
  final String productName;
  final String productAmount;
  final String quantity;
  final String productLocation;
  final String productDate;
  final String buttonText;
  final VoidCallback? onTapEdit;

  final VoidCallback? onTapDelete;
  final bool isAmount;
  final bool isDetails;
  final bool isPopup;
  final VoidCallback onTapDetails;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 16.h),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.sp),
          color: AppColors.blueLightHover),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 2,
                child: CustomNetworkImage(
                    borderRadius: BorderRadius.circular(5),
                    imageUrl: productImage,
                    height: 83.h,
                    width: 83.w),
              ),
              SizedBox(
                width: 8.w,
              ),
              Expanded(
                flex: 4,
                child: isDetails
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ///<================= product name =====================>
                          CustomText(
                            text: productName,
                            fontWeight: FontWeight.w500,
                            maxLines: 4,
                            textAlign: TextAlign.start,
                            bottom: 4.h,
                          ),

                          ///<================= amount =====================>
                          isAmount
                              ? CustomText(
                                  maxLines: 3,
                                  textAlign: TextAlign.start,
                                  text: productAmount,
                                  bottom: 4.h,
                                )
                              : Row(
                                  children: [
                                    CustomText(
                                      maxLines: 2,
                                      textAlign: TextAlign.start,
                                      text: 'Quantity : ',
                                      right: 4.w,
                                    ),
                                    CustomText(
                                      text: quantity,
                                    ),
                                  ],
                                ),
                        ],
                      )
                    : Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ///<================= product name =====================>
                          CustomText(
                            text: productName,
                            fontWeight: FontWeight.w500,
                            maxLines: 4,
                            textAlign: TextAlign.start,
                            bottom: 4.h,
                          ),

                          ///<================= product location =====================>
                          CustomText(
                            text: productLocation,
                            maxLines: 2,
                            textAlign: TextAlign.start,
                            bottom: 4.h,
                          ),

                          ///<================= product date =====================>
                          CustomText(
                            text: productDate,
                            maxLines: 2,
                            textAlign: TextAlign.start,
                          ),
                        ],
                      ),
              ),

              ///<======================= popupmenu button ===========================>
              isPopup ?  Expanded(
                flex: 1,
                child: PopupMenuButton(
                    iconColor: AppColors.blueNormal,
                    color: Colors.white,
                    elevation: 1,
                    position: PopupMenuPosition.under,
                    itemBuilder: (context) => [
                          ///<===================== edit =======================>
                          PopupMenuItem(
                              child: GestureDetector(
                            onTap: onTapEdit,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  text: AppStrings.edit,
                                  fontSize: 12.h,
                                  right: 8.h,
                                ),
                                Icon(
                                  Icons.edit_note,
                                  size: 18.h,
                                ),
                              ],
                            ),
                          )),



                          ///<================ delete =====================>
                          PopupMenuItem(
                              child: GestureDetector(
                            onTap: onTapDelete,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomText(
                                  text: AppStrings.delete,
                                  fontSize: 12.h,
                                  right: 8.h,
                                ),
                                Icon(
                                  Icons.delete,
                                  size: 18.h,
                                  color: Colors.red,
                                ),
                              ],
                            ),
                          )),
                        ])
              ): SizedBox()
            ],
          ),
          SizedBox(height: 16.h,),
          ///<================= details buttton =====================>
          CustomButton(
            ontap: onTapDetails,
            text: buttonText,
            textColor: AppColors.white,
            height: 38.h,
          )
        ],
      ),
    );
  }
}

/*PopupMenuButton(
                iconColor: AppColors.blueNormal,
                color: Colors.white,
                elevation: 1,
                position: PopupMenuPosition.under,
                itemBuilder: (context) => [
                  ///<================ delete =====================>
                  PopupMenuItem(
                      child: GestureDetector(
                        onTap: onTapDelete,
                        child: Row(

                          children: [
                            Icon(
                              Icons.delete,
                              size: 18.h,
                              color: Colors.red,
                            ),
                            CustomText(
                              text: AppStrings.delete,
                              fontSize: 12.h,
                              left: 8.h,
                            ),
                          ],
                        ),
                      )),
                  ///<===================== mark as read =======================>
                  PopupMenuItem(
                    padding: EdgeInsets.all(0),
                      child: GestureDetector(
                        onTap: onTapPublish,
                        child: CustomText(
                          text: AppStrings.makeAsRead,
                          fontSize: 12.h,
                          left: 8.h,
                        ),
                      )),
                ]),*/