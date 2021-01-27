import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

abstract class ProgressDialog {
  static show(BuildContext context) {
    showCupertinoModalPopup(
      context: context,
      builder: (_) {
        return Scaffold(
          body: WillPopScope(
            onWillPop: () async => false,
            child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.black54.withOpacity(0.8),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SpinKitWave(
                    color: Colors.white,
                    size: 50.0,
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Container(
                    child: Center(
                        child: Text(
                      "Por favor aguarde",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                      ),
                    )),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  static dismiss(BuildContext context) {
    Navigator.pop(context);
  }
}
