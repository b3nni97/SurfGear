import 'package:network/src/base/response.dart';

///Основные http ошибки

///Базовое http исключение
abstract class HttpException implements Exception {
  final Response response;

  HttpException(this.response);
}

///Неизвестный статус код
class UnknownHttpStatusCode extends HttpException {
  UnknownHttpStatusCode(Response response) : super(response);
}

///Перенаправление 3xx
class RedirectionHttpException extends HttpException {
  RedirectionHttpException(Response response) : super(response);
}

///Ошибка клиента 4xx
class ClientHttpException extends HttpException {
  ClientHttpException(Response response) : super(response);
}

///Ошибка сервера 5xx
class ServerHttpException extends HttpException {
  ServerHttpException(Response response) : super(response);
}