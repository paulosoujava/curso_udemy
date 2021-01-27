import 'package:flutter_api_rest/helpers/http.dart';
import 'package:flutter_api_rest/helpers/http_response.dart';
import 'package:flutter_api_rest/models/authentication_response.dart';
import 'package:meta/meta.dart' show required;

class AuthenticationApi {
  final Http _http;
  static const String PATH = '/api/v1';
  AuthenticationApi(this._http);

  Future<HttpResponse<AuthenticationResponse>> login({
    @required String email,
    @required String password,
  }) {
    return _http.request<AuthenticationResponse>('$PATH/login', method: 'POST', data: {
      "email": email,
      "password": password,
    }, parser: (data) {
      return AuthenticationResponse.fromJSON(data);
    });
  }

  Future<HttpResponse<AuthenticationResponse>> register({
    @required String username,
    @required String email,
    @required String password,
  }) {
    return _http.request<AuthenticationResponse>('$PATH/register', method: 'POST', data: {
      "username": username,
      "email": email,
      "password": password,
    }, parser: (data) {
      return AuthenticationResponse.fromJSON(data);
    });
  }
}
