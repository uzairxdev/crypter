import 'package:crypter/Feature/Landing%20Screen/SecondLanding_Screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Core/Common SizedBoxes/custom_sizedbox.dart';
import 'costum_widgets.dart';

class FirstLandingScreen extends StatelessWidget {
  const FirstLandingScreen({super.key});

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
                  image: AssetImage('assets/images/card.png'),
                  scale: 1,
                )),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 20.w, right: 20.w, bottom: 20.h),
              child: Column(
                children: [
                  CostumText(
                    text: "The most trusted  crypto wallet?",
                  ),
                  fixheight,
                  fixheight,
                  smallCostumText(
                    text:
                        "We help our users to make the right financial decisions",
                  ),
                  fixheight,
                  fixheight1,
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CostumContainer(
                        width: 15.w,
                        color: Colors.blue,
                      ),
                      fixwidth3,
                      CostumContainer(
                        width: 5.w,
                        color: Colors.blue.withOpacity(0.7),
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
                          return const SecondLandingScreen();
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
