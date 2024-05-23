import 'package:crypter/Feature/Landing%20Screen/FirstLanding_Screen.dart';
import 'package:crypter/Feature/Login%20Screen/Login_Screen.dart';
import 'package:crypter/Feature/Splash%20Screen/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'Core/Controllers/Authentication Controller/auth_controller.dart';
import 'Feature/Sign Up Screen/signup_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Get.put(AuthController());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (
        context,
        child,
      ) {
        return GetMaterialApp(
          title: 'Crypter',
          debugShowCheckedModeBanner: false,
          darkTheme: ThemeData.dark(),
          themeMode: ThemeMode.light,
          home: child,
        );
      },
      child: const SignUpScreen(),
    );
  }
}
