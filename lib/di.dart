import 'package:get/get.dart';
import 'package:thichtruyentranh/locator.dart';

class DependencyInjection {
  static void init() {
    configureDependencies();
    //Get.lazyPut<HomeController>(() => HomeController());
    // Get.put<NetworkController>(
    //   NetworkController(),
    //   permanent: true,
    // );
  }
}
