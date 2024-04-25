import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';

class ProfileController extends GetxController{

  TextEditingController firstNameController=TextEditingController();
  TextEditingController lastNameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController phnNumberController=TextEditingController();
  TextEditingController locationController=TextEditingController();
  ///<================== gallery image ===============>
  File? proImage;
  String? proImgURL = "";
  void openGallery() async {
    final pickedFile = await ImagePicker().pickImage(
      source: ImageSource.gallery,
    );

    if (pickedFile != null) {
      proImage = File(pickedFile.path);
      update();
    }
  }
}