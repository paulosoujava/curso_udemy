import 'package:flutter/material.dart';
import 'package:styles/ui/design/behaviors/buttom/flat_button_behavior.dart';
import 'package:styles/ui/design/lines/line.dart';
import 'package:styles/ui/design/spaces/space.dart';

import '../ui/ui.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = mediaQuery(context);
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
                        TextDisplay(
                          label: 'Bem vindo',
                          display: Display.title,
                        ),
                        space(),
                        line(thickness: 3, color: AMBER),
                        space(),
                        InputBehavior(
                          behaviour: Behaviour.regular,
                          label: "Email",
                        ),
                        space(height: H_16),
                        InputBehavior(
                          behaviour: Behaviour.regular,
                          label: "Senha",
                        ),
                        space(height: H_30),
                        FlatButtonBehavior(
                          label: 'ENTRAR',
                          behaviour: Behaviour.regular,
                          onTap: () {},
                        ),
                        space(),
                        FlatButtonBehavior(
                          label: 'Criar uma conta',
                          behaviour: Behaviour.regular,
                          backgroundColor: Colors.deepOrangeAccent,
                          textStyle: TextStyle(color: Colors.white),
                          onTap: () {},
                        ),
                        space(),
                        FlatButtonBehavior(
                          label: 'Esqueci minha senha',
                          behaviour: Behaviour.empty,
                          onTap: () {},
                        ),
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
