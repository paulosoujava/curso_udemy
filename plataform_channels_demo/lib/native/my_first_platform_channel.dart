import 'package:flutter/services.dart';

class MyFirstPlataformChannel {
  final MethodChannel _methodChannel = MethodChannel("br.com.paulojorge.plataform_channels_demo");

  Future<void> version() async {
    try {
      final version = await _methodChannel.invokeMethod('porraaaaa');
      print(version);
    } on Exception catch (e) {
      print(e);
    }
  }
}
