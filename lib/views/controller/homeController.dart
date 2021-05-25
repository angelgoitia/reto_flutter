import 'package:reto_flutter/views/mainPage.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
   
   @override
   void onReady() {
    super.onReady();
    Future.delayed(Duration(seconds:2), (){
      Get.to(MainPage(), transition: Transition.zoom);
    });
  }
}