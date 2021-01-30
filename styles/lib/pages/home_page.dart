import 'package:flutter/material.dart';
import 'package:styles/behaviors/butom_behavior.dart';
import 'package:styles/core/behaviour.dart';
import 'package:styles/pages/wdgets/flat_button_expanded_widget.dart';
import 'package:styles/pages/wdgets/input_text_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: size.width,
            height: size.height,
            color: Colors.amber,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 2.0, top: 2.0, left: 2.0),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                width: size.width,
                height: size.height * 0.96,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(40),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(top: 40, left: 32, right: 32),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ButtomBehavior(
                            behaviour: Behaviour.regular,
                            onPress: () {
                              print("OIIiiii");
                            }),
                        ButtomBehavior(behaviour: Behaviour.regular),
                        ButtomBehavior(behaviour: Behaviour.disabled),
                        ButtomBehavior(behaviour: Behaviour.loading),
                        // Text(
                        //   "Bem vindo!",
                        //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                        // ),
                        // SizedBox(
                        //   height: 16,
                        // ),
                        // Text("Style Components"),
                        // SizedBox(
                        //   height: 40,
                        // ),
                        // InputTextWidget(
                        //   label: "EMAIL",
                        // ),
                        // SizedBox(
                        //   height: 16,
                        // ),
                        // InputTextWidget(label: "PASSWORD"),
                        // SizedBox(
                        //   height: 16,
                        // ),
                        // FlatButtonExpandedWidget(
                        //   label: "ENTRAR",
                        //   onTap: () {},
                        // ),
                        // SizedBox(
                        //   height: 16,
                        // ),
                        // FlatButtonExpandedWidget(
                        //   type: FlatButtonExpandedType.none,
                        //   label: "Esqueci minha senha",
                        //   onTap: () {},
                        // ),
                        // SizedBox(
                        //   height: 16,
                        // ),
                        // FlatButtonExpandedWidget(
                        //   type: FlatButtonExpandedType.outline,
                        //   label: "CRIAR UMA CONTA",
                        //   onTap: () {},
                        // )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
