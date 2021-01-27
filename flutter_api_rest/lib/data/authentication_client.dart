import 'dart:convert';

import 'package:flutter_api_rest/models/authentication_response.dart';
import 'package:flutter_api_rest/models/session.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthenticationClient {
  final FlutterSecureStorage _flutterSecureStorage;

  AuthenticationClient(this._flutterSecureStorage);

  Future<Session> get session async {
    final data = await _flutterSecureStorage.read(key: Session.SESSION);
    if (data != null) {
      return Session.fromJson(jsonDecode(data));
    }
    return null;
  }

  Future<void> signOut() async {
    await _flutterSecureStorage.delete(
      key: Session.SESSION,
    );
  }

  Future<void> saveSession(AuthenticationResponse authenticationResponse) async {
    final Session session = Session(
      token: authenticationResponse.token,
      expiresIn: authenticationResponse.expiresIn,
      createdAt: DateTime.now(),
    );

    final data = jsonEncode(session.toJson());
    await _flutterSecureStorage.write(key: Session.SESSION, value: data);
  }
}
