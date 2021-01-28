import 'package:get/instance_manager.dart';
import 'package:get/state_manager.dart';
import 'package:get/route_manager.dart';
import 'package:plataform_channels_demo/native/geolocation.dart';

class SplachControler extends GetxController {
  @override
  void onReady() {
    super.onReady();
    _init();
  }

  Future<void> _init() async {
    await Future.delayed(Duration(seconds: 2));
    final PermissionStatus permissionStatus = await Geolocation.instance.checkPermission();
    if (permissionStatus == PermissionStatus.granted) {
      Get.offNamed('home');
    } else {
      Get.offNamed('request');
    }
  }
}
