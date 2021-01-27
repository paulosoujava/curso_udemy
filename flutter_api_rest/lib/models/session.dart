import 'package:meta/meta.dart' show required;

class Session {
  final String token;
  final int expiresIn;
  final DateTime createdAt;

  static const String SESSION = 'SESSION';

  Session({
    @required this.token,
    @required this.expiresIn,
    @required this.createdAt,
  });

  static Session fromJson(Map<String, dynamic> json) {
    return Session(
      createdAt: DateTime.parse(json['createdAt']),
      token: json['token'],
      expiresIn: json['expiresIn'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      "token": this.token,
      "expiresIn": this.expiresIn,
      "createdAt": this.createdAt.toIso8601String(),
    };
  }
}
