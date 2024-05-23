import 'package:crypter/Core/Common%20SizedBoxes/custom_sizedbox.dart';
import 'package:crypter/Feature/Home%20Screen/home_screen.dart';
import 'package:crypter/Feature/Landing%20Screen/costum_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      resizeToAvoidBottomInset: false,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.symmetric(vertical: 40.h),
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/logo2.png",
                height: 150.h,
              ),
            ),
            const Text(
              "What's your email address!",
              style: TextStyle(
                fontSize: 34,
                fontWeight: FontWeight.bold,
              ),
            ),
            fixheight,
            const Text("Email"),
            TextFormField(
              decoration: InputDecoration(
                  suffixIcon: IconButton(
                icon: const Icon(
                  Icons.cancel,
                  color: Colors.grey,
                ),
                onPressed: () {},
              )),
            ),
            fixheight,
            fixheight,
            costum_button(
              text: "Continue With Email",
              btnColor: Colors.blue,
              textColor: Colors.white,
              onpressed: () {
                Get.to(const HomeScreen());
              },
              icon: Icons.email,
            ),
            fixheight,
            fixheight,
            Row(
              children: [
                const Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
                fixwidth1,
                const Text("Or Continue with"),
                fixwidth1,
                const Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,
                  ),
                ),
              ],
            ),
            fixheight,
            Row(
              children: [
                CostumLoginBtn(
                  image: "assets/images/google.png",
                ),
                fixwidth,
                CostumLoginBtn(
                  image: "assets/images/apple.png",
                )
              ],
            ),
            // fixheight3,

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Don't have an account? "),
                TextButton(onPressed: (){}, child:
                const Text("Sign In",
                  style: TextStyle(color: Colors.lightBlue,
                  ),),)
              ],
            ),
          ],
        ),
      ),
    ));
  }
}

class CostumLoginBtn extends StatelessWidget {
  CostumLoginBtn({
    required this.image,
    super.key,
  });

  String image;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45.h,
      width: 150.w,
      decoration: BoxDecoration(
          // color: Colors.white,
          border: Border.all(
            color: Colors.grey.shade500,
            width: 1.w,
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(20.r),
          image: DecorationImage(
              image: AssetImage(
                image,
              ),
              alignment: Alignment.center,
              scale: 3)),
    );
  }
}
