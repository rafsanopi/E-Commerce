
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthController extends GetxController{


      ///<=========================== Sign in controller========================>
      TextEditingController signInEmail= TextEditingController();
      TextEditingController passWordSignIn= TextEditingController();

      ///<================== sign up controller =======================>
      TextEditingController fullNameSignUp= TextEditingController();
      TextEditingController emailSignUp= TextEditingController();
      TextEditingController phoneSignUp= TextEditingController();
      TextEditingController addressSignUp= TextEditingController();
      TextEditingController passSignUp= TextEditingController();
      TextEditingController confirmPassSignup = TextEditingController();

      ///<========================= forgot controller =========================>
      TextEditingController emailController=TextEditingController();
      TextEditingController otpController=TextEditingController();
      TextEditingController newPassController=TextEditingController();
      TextEditingController confirmPassController=TextEditingController();


      ///<==================== change password controller =======================>
      TextEditingController changeCurrentPassController= TextEditingController();
      TextEditingController changePassController= TextEditingController();
      TextEditingController changeConfirmPassController= TextEditingController();

  ///<============================For Sign In ==================================>
      bool isRemember=true;









}