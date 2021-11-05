import 'dart:io';

import 'package:dio/dio.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:lapka/models/errors/base_error.dart';

part 'network_exceptions.freezed.dart';

@freezed
class NetworkExceptions with _$NetworkExceptions {
  const factory NetworkExceptions.requestCancelled({DioError? exception}) =
      RequestCancelled;

  const factory NetworkExceptions.unauthorisedRequest({DioError? exception}) =
      UnauthorisedRequest;

  const factory NetworkExceptions.badRequest({Exception? exception}) =
      BadRequest;

  const factory NetworkExceptions.notFound({DioError? exception}) = NotFound;

  const factory NetworkExceptions.methodNotAllowed({Exception? exception}) =
      MethodNotAllowed;

  const factory NetworkExceptions.notAcceptable({Exception? exception}) =
      NotAcceptable;

  const factory NetworkExceptions.requestTimeout({DioError? exception}) =
      RequestTimeout;

  const factory NetworkExceptions.sendTimeout({DioError? exception}) =
      SendTimeout;

  const factory NetworkExceptions.conflict({DioError? exception}) = Conflict;

  const factory NetworkExceptions.internalServerError({DioError? exception}) =
      InternalServerError;

  const factory NetworkExceptions.notImplemented({Exception? exception}) =
      NotImplemented;

  const factory NetworkExceptions.serviceUnavailable({DioError? exception}) =
      ServiceUnavailable;

  const factory NetworkExceptions.noInternetConnection({Exception? exception}) =
      NoInternetConnection;

  const factory NetworkExceptions.formatException({Exception? exception}) =
      FormatException;

  const factory NetworkExceptions.unableToProcess({Exception? exception}) =
      UnableToProcess;

  const factory NetworkExceptions.defaultError({DioError? exception}) =
      DefaultError;

  const factory NetworkExceptions.unexpectedError({Exception? exception}) =
      UnexpectedError;

  static NetworkExceptions getDioException(error) {
    if (error is Exception) {
      try {
        NetworkExceptions networkExceptions;
        if (error is DioError) {
          switch (error.type) {
            case DioErrorType.cancel:
              networkExceptions =
                  NetworkExceptions.requestCancelled(exception: error);
              break;
            case DioErrorType.connectTimeout:
              networkExceptions =
                  NetworkExceptions.requestTimeout(exception: error);
              break;
            case DioErrorType.other:
              networkExceptions =
                  NetworkExceptions.noInternetConnection(exception: error);
              break;
            case DioErrorType.receiveTimeout:
              networkExceptions =
                  NetworkExceptions.sendTimeout(exception: error);
              break;
            case DioErrorType.response:
              switch (error.response?.statusCode) {
                case 400:
                  networkExceptions =
                      NetworkExceptions.unauthorisedRequest(exception: error);
                  break;
                case 401:
                  networkExceptions =
                      NetworkExceptions.unauthorisedRequest(exception: error);
                  break;
                case 403:
                  networkExceptions =
                      NetworkExceptions.unauthorisedRequest(exception: error);
                  break;
                case 404:
                  networkExceptions =
                      NetworkExceptions.notFound(exception: error);
                  break;
                case 409:
                  networkExceptions =
                      NetworkExceptions.conflict(exception: error);
                  break;
                case 408:
                  networkExceptions =
                      NetworkExceptions.requestTimeout(exception: error);
                  break;
                case 500:
                  networkExceptions =
                      NetworkExceptions.internalServerError(exception: error);
                  break;
                case 503:
                  networkExceptions =
                      NetworkExceptions.serviceUnavailable(exception: error);
                  break;
                default:
                  networkExceptions =
                      NetworkExceptions.defaultError(exception: error);
              }
              break;
            case DioErrorType.sendTimeout:
              networkExceptions =
                  NetworkExceptions.sendTimeout(exception: error);
              break;
          }
        } else if (error is SocketException) {
          networkExceptions =
              NetworkExceptions.noInternetConnection(exception: error);
        } else {
          networkExceptions =
              NetworkExceptions.unexpectedError(exception: error);
        }
        return networkExceptions;
      } on FormatException catch (e) {
        // Helper.printError(e.toString());
        return NetworkExceptions.formatException();
      } catch (_) {
        return NetworkExceptions.unexpectedError(exception: error);
      }
    } else {
      if (error.toString().contains('is not a subtype of')) {
        return NetworkExceptions.unableToProcess();
      } else {
        return NetworkExceptions.unexpectedError(exception: error);
      }
    }
  }

  static String getErrorMessage(NetworkExceptions? networkExceptions) {
    String errorMessage = '';
    networkExceptions?.when(
      notImplemented: (exception) {
        errorMessage = 'Not Implemented';
      },
      requestCancelled: (exception) {
        errorMessage = 'Request Cancelled';
      },
      internalServerError: (exception) {
        errorMessage = 'Internal Server Error';
      },
      notFound: (exception) {
        errorMessage = 'Something went wrong';
      },
      serviceUnavailable: (exception) {
        errorMessage = 'Service unavailable';
      },
      methodNotAllowed: (exception) {
        errorMessage = 'Method Allowed';
      },
      badRequest: (exception) {
        errorMessage = 'Bad request';
      },
      unauthorisedRequest: (exception) {
        errorMessage = 
        // BaseError.fromJson(exception?.response?.data).reason ??
            'Unauthorised request';
      },
      unexpectedError: (Exception? exp) {
        errorMessage = 'Unexpected error occurred';
      },
      requestTimeout: (exception) {
        errorMessage = 'Connection request timeout';
      },
      noInternetConnection: (exception) {
        errorMessage = 'No internet connection';
      },
      conflict: (exception) {
        errorMessage = 'Error due to a conflict';
      },
      sendTimeout: (exception) {
        errorMessage = 'Send timeout in connection with API server';
      },
      unableToProcess: (exception) {
        errorMessage = 'Unable to process the data';
      },
      defaultError: (exception) {
        errorMessage = 'Something went wrong';
      },
      formatException: (exception) {
        errorMessage = 'Unexpected error occurred';
      },
      notAcceptable: (exception) {
        errorMessage = 'Not acceptable';
      },
    );
    return errorMessage;
  }
}
