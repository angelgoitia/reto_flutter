import 'package:flutter/material.dart';

class ButtonAccess extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 150,
          height: 45,
          child: RaisedButton(
            color: Colors.blue,
            shape: RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
            onPressed: () => print("Login"),
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