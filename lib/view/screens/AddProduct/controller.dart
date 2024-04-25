
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class AddProductController extends GetxController{

  ///<=======================This is for Upload Image=======================>
  PageController imageOcntroller = PageController();
  int imageIndex = 0;
  int selectedCategory = 0;
  bool isCategory = false;
  final picker = ImagePicker();
  List<File> selectedImagesMulti = [];
  void pickMultiImage() async {
    selectedImagesMulti.clear();
    update();

    final pickedFile = await picker.pickMultiImage(
      imageQuality: 80, // To set quality of images
    );

    List<XFile> xfilePick = pickedFile;

    if (xfilePick.length >6) {

      //toastMessage(message:"PickOnly 3 image");
      return;
    } else if (xfilePick.isNotEmpty) {
      for (var i = 0; i < xfilePick.length; i++) {
        if (selectedImagesMulti.length < 6) {
          selectedImagesMulti.add(File(xfilePick[i].path));
        } else {
          Get.snackbar('', "you can only 6 images pick for  every product");
          break;
        }
      }
      update();
    } else {
      selectedImagesMulti.clear();
      //toastMessage(message:"no image selected");
      update();
    }
  }

  ///<====================================TextEditing Controller for AddCar====================================>
  TextEditingController productName=TextEditingController();
  TextEditingController categoryListController=TextEditingController(text: 'Select Category');
  TextEditingController productsDescription=TextEditingController();
  TextEditingController productPriceCurrency=TextEditingController();
  TextEditingController productPrice=TextEditingController();
  TextEditingController productColor=TextEditingController();
  TextEditingController productSize=TextEditingController();
  TextEditingController productQuantity=TextEditingController();
  TextEditingController productWeight=TextEditingController();
  TextEditingController productSpeed=TextEditingController();
  TextEditingController productTransmission=TextEditingController();
  TextEditingController productHP=TextEditingController();
  TextEditingController productTorque=TextEditingController();
  TextEditingController productBluetooth=TextEditingController();
  TextEditingController productClimate=TextEditingController();
  TextEditingController productNewUsed=TextEditingController();
  TextEditingController locationController=TextEditingController();
  TextEditingController dateController=TextEditingController();

  bool expend=false;
  bool climetExpend=false;

  bool fuelExpend=false;
  bool fashionProductType=false;
  bool conditionExpend=false;
  bool CarFuel=false;

  TextEditingController fuelController=TextEditingController();
  TextEditingController conditionController=TextEditingController();

}