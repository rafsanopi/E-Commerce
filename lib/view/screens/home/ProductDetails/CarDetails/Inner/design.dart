import 'package:bazar24_7/helper/network_image.dart';
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/view/widgets/custom_text/custom_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:photo_view/photo_view.dart';


class Design extends StatelessWidget {
  Design({super.key});
  List<String> images = [
    AppImages.car1,
    AppImages.car2,
    AppImages.car3,
    AppImages.car5,
    AppImages.car1,
    AppImages.car2,
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ///<=====================================Top Text============================>
        Align(
          alignment: AlignmentDirectional.centerStart,
          child: CustomText(
            text: "Powerful and sporty -The exterior",
            fontWeight: FontWeight.w500,
            fontSize: 16,
            color: AppColors.blueNormal,
            bottom: 10.h,
          ),
        ),

        CustomText(
          text: "For on even sportier look. opt for k. opt for optional design",
          color: AppColors.blueNormal,
          fontSize: 12,
          fontWeight: FontWeight.w400,
          maxLines: 5,
          textAlign: TextAlign.start,
          bottom: 16.h,
        ),

        ///<============================Image Section======================================>
       /* StaggeredGrid.count(
          crossAxisCount: 2,
          mainAxisSpacing: 12,
          crossAxisSpacing: 12,

          children: List.generate(
            images.length,
            (index) {
              return StaggeredGridTile.count(
                crossAxisCellCount: index + 3,
                mainAxisCellCount: index + 2,
                child: CustomNetworkImage(
                    borderRadius: BorderRadius.circular(5.r),
                    imageUrl: images[index],
                    height: double.maxFinite,
                    width: double.maxFinite),
              );
            },
          ),
        ),*/

        StaggeredGrid.count(
          crossAxisCount: 4,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,

          children: [
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: CustomNetworkImage(
                    borderRadius: BorderRadius.circular(8),
                    imageUrl: AppImages.car2,
                    height: 100, width: 100)
            ),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 4,
                child: CustomNetworkImage(
                    borderRadius: BorderRadius.circular(8),
                    imageUrl: AppImages.car1,
                    height: 100, width: 100)
            ),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 2,
                child: CustomNetworkImage(
                    borderRadius: BorderRadius.circular(8),
                    imageUrl: AppImages.car3,
                    height: 100, width: 100)
            ),
            StaggeredGridTile.count(
                crossAxisCellCount: 4,
                mainAxisCellCount: 2,
                child: CustomNetworkImage(
                    borderRadius: BorderRadius.circular(8),
                    imageUrl: AppImages.car5,
                    height: 100, width: 100)
            ),
            StaggeredGridTile.count(
                crossAxisCellCount: 4,
                mainAxisCellCount: 3,
                child: CustomNetworkImage(
                    borderRadius: BorderRadius.circular(8),
                    imageUrl: AppImages.car6,
                    height: 100, width: 100)),
          ],
        ),
      ],
    );
  }
}
