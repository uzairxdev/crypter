import 'package:crypter/Feature/Sign%20Up%20Screen/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../Core/Common SizedBoxes/custom_sizedbox.dart';
import 'costum_widgets.dart';

class ThirdLandingScreen extends StatelessWidget {
  const ThirdLandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Center(
              child: Container(
                height: 340.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/Box.png'),
                  scale: 1,
                )),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  CostumText(
                    text: "Your Safety is our Top Priority.",
                  ),
                  fixheight,
                  fixheight,
                  smallCostumText(
                    text:
                        "Get rid of your debt monthly debt payments are the biggest obstacle",
                  ),
                  fixheight,
                  fixheight,
                  fixheight1,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CostumContainer(
                        width: 5.w,
                        color: Colors.blue.withOpacity(0.7),
                      ),
                      fixwidth3,
                      CostumContainer(
                        width: 5.w,
                        color: Colors.blue.withOpacity(0.7),
                      ),
                      fixwidth3,
                      CostumContainer(
                        width: 15.w,
                        color: Colors.blue,
                      ),
                    ],
                  ),
                  fixheight,
                  costum_button(
                      icon: Icons.email_sharp,
                      text: "Continue with Email",
                      btnColor: Colors.blue,
                      textColor: Colors.white,
                      onpressed: () {
                        Get.to(SignUpScreen());
                      })
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
