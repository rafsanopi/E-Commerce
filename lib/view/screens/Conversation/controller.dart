
import 'package:bazar24_7/utils/app_colors.dart';
import 'package:bazar24_7/utils/app_images.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChatController extends GetxController{

  ScrollController scrollController = ScrollController();
  TextEditingController  inputController=TextEditingController();


  List<Map<String, dynamic>> inboxChat = [
    {"sender": "0", "message": "Hii, hello", "messageType": "text"},
    {
      "sender": "0",
      "message":
      "We will meet soon  sorry  babe. i promise upcoming sun we will meet for sure. See you again. bye bye",
      "messageType": "text"
    },
    {"sender": "1", "message": "okk", "messageType": "text"},
    {"sender": "0", "message": "Iam Fine, hello", "messageType": "text"},
    {"sender": "1", "message": "hii", "messageType": "text"},
    {"sender": "1", "message": "Bye", "messageType": "text"},
  ];


  final List<Map<String, dynamic>> chatList = [
    {
      "img":AppImages.house1,
      "title": "Maria *Artist",
      "subTitle": "Hello...how are you",
      "follower": "5.2K Favorite",
      "timeOrPrice": "2 min ago",
      "color":AppColors.greenDarkHover
    },
    {
      "img": AppImages.house2,
      "title": "Rocky *user",
      "subTitle": "Hello...how are you",
      "follower": "6.2K Favorite",
      "timeOrPrice": "2 min ago",
      "color": AppColors.greenNormal
    },
    {
      "img": AppImages.house3,
      "title": "Rocky *user",
      "subTitle": "Hello...how are you",
      "follower": "6.2K Favorite",
      "timeOrPrice": "2 min ago",
      "color": AppColors.blueNormal
    },
  ];

  onMaessageSend(){
        inboxChat.add({inputController.text} as Map<String, dynamic>);
        update();
  }

}