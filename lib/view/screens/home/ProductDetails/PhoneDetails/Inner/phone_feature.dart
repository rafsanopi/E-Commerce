import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_static_string.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class PhoneFeature extends StatelessWidget {
  const PhoneFeature({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 35.h,
        ),

        ///<===================================top three feature===============================>
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   children: [
        //     ///<===================================== Storage =================================>
        //     Row(
        //       children: [
        //         Column(
        //           children: [
        //             const CustomImage(
        //               imageSrc: AppIcons.hp,
        //               size: 24,
        //             ),
        //             Row(
        //               children: [
        //                 CustomText(
        //                   text: "256",
        //                   fontWeight: FontWeight.w500,
        //                   fontSize: 16,
        //                   top: 4.h,
        //                 ),
        //                 CustomText(
        //                   text: "GB",
        //                   top: 4.h,
        //                   fontWeight: FontWeight.w400,
        //                   fontSize: 10,
        //                   left: 8.w,
        //                 ),
        //               ],
        //             ),
        //             CustomText(
        //               text: AppStrings.storage,
        //               color: AppColors.blueNormal,
        //               fontSize: 12,
        //               fontWeight: FontWeight.w400,
        //               top: 4.h,
        //             ),
        //           ],
        //         ),
        //         SizedBox(
        //           width: 33.w,
        //         ),
        //         Container(
        //           height: 36.h,
        //           width: 1.w,
        //           color: AppColors.blueNormal,
        //         ),
        //       ],
        //     ),
        //
        //     ///<=====================================Display =================================>
        //     Row(
        //       children: [
        //         Column(
        //           children: [
        //             const CustomImage(
        //               imageSrc: AppIcons.ibFt,
        //               size: 24,
        //             ),
        //             Row(
        //               children: [
        //                 CustomText(
        //                   text: "6.1",
        //                   fontWeight: FontWeight.w500,
        //                   fontSize: 16,
        //                   top: 4.h,
        //                 ),
        //                 CustomText(
        //                   text: "Inches",
        //                   top: 4.h,
        //                   fontWeight: FontWeight.w400,
        //                   fontSize: 10,
        //                   left: 8.w,
        //                 ),
        //               ],
        //             ),
        //             CustomText(
        //               text: AppStrings.display,
        //               color: AppColors.blueNormal,
        //               fontSize: 12,
        //               fontWeight: FontWeight.w400,
        //               top: 4.h,
        //             ),
        //           ],
        //         ),
        //         SizedBox(
        //           width: 33.w,
        //         ),
        //         Container(
        //           height: 36.h,
        //           width: 1.w,
        //           color: AppColors.blueNormal,
        //         ),
        //       ],
        //     ),
        //
        //     ///<=====================================Chip =================================>
        //     Row(
        //       children: [
        //         Column(
        //           children: [
        //             const CustomImage(
        //               imageSrc: AppIcons.watch,
        //               size: 24,
        //             ),
        //             Row(
        //               children: [
        //                 CustomText(
        //                   text: "A15",
        //                   fontWeight: FontWeight.w500,
        //                   fontSize: 16,
        //                   top: 4.h,
        //                 ),
        //                 CustomText(
        //                   text: "Bionic chip",
        //                   top: 4.h,
        //                   fontWeight: FontWeight.w400,
        //                   fontSize: 10,
        //                   left: 8.w,
        //                 ),
        //               ],
        //             ),
        //             CustomText(
        //               text: "Chip",
        //               color: AppColors.blueNormal,
        //               fontSize: 12,
        //               fontWeight: FontWeight.w400,
        //               top: 4.h,
        //             ),
        //           ],
        //         ),
        //         //
        //       ],
        //     ),
        //   ],
        // ),

        ///<=============================================Capacity===============================>

        const CustomText(
          text: AppStrings.capacity,
          color: AppColors.blueNormal,
          fontSize: 16,
          fontWeight: FontWeight.w500,
          //top: 20.h,
        ),

        CustomText(
          text: "256 GB",
          top: 10.h,
        ),

        ///<===================================Size and weight==================================>
        CustomText(
          text: AppStrings.sizeAndWeight,
          fontWeight: FontWeight.w500,
          fontSize: 16,
          top: 16.h,
        ),
        CustomText(
          text:
              "Width: 2.82 inches (71.5 mm) Height: 5.78 inches (146.7 mm) Depth: 0.30 inch (7.65 mm)",
          top: 10.h,
          textAlign: TextAlign.start,
          maxLines: 10,
          bottom: 16.h,
        ),

        // ///<======================================Display===========================================>
        // const CustomText(
        //   text: AppStrings.display,
        //   fontSize: 16,
        //   fontWeight: FontWeight.w500,
        // ),
        //
        // CustomText(
        //   text:
        //       "Super Retina XDR display 6.1‑inch (diagonal) all‑screen OLED display 2532‑by‑1170-pixel resolution at 460 ppi HDR display True Tone  Wide color (P3) Haptic Touch",
        //   top: 10.h,
        //   maxLines: 100,
        //   textAlign: TextAlign.start,
        // ),
        //
        // ///<===================================Chip============================================>
        // CustomText(
        //   text: AppStrings.chip,
        //   fontWeight: FontWeight.w500,
        //   fontSize: 16,
        //   top: 16.h,
        //   bottom: 16.h,
        // ),
        //
        // const CustomText(
        //   text:
        //       "A15 Bionic chip 6‑core CPU with 2 performance and 4 efficiency cores 4‑core GPU 16‑core Neural Engine",
        //   textAlign: TextAlign.start,
        //   maxLines: 100,
        // ),
        //
        // ///<================================Camera===============================================>
        // CustomText(
        //   text: AppStrings.camera,
        //   fontSize: 16,
        //   fontWeight: FontWeight.w500,
        //   top: 10.h,
        // ),
        // CustomText(
        //   text:
        //       "Dual 12MP camera system: Main and Ultra Wide cameras Main: ƒ/1.6 aperture Ultra Wide: ƒ/2.4 aperture and 120° field of view 2x optical zoom out Digital zoom up to 5x Portrait mode with Focus and Depth Control Portrait Lighting with six effects",
        //   maxLines: 100,
        //   textAlign: TextAlign.start,
        //   top: 10.h,
        // ),
      ],
    );
  }
}
