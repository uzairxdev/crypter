import 'package:get/get.dart';
import 'package:local_auth/local_auth.dart';

import '../../../Feature/Authentication Screen/Authentication_Screen.dart';
import '../../../Feature/Landing Screen/FirstLanding_Screen.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();
  RxBool authenticated = false.obs;
  var localAuth = LocalAuthentication();

  @override
  void onReady() {
    super.onReady();
    authenticated.listen((isAuthenticated) {
      if (isAuthenticated) {
        Get.offAll(() => const FirstLandingScreen());
      } else {
        Get.offAll(() => const AuthenticationScreen());
      }
    });
  }

  authenticate() async {
    try {
      authenticated.value = await localAuth.authenticate(
          localizedReason: 'Please authenticate to show account balance',
          options: const AuthenticationOptions(
            useErrorDialogs: true,
            stickyAuth: true,
          ));
      // update();
    } catch (e) {
      Get.snackbar("Error", e.toString());
    }
  }
}
