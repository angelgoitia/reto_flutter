import 'package:reto_flutter/views/controller/homeController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      init: HomeController(),
      builder: (_home) => Scaffold(
        body: Center(
          child: CircularProgressIndicator()
        )
      ),
    );
  }
}
