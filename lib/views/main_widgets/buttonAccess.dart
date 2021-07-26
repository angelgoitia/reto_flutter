import 'package:reto_flutter/views/loginPage.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ButtonAccess extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 150,
          height: 45,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              backgroundColor: Colors.blue,
              shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
            ),
            onPressed: () => Get.to(LoginPage(), transition: Transition.zoom),
            child: Text(
              "Login",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
              ),
            ),
          )
        ),
        SizedBox(width: 10),
        Container(
          width: 150,
          height: 45,
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: new BorderRadius.circular(30.0),
              ),
              side: BorderSide(
                width: 2.0,
                color: Colors.black,
                style: BorderStyle.solid,
              ),
            ),
            onPressed: () => print("Sign Up"),
            child: Text(
              "Sign Up",
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
              ),
            ),
          )
        ),
      ],
    );
  }
}