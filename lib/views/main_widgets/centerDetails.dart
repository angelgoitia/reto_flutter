import 'package:flutter/material.dart';

class CenterDetails extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top:30, bottom: 10),
          child: Text(
            "Hello!",
            style: TextStyle(
              fontSize: 28,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal
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