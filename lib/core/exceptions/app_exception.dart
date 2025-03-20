class AppException implements Exception{
  final String? _message, prefix;
  AppException([this._message, this.prefix]);


  @override
  String toString() {
    // TODO: implement toString
    return '$_message, $prefix';
  }
}

class NoInternetException extends AppException{
  NoInternetException([String? message]) : super(message, 'No Internet');
}

class UnAuthorisedException extends AppException{
  UnAuthorisedException([String? message]) : super(message, "No don't have access to this.");
}

class RequestTimeOutException extends AppException{
  RequestTimeOutException([String? message]) : super(message, 'Request Time Out');
}

class FetchDataException extends AppException{
  FetchDataException([String? message]) : super(message, '');
}