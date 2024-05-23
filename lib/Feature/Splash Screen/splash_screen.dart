import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Authentication Screen/Authentication_Screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  void initState() {
    Timer(
        const Duration(seconds: 6),
        () => Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return const AuthenticationScreen();
            })));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Center(
        child: Container(
          height: 100.h,
          width: 100.w,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/Logo.png'),
            ),
          ),
        ),
      ),
    );
  }
}
