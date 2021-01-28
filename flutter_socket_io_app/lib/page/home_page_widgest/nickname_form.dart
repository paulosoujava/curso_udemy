import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_socket_io_app/utils/consts.dart';
import 'package:flutter_socket_io_app/utils/socket_client.dart';
import 'package:google_fonts/google_fonts.dart';

class NicknameForm extends StatefulWidget {
  const NicknameForm({Key key}) : super(key: key);

  @override
  _NicknameFormState createState() => _NicknameFormState();
}

class _NicknameFormState extends State<NicknameForm> {
  String _nickname = '';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.transparent,
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Seu nome é?",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
            ),
            SizedBox(height: 20),
            CupertinoTextField(
              placeholder: "seu nome",
              onChanged: (text) {
                this._nickname = text;
              },
              decoration: BoxDecoration(
                color: Color(0xff455a64),
                borderRadius: BorderRadius.circular(5),
              ),
              style: GoogleFonts.quicksand(fontWeight: FontWeight.w300, color: Colors.white, fontSize: 40),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 30),
            CupertinoButton(
              color: accentColor,
              borderRadius: BorderRadius.circular(30),
              onPressed: () {
                if (this._nickname.trim().length > 0) {
                  SocketClient.instance.joinToChat(this._nickname);
                }
              },
              child: Text(
                "Join to chat",
                style: GoogleFonts.quicksand(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
