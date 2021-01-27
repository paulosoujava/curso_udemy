import 'package:flutter/material.dart';
import 'package:flutter_api_rest/utils/responsive.dart';
import 'package:flutter_api_rest/widgets/circle.dart';

class ErrorPage extends StatelessWidget {
  static const routesName = 'errorPage';
  final dynamic data;
  final String message;
  final int statusCode;

  const ErrorPage({this.data, this.message, this.statusCode});

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    final Size size = MediaQuery.of(context).size;
    final double pickSize = responsive.wp(80);
    final double orangeSize = responsive.wp(57);
    final ErrorPage args = ModalRoute.of(context).settings.arguments;
    print(args.data);
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
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(35.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              args.statusCode.toString(),
                              style: TextStyle(fontSize: responsive.dp(5), color: Colors.red),
                            ),
                            Text(
                              args.message,
                              style: TextStyle(fontSize: responsive.dp(5), color: Colors.red),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: responsive.wp(8),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 39.0),
                            child: Container(
                              height: responsive.dp(9),
                              width: responsive.dp(25),
                              child: Text(
                                args.data['message'].toString().toUpperCase(),
                                textAlign: TextAlign.start,
                                style: TextStyle(
                                  color: Colors.red,
                                  fontWeight: FontWeight.bold,
                                  fontSize: responsive.dp(2),
                                ),
                              ),
                            ),
                          ),
                          Image.asset(
                            'assets/eca.png',
                            fit: BoxFit.fill,
                            width: responsive.dp(5) * 3,
                            height: responsive.dp(5) * 3,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: responsive.wp(8),
                      ),
                      FlatButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          "Voltar",
                          style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: responsive.dp(3),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: responsive.dp(3),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
