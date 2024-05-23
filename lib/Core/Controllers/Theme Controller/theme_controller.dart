import 'dart:ui';

import 'package:get/get.dart';

class ThemeController extends GetxController {
  var isDark = false.obs;
  var systemTheme = Brightness.light.obs;
}
