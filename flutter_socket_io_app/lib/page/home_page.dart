import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:flutter_socket_io_app/utils/consts.dart';
import 'package:flutter_socket_io_app/utils/socket_client.dart';

import 'home_page_widgest/chat.dart';
import 'home_page_widgest/nickname_form.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    SocketClient.instance.init();
    SocketClient.instance.connect();
  }

  @override
  void dispose() {
    SocketClient.instance.disconnect();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff102027),
      appBar: AppBar(
        backgroundColor: accentColor,
        title: Obx(() {
          final users = SocketClient.instance.numUsers;
          return Text("users (${users.value})");
        }),
      ),
      body: Obx(() {
        final status = SocketClient.instance.status;
        if (status.value == SocketStatus.connecting) {
          return Center(
            child: CircularProgressIndicator(),
          );
        } else if (status.value == SocketStatus.connected) {
          return NicknameForm();
        } else if (status.value == SocketStatus.joined) {
          return Chat();
        } else {
          return Center(
            child: Text("Disconnected"),
          );
        }
      }),
    );
  }
}
