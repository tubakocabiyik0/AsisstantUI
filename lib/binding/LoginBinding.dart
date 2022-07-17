import 'package:assistant_app/controllers/LoginController.dart';
import 'package:get/get.dart';

import 'package:get/get_instance/src/bindings_interface.dart';

class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginController>(
          () => LoginController(),
    );
  }
}