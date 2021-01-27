class HttpResponse<T> {
  final T data;
  final HttpError error;

  HttpResponse(this.data, this.error);

  static HttpResponse<T> success<T>(T data) => HttpResponse(data, null);

  static HttpResponse<T> fail<T>(
    int statusCode,
    String message,
    T data,
  ) =>
      HttpResponse(
          null,
          HttpError(
            statusCode: statusCode,
            message: message,
            data: data,
          ));
}

class HttpError {
  final int statusCode;
  final String message;
  final dynamic data;

  HttpError({this.statusCode, this.message, this.data});
}
