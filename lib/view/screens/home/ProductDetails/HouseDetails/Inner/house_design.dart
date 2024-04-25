import 'package:bazar24_7/helper/network_image.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class DesignHouse extends StatelessWidget {
   DesignHouse({super.key});
  List<String> images = [
    AppImages.house1,
    AppImages.house2,
    AppImages.house3,
    AppImages.house4,

  ];
  @override
  Widget build(BuildContext context) {
    return  Column(
     children: [
       ///<============================Image Section======================================>
       StaggeredGrid.count(
         crossAxisCount: 5,
         mainAxisSpacing: 4,
         crossAxisSpacing: 4,
         children: List.generate(
           images.length,
               (index) {
             return StaggeredGridTile.count(
               crossAxisCellCount: index + 2,
               mainAxisCellCount: index + 2,
               child: CustomNetworkImage(
                   borderRadius: BorderRadius.circular(5.r),
                   imageUrl: images[index],
                   height: double.maxFinite,
                   width: double.maxFinite),
             );
           },
         ),
       ),
     ],
    );
  }
}
