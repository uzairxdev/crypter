import 'package:crypter/Core/Common%20SizedBoxes/custom_sizedbox.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isDark = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Get.bottomSheet(Container(
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 63, 61, 61),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 20.h, horizontal: 30.w),
                    child: Column(
                      children: [
                        ListTile(
                          leading: const Icon(
                            Icons.light_mode,
                            size: 30,
                            color: Colors.white,
                          ),
                          title: const Text(
                            "Light Theme ",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        fixheight2,
                        const Divider(
                          height: 10,
                          color: Colors.grey,
                          thickness: 2,
                        ),
                        fixheight2,
                        ListTile(
                          selected: true,
                          leading: const Icon(
                            Icons.dark_mode,
                            size: 30,
                            color: Colors.white,
                          ),
                          title: const Text(
                            "Dark Theme ",
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  ),
                ));
              },
              icon: const Icon(
                Icons.lightbulb_outline,
              ))
        ],
      ),
      body: const Center(
        child: Text(
          "Home Screen",
          style: TextStyle(fontSize: 50),
        ),
      ),
    );
  }
}
