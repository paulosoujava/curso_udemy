import 'package:flutter/material.dart';
import 'package:flutter_api_rest/api/authentication_api.dart';
import 'package:flutter_api_rest/helpers/http_response.dart';
import 'package:flutter_api_rest/pages/error_page.dart';
import 'package:flutter_api_rest/pages/home_dart.dart';
import 'package:flutter_api_rest/utils/dialogs.dart';
import 'package:flutter_api_rest/data/authentication_client.dart';
import 'package:flutter_api_rest/utils/responsive.dart';
import 'package:flutter_api_rest/widgets/input_text.dart';
import 'package:get_it/get_it.dart';

class LoginForm extends StatefulWidget {
  LoginForm({Key key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  bool isOk = false;
  String email = '', password = '';

  Future<void> _submit() async {
    if (_formKey.currentState.validate()) {
      final _authenticationApi = GetIt.instance<AuthenticationApi>();
      final AuthenticationClient _authClient = GetIt.instance<AuthenticationClient>();
      ProgressDialog.show(context);
      HttpResponse response = await _authenticationApi.login(email: email, password: password);
      ProgressDialog.dismiss(context);
      if (response.data != null) {
        await _authClient.saveSession(response.data);
        Navigator.pushNamedAndRemoveUntil(context, HomePage.routeName, (_) => false); // remove todos abaixo
      } else {
        Navigator.pushNamed(
          context,
          ErrorPage.routesName,
          arguments: ErrorPage(
            data: response.error.data,
            message: response.error.message,
            statusCode: response.error.statusCode,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final Responsive responsive = Responsive.of(context);
    return Positioned(
      bottom: 10,
      child: Container(
        constraints: BoxConstraints(maxWidth: responsive.isTable ? 430 : 360),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              InputText(
                label: "Email",
                onChanged: (email) {
                  this.email = email;
                },
                validator: (email) {
                  if (!RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(email)) {
                    return 'invalid email';
                  }
                  return null;
                },
                fontSize: responsive.dp(1.4),
                borderEnabled: true,
                keyboardType: TextInputType.emailAddress,
              ),
              SizedBox(
                height: responsive.dp(3),
              ),
              InputText(
                label: "Senha",
                onChanged: (password) {
                  this.password = password;
                },
                validator: (text) {
                  if (text.isEmpty) {
                    return 'required field ';
                  } else if (text.length <= 3) {
                    return 'required field more 3 character';
                  }
                  return null;
                },
                fontSize: responsive.dp(1.4),
                borderEnabled: true,
                obscureText: true,
              ),
              SizedBox(
                height: responsive.dp(1),
              ),
              Container(
                alignment: Alignment.bottomRight,
                child: FlatButton(
                  padding: EdgeInsets.all(10),
                  onPressed: () {},
                  child: Text("esqueceu a senha?",
                      style: TextStyle(
                        fontSize: responsive.dp(1.5),
                        fontWeight: FontWeight.bold,
                        color: Colors.black54,
                      )),
                ),
              ),
              SizedBox(
                height: responsive.dp(4),
              ),
              SizedBox(
                width: double.infinity,
                child: FlatButton(
                  padding: EdgeInsets.symmetric(vertical: 15),
                  onPressed: _submit,
                  child: Text(
                    "Login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: responsive.dp(1.5),
                    ),
                  ),
                  color: Colors.pinkAccent,
                ),
              ),
              SizedBox(
                height: responsive.dp(4),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "É novo por aqui?",
                    style: TextStyle(color: Colors.black54),
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, 'register');
                    },
                    child: Text(
                      "Criar conta",
                      style: TextStyle(
                        color: Colors.pinkAccent,
                        fontSize: responsive.dp(1.5),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: responsive.dp(10),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
