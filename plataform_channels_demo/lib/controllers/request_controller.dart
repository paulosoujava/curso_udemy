import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:plataform_channels_demo/native/geolocation.dart';

class RequestController extends GetxController {
  Future<void> request() async {
    final PermissionStatus status = await Geolocation.instance.requestPermission();
    if (status == PermissionStatus.granted) {
      Get.offNamed('home');
    }
  }
}
