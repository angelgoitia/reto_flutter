import 'package:reto_flutter/views/mainPage.dart';
import 'package:get/get.dart';

class UserController extends GetxController {
   
  String _name;
  String get name => _name;

  void saveName(value){
    this._name =  value;
    Get.to(MainPage(), transition: Transition.zoom);
  }
}