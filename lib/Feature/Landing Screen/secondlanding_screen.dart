import 'package:crypter/Feature/Landing%20Screen/ThirdLanding_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Core/Common SizedBoxes/custom_sizedbox.dart';
import 'costum_widgets.dart';

class SecondLandingScreen extends StatelessWidget {
  const SecondLandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children: [
            Center(
              child: Container(
                height: 310.h,
                width: double.infinity,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/images/Wallet.png'),
                  scale: 1,
                )),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  CostumText(
                    text: "Receive and Send Money to Friends.",
                  ),
                  fixheight,
                  fixheight2,
                  smallCostumText(
                    text:
                        "There are 10+ best sequrity service and smart way to eaming money from trading for you.",
                  ),
                  fixheight,
                  fixheight2,
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
                        width: 15.w,
                        color: Colors.blue,
                      ),
                      fixwidth3,
                      CostumContainer(
                        width: 5.w,
                        color: Colors.blue.withOpacity(0.7),
                      ),
                    ],
                  ),
                  fixheight,
                  costum_button(
                      text: "Next Step",
                      btnColor: Colors.blue,
                      textColor: Colors.white,
                      onpressed: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return const ThirdLandingScreen();
                        }));
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
