import 'package:bazar24_7/core/app_route/app_route.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:bazar24_7/view/widgets/custom_card/custom_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PropertiesCategoryScreen extends StatelessWidget {
  PropertiesCategoryScreen({super.key});
  List<Map<String, String>> productList = [
    {
      'image': 'https://media.istockphoto.com/id/1448381278/photo/the-side-view-of-a-large-gray-craftsman-new-construction-house-with-a-landscaped-yard-a-three.webp?b=1&s=170667a&w=0&k=20&c=pHHNxKMgY-i5VMo9nd4viatxxhGVbD8X6ZUwRqQlwVw=',
      'name': 'Modern House',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'new'
    },
    {
      'image': 'https://media.istockphoto.com/id/1455374627/photo/single-story-suburban-home-exterior-with-large-driveway.webp?b=1&s=170667a&w=0&k=20&c=tComMql95oxAvFe_f-qwN7c1zjadva-3113qBbvZVV8=',
      'name': 'Back Yard',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'used'
    },
    {
      'image': 'https://media.istockphoto.com/id/1436217023/photo/exterior-of-a-blue-suburban-home.webp?b=1&s=170667a&w=0&k=20&c=oEpszLJm7Hk3Q7qshJvde1P6tfaW5EJsmsYzOuuHGR8=',
      'name': 'Cabin',
      'rating': '4.5',
      'amount': '\$${6787}',
      'status': 'used'
    },
    {
      'image': 'https://media.istockphoto.com/id/1778738751/photo/summer-is-over-in-the-garden.webp?b=1&s=170667a&w=0&k=20&c=wUUWhgbs-sDdQ6yGrkH3dmJVUbuJ6WNcEkfzMCWOSr8=',
      'name': 'Wood house',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'used'
    },
    {
      'image': 'https://media.istockphoto.com/id/1406077905/photo/new-house-building-at-the-construction-site.webp?b=1&s=170667a&w=0&k=20&c=pgywneBUDB17bwPLEaiSk59DRAijAR1fMUtgZ3e6fAY=',
      'name': 'Cottage',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'New'
    },
    {
      'image': 'https://media.istockphoto.com/id/1448381278/photo/the-side-view-of-a-large-gray-craftsman-new-construction-house-with-a-landscaped-yard-a-three.webp?b=1&s=170667a&w=0&k=20&c=pHHNxKMgY-i5VMo9nd4viatxxhGVbD8X6ZUwRqQlwVw=',
      'name': 'Modern House',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'new'
    },
    {
      'image': 'https://media.istockphoto.com/id/1455374627/photo/single-story-suburban-home-exterior-with-large-driveway.webp?b=1&s=170667a&w=0&k=20&c=tComMql95oxAvFe_f-qwN7c1zjadva-3113qBbvZVV8=',
      'name': 'Back Yard',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'used'
    },
    {
      'image': 'https://media.istockphoto.com/id/1436217023/photo/exterior-of-a-blue-suburban-home.webp?b=1&s=170667a&w=0&k=20&c=oEpszLJm7Hk3Q7qshJvde1P6tfaW5EJsmsYzOuuHGR8=',
      'name': 'Cabin',
      'rating': '4.5',
      'amount': '\$${6787}',
      'status': 'used'
    },
    {
      'image': 'https://media.istockphoto.com/id/1778738751/photo/summer-is-over-in-the-garden.webp?b=1&s=170667a&w=0&k=20&c=wUUWhgbs-sDdQ6yGrkH3dmJVUbuJ6WNcEkfzMCWOSr8=',
      'name': 'Wood house',
      'rating': '4.5',
      'amount': '\$${5447}',
      'status': 'used'
    },
    {
      'image': 'https://media.istockphoto.com/id/1406077905/photo/new-house-building-at-the-construction-site.webp?b=1&s=170667a&w=0&k=20&c=pgywneBUDB17bwPLEaiSk59DRAijAR1fMUtgZ3e6fAY=',
      'name': 'Cottage',
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
