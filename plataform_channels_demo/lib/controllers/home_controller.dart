import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:plataform_channels_demo/native/geolocation.dart';

class HomeController extends GetxController {
  bool _traking = false;
  bool get traking => _traking;

  Future<void> startTracking() async {
    await Geolocation.instance.start();
    _traking = true;
    update(['tracking']);
  }

  Future<void> stopTracking() async {
    await Geolocation.instance.stop();
    _traking = false;
    update(['tracking']);
  }
}
