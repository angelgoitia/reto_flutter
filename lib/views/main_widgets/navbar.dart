import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Image(
            image: AssetImage('assets/sale.png'),
            height: 50,
            width: 50,
          ),
          SizedBox(width:10),
          Text(
            'Sale Top',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      )
    );
  }
}