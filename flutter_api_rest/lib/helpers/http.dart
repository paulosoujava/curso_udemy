import 'package:dio/dio.dart';
import 'package:flutter_api_rest/helpers/http_response.dart';

class Http {
  Dio _dio;

  Http(Dio dio) {
    this._dio = dio;
  }

  Future<HttpResponse<T>> request<T>(
    String path, {
    String method = 'GET',
    Map<String, dynamic> queryParameters,
    Map<String, dynamic> data,
    Map<String, dynamic> formData,
    Map<String, String> headers,
    T Function(dynamic data) parser,
  }) async {
    try {
      final response = await _dio.request(
        path,
        options: Options(
          method: method,
          headers: headers,
        ),
        queryParameters: queryParameters,
        data: formData != null ? FormData.fromMap(formData) : data,
      );
      if (parser != null) {
        return HttpResponse.success<T>(parser(response.data));
      }
      return HttpResponse.success(response.data);
    } on Exception catch (e) {
      int statusCode = 0;
      String message = "unknow error";
      dynamic data;

      if (e is DioError) {
        statusCode = -1;
        message = e.message;
        if (e.response != null) {
          statusCode = e.response.statusCode;
          message = e.response.statusMessage;
          data = e.response.data;
        }
      }
      return HttpResponse.fail(statusCode, message, data);
    }
  }
}
