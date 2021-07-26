import 'package:reto_flutter/views/controller/userController.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CenterDetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top:30, bottom: 10),
          child: GetBuilder<UserController>(
            init: UserController(),
            builder: (_) => Text(
              _.name != null? "Hello ${_.name}!" : "Hello new user!",
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.normal
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top:10, bottom: 5),
          child: Text(
            'Welcome to Sales TOP A Platform To',
            style: TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.italic
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Text(
            'Manage Real Estate Needs.',
            style: TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.italic
            ),
          ),
        ),
      ],
    );
  }
}