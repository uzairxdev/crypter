import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Core/Controllers/Authentication Controller/auth_controller.dart';
import '../Landing Screen/costum_widgets.dart';

class AuthenticationScreen extends StatefulWidget {
  const AuthenticationScreen({super.key});

  @override
  State<AuthenticationScreen> createState() => _AuthenticationScreenState();
}

class _AuthenticationScreenState extends State<AuthenticationScreen> {
  AuthController authController = AuthController.instance;
  @override
  void initState() {
    // TODO: implement initState
    authController.authenticate();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 20.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Sign in",
                style: TextStyle(
                  fontSize: 48.sm,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 50.h),
              child: Column(
                children: [
                  Image.asset(
                    "assets/images/Finger.png",
                    width: 150.w,
                  ),
                  Text(
                    "Fingerprint Auth",
                    style: TextStyle(
                      fontSize: 22.sm,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Container(
                    width: 150.w,
                    child: const Text(
                      "Authenticate using your fingerprint instead of your password ",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        height: 1.5,
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20.h),
                    width: 280.w,
                    child: costum_button(
                      text: "Authenticate",
                      btnColor: Colors.blue,
                      textColor: Colors.white,
                      onpressed: () => authController.authenticate(),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
