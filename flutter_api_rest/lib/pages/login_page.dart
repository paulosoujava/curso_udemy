import 'package:flutter/material.dart';
import 'package:flutter_api_rest/utils/responsive.dart';
import 'package:flutter_api_rest/widgets/circle.dart';
import 'package:flutter_api_rest/widgets/login_form.dart';
import 'package:flutter_api_rest/widgets/icon_container.dart';

class LoginPage extends StatelessWidget {
  static const routesName = 'loginPage';
  final String expired;

  LoginPage({Key key, this.expired}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final LoginPage args = ModalRoute.of(context).settings.arguments;
    final Responsive responsive = Responsive.of(context);
    final Size size = MediaQuery.of(context).size;
    final double pickSize = responsive.wp(80);
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
                    top: -pickSize * 0.4,
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
                    top: -orangeSize * 0.55,
                    left: -orangeSize * 0.15,
                    child: Circle(
                      size: size.width * 0.57,
                      colors: [Colors.orange, Colors.deepOrangeAccent],
                    ),
                  ),
                  Positioned(
                    top: pickSize * 0.35,
                    child: Column(
                      children: [
                        IconContainer(
                          size: responsive.wp(20),
                        ),
                        SizedBox(
                          height: responsive.dp(2),
                        ),
                        Text(
                          args.expired ?? "Olá.\n Bem Vindo!",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: responsive.dp(1.6),
                            color: args?.expired != null ? Colors.pinkAccent : Colors.black,
                          ),
                        ),
                      ],
                    ),
                  ),
                  LoginForm()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
