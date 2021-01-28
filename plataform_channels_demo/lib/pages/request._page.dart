import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/simple/get_state.dart';
import 'package:plataform_channels_demo/controllers/request_controller.dart';

class RequestPage extends StatelessWidget {
  const RequestPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RequestController>(
      init: RequestController(),
      builder: (_) => Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10),
              CupertinoButton(
                child: Text(
                  "ALLOW",
                  style: TextStyle(
                    letterSpacing: 1,
                  ),
                ),
                color: Colors.redAccent,
                borderRadius: BorderRadius.circular(30),
                onPressed: _.request,
              )
            ],
          ),
        ),
      ),
    );
  }
}
