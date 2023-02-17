import 'package:dio/dio.dart';

abstract class Failure {
  final String errorMsg;

  const Failure(this.errorMsg);
}

class ServerFailure extends Failure
{
  ServerFailure(super.errorMsg);

  factory ServerFailure.fromDioError(DioError dioError)
  {
    switch(dioError.type){
      case DioErrorType.connectionTimeout:
        return ServerFailure('Connection Timeout');
      case DioErrorType.sendTimeout:
        return ServerFailure('Send Timeout');
      case DioErrorType.receiveTimeout:
        return ServerFailure('Receive Timeout');
      case DioErrorType.badCertificate:
        // TODO: Handle this case.
        break;
      case DioErrorType.badResponse:
        return ServerFailure.fromResponse(dioError.response!.statusCode!, dioError.response!.data);
      case DioErrorType.cancel:
        return ServerFailure('Cancel');
      case DioErrorType.connectionError:
        return ServerFailure('Connection Error');
      case DioErrorType.unknown:
        if(dioError.message!.contains('SocketException'))
        {
          return ServerFailure('No Internet Connection');
        }
        return ServerFailure('UnExpected Error , please try Again');
      default:
        return ServerFailure('please try Again..!!');
    }
  }

  factory ServerFailure.fromResponse(int statusCode , dynamic response) {
    if(statusCode == 400 || statusCode == 401 || statusCode == 403)
    {
      return ServerFailure(response['error']['message']);
    } else if( statusCode == 404 )
    {
      return ServerFailure('NOT FOUND , Please Try Again Later...!!');
    } else if (statusCode == 500){
      return ServerFailure('Server Error , Please Try Again Later...!!');
    } else {
      return ServerFailure('Oops , Please Try Again Later...!!');
    }
  }
}
