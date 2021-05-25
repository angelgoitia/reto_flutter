import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

class SocialMedia extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.only(bottom:20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: EdgeInsets.only(bottom: 15),
              child: Text(
                'Or via social media',
                style: TextStyle(
                  color: Colors.black,
                  fontStyle: FontStyle.italic
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () => print("Facebook"),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: SvgPicture.asset(
                      "assets/icon/facebook.svg",
                      width: 50,
                    )
                  ),
                ),
                GestureDetector(
                  onTap: () => print("Google"),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: SvgPicture.asset(
                      "assets/icon/google.svg",
                      width: 50,
                    )
                  ),
                ),
                GestureDetector(
                  onTap: () => print("Linkedin"),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: SvgPicture.asset(
                      "assets/icon/linkedin.svg",
                      width: 50,
                    )
                  ),
                ),
              ],
            )
          ],
        )
      )
    );
  }
}