import 'package:dio/dio.dart';
import 'package:flutter_api_rest/api/account_api.dart';
import 'package:flutter_api_rest/api/authentication_api.dart';
import 'package:flutter_api_rest/data/authentication_client.dart';
import 'package:flutter_api_rest/helpers/http.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

abstract class DependencyInjection {
  static void initialize() {
    final Dio _dio = new Dio(
      BaseOptions(
        baseUrl: 'https://curso-api-flutter.herokuapp.com',
      ),
    );
    Http _http = Http(_dio);
    final _authenticationApi = AuthenticationApi(_http);
    final _flutterSecureStorage = FlutterSecureStorage();
    final _authenticationClient = AuthenticationClient(_flutterSecureStorage);
    final accountAPI = AccountApi(_http, _authenticationClient);
    //registration
    GetIt.instance.registerSingleton<AuthenticationApi>(_authenticationApi);
    GetIt.instance.registerSingleton<AuthenticationClient>(_authenticationClient);
    GetIt.instance.registerSingleton<AccountApi>(accountAPI);
  }
}
