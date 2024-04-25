import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/view/widgets/custom_card/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CarCategoryScreen extends StatelessWidget {
    CarCategoryScreen({super.key});
  List<Map<String, String>> productList = [
    {
      'image': AppImages.car3,
      'name': 'BMW',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'new'
    },
    {
      'image': AppImages.car5,
      'name': 'Sports',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'used'
    },
    {
      'image': AppImages.car6,
      'name': 'Toronto',
      'rating': '4.5',
      'amount': '\$${6787}',
      'status': 'used'
    },
    {
      'image': AppImages.car1,
      'name': 'Luxury',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'used'
    },
    {
      'image': AppImages.car2,
      'name': 'Baltimore',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'New'
    },
    {
      'image': AppImages.car3,
      'name': 'BMW',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'new'
    },
    {
      'image': AppImages.car5,
      'name': 'Sports',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'used'
    },
    {
      'image': AppImages.car6,
      'name': 'Toronto',
      'rating': '4.5',
      'amount': '\$${6787}',
      'status': 'used'
    },
    {
      'image': AppImages.car1,
      'name': 'Luxury',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'used'
    },
    {
      'image': AppImages.car2,
      'name': 'Baltimore',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'New'
    },

  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: productList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 16,
          mainAxisSpacing: 8,
          mainAxisExtent: 240),
      itemBuilder: (BuildContext context, int index) {
        return CustomCard(

            status: productList[index]['status'] ?? '',
            rating: productList[index]['rating'] ?? '',
            amount: productList[index]['amount'] ?? '',
            productName: productList[index]['name'] ?? '',
            onTapFavour: () {
              /*controller.isFavour.value = ! controller.isFavour.value;
                      controller.update();*/
            },
            productImage: productList[index]['image'] ?? '',
            onTapCard: () {
              Get.toNamed(AppRoute.carDetailsScreen);
            });
      },
    );
  }
}
