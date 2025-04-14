// ignore_for_file: public_member_api_docs, sort_constructors_first
// the implementation of this class is inspired by dio library

enum HttpErrorType {
  // Caused by a connection timeout.
  connectionTimeout,

  /// It occurs when url is sent timeout.
  sendTimeout,

  /// It occurs when receiving timeout.
  receiveTimeout,

  /// Caused by an incorrect certificate as configured by [ValidateCertificate].
  badCertificate,

  /// The [HttpError] was caused by an incorrect status code or an status code out of range.
  badResponse,

  /// When the request is cancelled, dio will throw a error with this type.
  cancel,

  /// Caused for example by a `xhr.onError` or SocketExceptions.
  connectionError,

  /// default exception type
  unknown,
}

extension _HttpErrorTypeException on HttpErrorType {
  String toPrettyDesception() {
    switch (this) {
      case HttpErrorType.connectionTimeout:
        return 'connection timeout';
      case HttpErrorType.sendTimeout:
        return 'send timeout';
      case HttpErrorType.receiveTimeout:
        return 'receive timeout';
      case HttpErrorType.badCertificate:
        return 'bad certificate';
      case HttpErrorType.badResponse:
        return 'bad response';
      case HttpErrorType.cancel:
        return 'request cancelled';
      case HttpErrorType.connectionError:
        return 'connection error';
      case HttpErrorType.unknown:
        return 'unknown';
    }
  }
}

class HttpError implements Exception {
  final String? errorString;
  final String? errorDescription;
  final HttpErrorType type;
  final int? responseCode;
  final String? responseMessage;
  final StackTrace? stackTrace;

  HttpError(
      {this.errorString,
      this.errorDescription,
      this.type = HttpErrorType.unknown,
      this.responseCode,
      this.responseMessage,
      this.stackTrace});

  factory HttpError.badResponse(int statusCode) => HttpError(
      type: HttpErrorType.badResponse,
      errorString: _badResponseExceptionMessage(statusCode),
      responseCode: statusCode);

  factory HttpError.connectionTimeout(Duration timeout, int statusCode) =>
      HttpError(
        type: HttpErrorType.connectionTimeout,
        responseCode: statusCode,
        errorString: 'connection timed out',
        errorDescription: 'The request connection took longer than $timeout '
            'and it was aborted. '
            'To get rid of this exception, try raising the '
            'RequestOptions.connectTimeout above the duration of $timeout or '
            'improve the response time of the server.',
      );

  factory HttpError.sendTimeout(Duration timeout, int statusCode) => HttpError(
        type: HttpErrorType.sendTimeout,
        errorString: 'sent timed out',
        responseCode: statusCode,
        errorDescription: 'The request took longer than $timeout to send data. '
            'It was aborted. '
            'To get rid of this exception, try raising the '
            'RequestOptions.sendTimeout above the duration of $timeout or '
            'improve the response time of the server.',
      );

  factory HttpError.receiveTimeout(Duration timeout, int statusCode) =>
      HttpError(
        type: HttpErrorType.receiveTimeout,
        errorString: 'receiving timed out',
        responseCode: statusCode,
        errorDescription:
            'The request took longer than $timeout to receive data. '
            'It was aborted. '
            'To get rid of this exception, try raising the '
            'RequestOptions.receiveTimeout above the duration of $timeout or '
            'improve the response time of the server.',
      );

  factory HttpError.badCeritificate(int statusCode) => HttpError(
        type: HttpErrorType.connectionTimeout,
        responseCode: statusCode,
        errorString: 'bad cerifiacte',
        errorDescription: 'The certificate of the response is not approved.',
      );

  factory HttpError.requestCancelled(int statusCode) => HttpError(
        type: HttpErrorType.connectionTimeout,
        responseCode: statusCode,
        errorString: 'The request was manually cancelled by the user.',
        errorDescription: 'The request was manually cancelled by the user.',
      );

  factory HttpError.connectionError(int statusCode, StackTrace stackTrace) =>
      HttpError(
        type: HttpErrorType.connectionTimeout,
        errorString: 'connection error',
        errorDescription: 'The connection errored.',
        responseCode: statusCode,
        stackTrace: stackTrace,
      );

// all status codes handling

  static String _badResponseExceptionMessage(int statusCode) {
    final String message;
    if (statusCode >= 100 && statusCode < 200) {
      message =
          'This is an informational response - the request was received, continuing processing';
    } else if (statusCode >= 200 && statusCode < 300) {
      message =
          'The request was successfully received, understood, and accepted';
    } else if (statusCode >= 300 && statusCode < 400) {
      message =
          'Redirection: further action needs to be taken in order to complete the request';
    } else if (statusCode >= 400 && statusCode < 500) {
      message =
          'Client error - the request contains bad syntax or cannot be fulfilled';
    } else if (statusCode >= 500 && statusCode < 600) {
      message =
          'Server error - the server failed to fulfil an apparently valid request';
    } else {
      message =
          'A response with a status code that is not within the range of inclusive 100 to exclusive 600'
          'is a non-standard response, possibly due to the server\'s software';
    }

    final buffer = StringBuffer();

    buffer.writeln(
      'This exception was thrown because the response has a status code of $statusCode '
      'and RequestOptions.validateStatus was configured to throw for this status code.',
    );
    buffer.writeln(
      'The status code of $statusCode has the following meaning: "$message"',
    );
    buffer.writeln(
      'Read more about status codes at https://developer.mozilla.org/en-US/docs/Web/HTTP/Status',
    );
    buffer.writeln(
      'In order to resolve this exception you typically have either to verify '
      'and fix your request code or you have to fix the server code.',
    );

    return buffer.toString();
  }

  @override
  String toString() {
    String message =
        'Http Error type ${type.toPrettyDesception()} $errorString';
    return message;
  }

  HttpError copyWith({
    String? errorString,
    String? errorDescription,
    HttpErrorType? type,
    int? responseCode,
    String? responseMessage,
    StackTrace? stackTrace,
  }) {
    return HttpError(
      errorString:errorString ?? this.errorString,
      errorDescription:errorDescription ?? this.errorDescription,
      type:type ?? this.type,
      responseCode:responseCode ?? this.responseCode,
      responseMessage:responseMessage ?? this.responseMessage,
      stackTrace:stackTrace ?? this.stackTrace,
    );
  }
}
