import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_icons.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/widgets/CsutomImage/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_image/custom_image.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class NotificationsScreen extends StatelessWidget {
    NotificationsScreen({super.key});

    List<String> notificationList=[
      'Your offer has been accepted!',
      'Your account setup successful!',
      'New Services Available!',
      'Your credit card connected '
    ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.white,
        centerTitle: true,
        title: CustomText(text: AppStrings.notifications,fontSize: 16.h,fontWeight: FontWeight.w500,),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 24.h,horizontal: 20.w),
        child: Column(
          children: List.generate(notificationList.length, (index) => Container(
            margin: EdgeInsets.only(bottom: 16.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ///<=============== notification icon ================ >
                Expanded(
                  flex: 1,
                  child: Container(
                      padding: const EdgeInsets.all(12),
                      decoration: const BoxDecoration(
                          color: AppColors.blueLightHover,
                          shape: BoxShape.circle
                      ),
                      child:  CustomImage(imageSrc: AppIcons.accept,imageType: ImageType.svg,size: 24.h,imageColor: AppColors.white, )
                  ),
                ),
                SizedBox(width: 8.w,),
                Expanded(
                  flex: 5,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///<================= notification main text =====================>
                      CustomText(text: notificationList[index],
                        fontWeight: FontWeight.w500,
                        maxLines: 2,
                        textAlign: TextAlign.start,
                        bottom: 8.h,
                      ),

                      ///<================= notification details text =====================>
                      CustomText(
                        maxLines: 3,
                        textAlign: TextAlign.start,
                        text: 'Congrats! your offer has been accepted',
                        bottom: 8.h,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 8.w,),

                ///<===================== popup menu button ========================>
                Expanded(
                  flex: 1,
                  child: PopupMenuButton(

                      color: Colors.white,
                      elevation: 1,
                      position: PopupMenuPosition.under,
                      itemBuilder: (context) => [

                        ///<================ delete =====================>
                        PopupMenuItem(
                            child: GestureDetector(
                              onTap: () {
                                //Get.toNamed(AppRoute.uploadingPhoto);
                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.delete,
                                    size: 24.h,
                                  ),
                                  CustomText(
                                    text: AppStrings.delete,
                                    fontSize: 14.h,
                                    left: 4,
                                  )
                                ],
                              ),
                            )),

                        ///<===================== mark as read =======================>
                        PopupMenuItem(
                            child: GestureDetector(
                              onTap: () {

                              },
                              child: Row(
                                children: [
                                  Icon(
                                    Icons.mark_as_unread,
                                    size: 24.h,
                                  ),
                                  CustomText(
                                    text: AppStrings.makeAsRead,
                                    fontSize: 14.h,
                                    left: 4,
                                  )
                                ],
                              ),
                            )),
                      ]),
                )

              ],
            ),
          )),
        ),
      ),
    );
  }
}
