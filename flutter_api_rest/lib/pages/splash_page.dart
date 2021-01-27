import 'package:flutter/material.dart';
import 'package:flutter_api_rest/data/authentication_client.dart';
import 'package:flutter_api_rest/models/session.dart';
import 'package:flutter_api_rest/pages/home_dart.dart';
import 'package:flutter_api_rest/pages/login_page.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get_it/get_it.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // somente quando fore renderizado
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _checkSession();
    });
  }

  Future<void> _checkSession() async {
    final AuthenticationClient _authClient = GetIt.instance<AuthenticationClient>();
    Session session = await _authClient.session;
    final DateTime currenteDate = DateTime.now();
    int dif = currenteDate.difference(session.createdAt).inSeconds;
    print(dif);
    if (session == null) {
      Navigator.pushReplacementNamed(context, LoginPage.routesName);
      return;
    } else if (session.expiresIn - dif >= 60) {
      Navigator.pushReplacementNamed(context, HomePage.routeName);
      return;
    }
    Navigator.pushReplacementNamed(
      context,
      LoginPage.routesName,
      arguments: LoginPage(
        expired: 'Opss sua sessão expirou.\nPor favor faça o login novamente',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          body: Center(
        child: SpinKitWave(
          color: Colors.pinkAccent,
          size: 50.0,
        ),
      )),
    );
  }
}
