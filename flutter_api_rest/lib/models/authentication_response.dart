import 'package:meta/meta.dart' show required;

class AuthenticationResponse {
  final String token;
  final int expiresIn;

  AuthenticationResponse({@required this.token, @required this.expiresIn});

  static AuthenticationResponse fromJSON(Map<String, dynamic> json) => AuthenticationResponse(
        token: json['token'],
        expiresIn: json['expiresIn'],
      );
}
