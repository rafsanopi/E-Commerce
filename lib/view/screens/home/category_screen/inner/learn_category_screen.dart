import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/view/widgets/custom_card/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class LearnCategoryScreen extends StatelessWidget {
  LearnCategoryScreen({super.key});
  List<Map<String, String>> productList = [
    {
      'image': 'https://images.unsplash.com/photo-1569585723035-0e9e6ff87cbf?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8bGVhcm58ZW58MHx8MHx8fDA%3D',
      'name': 'Story',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'used'
    },
    {
      'image': 'https://images.unsplash.com/photo-1600195077909-46e573870d99?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8bGVhcm58ZW58MHx8MHx8fDA%3D',
      'name': 'Book',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'New'
    },
    {
      'image': 'https://images.unsplash.com/photo-1611348586755-53860f7ae57a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bGVhcm58ZW58MHx8MHx8fDA%3D',
      'name': 'Learn',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'new'
    },
    {
      'image': 'https://plus.unsplash.com/premium_photo-1677567996070-68fa4181775a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bGVhcm58ZW58MHx8MHx8fDA%3D',
      'name': 'Library',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'used'
    },
    {
      'image': 'https://images.unsplash.com/photo-1569585723035-0e9e6ff87cbf?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8bGVhcm58ZW58MHx8MHx8fDA%3D',
      'name': 'Story',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'used'
    },
    {
      'image': 'https://images.unsplash.com/photo-1600195077909-46e573870d99?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8N3x8bGVhcm58ZW58MHx8MHx8fDA%3D',
      'name': 'Book',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'New'
    },
    {
      'image': 'https://images.unsplash.com/photo-1611348586755-53860f7ae57a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8bGVhcm58ZW58MHx8MHx8fDA%3D',
      'name': 'Learn',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'new'
    },
    {
      'image': 'https://plus.unsplash.com/premium_photo-1677567996070-68fa4181775a?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OXx8bGVhcm58ZW58MHx8MHx8fDA%3D',
      'name': 'Library',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'used'
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
