import 'package:reto_flutter/views/main_widgets/buttonAccess.dart';
import 'package:reto_flutter/views/main_widgets/centerDetails.dart';
import 'package:reto_flutter/views/main_widgets/navbar.dart';
import 'package:reto_flutter/views/main_widgets/sliderImage.dart';
import 'package:reto_flutter/views/main_widgets/socialMedia.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Navbar(),
            SliderImage(),
            CenterDetails(),
            SizedBox(height:20),
            ButtonAccess(),
            SocialMedia(),
          ],
        )
      ),
    );
  }
}