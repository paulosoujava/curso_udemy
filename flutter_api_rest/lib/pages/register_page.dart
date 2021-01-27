import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_api_rest/utils/responsive.dart';
import 'package:flutter_api_rest/widgets/avatar.dart';
import 'package:flutter_api_rest/widgets/circle.dart';
import 'package:flutter_api_rest/widgets/register_form.dart';

class RegisterPage extends StatelessWidget {
  static const routesName = 'register';
  RegisterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final Size size = MediaQuery.of(context).size;
    final double pickSize = responsive.wp(70);
    final double orangeSize = responsive.wp(57);

    return Container(
      child: Scaffold(
        body: GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: SingleChildScrollView(
            child: Container(
              width: responsive.width,
              height: responsive.height,
              color: Colors.white,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    top: -pickSize * 0.3,
                    right: -pickSize * 0.2,
                    child: Circle(
                      size: size.width * 0.8,
                      colors: [
                        Colors.pink,
                        Colors.pinkAccent,
                      ],
                    ),
                  ),
                  Positioned(
                    top: -orangeSize * 0.25,
                    left: -orangeSize * 0.15,
                    child: Circle(
                      size: size.width * 0.57,
                      colors: [Colors.orange, Colors.deepOrangeAccent],
                    ),
                  ),
                  Positioned(
                    top: pickSize * 0.2,
                    child: Column(
                      children: [
                        SizedBox(
                          height: responsive.dp(2),
                        ),
                        Text(
                          "Olá.\n Registre-se para iniciar!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: responsive.dp(1.6),
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: responsive.dp(3)),
                        Avatar(
                          imageSize: responsive.wp(20),
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    left: 10,
                    top: 15,
                    child: SafeArea(
                      child: CupertinoButton(
                        color: Colors.black26,
                        padding: EdgeInsets.all(16),
                        borderRadius: BorderRadius.circular(30),
                        child: Icon(Icons.arrow_back),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                  RegisterForm()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
