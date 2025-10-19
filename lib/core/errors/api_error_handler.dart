import 'package:dio/dio.dart';
import 'api_error_messages.dart';
import 'api_error_model.dart';

class ApiErrorHandler {
  ApiErrorModel fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return const ApiErrorModel(message: ApiErrorMessages.connectionTimeout);

      case DioExceptionType.sendTimeout:
        return const ApiErrorModel(message: ApiErrorMessages.sendTimeout);

      case DioExceptionType.receiveTimeout:
        return const ApiErrorModel(message: ApiErrorMessages.receiveTimeout);

      case DioExceptionType.cancel:
        return const ApiErrorModel(message: ApiErrorMessages.requestCancelled);

      case DioExceptionType.badCertificate:
        return const ApiErrorModel(message: ApiErrorMessages.badCertificate);

      case DioExceptionType.connectionError:
        final errorMessage = dioError.message?.toLowerCase() ?? '';
        if (errorMessage.contains('socketexception') ||
            errorMessage.contains('network is unreachable') ||
            errorMessage.contains('no address associated with hostname')) {
          return const ApiErrorModel(message: ApiErrorMessages.noInternet);
        }
        return const ApiErrorModel(message: ApiErrorMessages.connectionError);

      case DioExceptionType.unknown:
        final errorMessage = dioError.message?.toLowerCase() ?? '';
        if (errorMessage.contains('socketexception') ||
            errorMessage.contains('network')) {
          return const ApiErrorModel(message: ApiErrorMessages.noInternet);
        }
        return const ApiErrorModel(message: ApiErrorMessages.unexpectedError);

      case DioExceptionType.badResponse:
        if (dioError.response != null) {
          return fromResponse(
            statusCode: dioError.response!.statusCode,
            data: dioError.response!.data,
          );
        }
        return const ApiErrorModel(message: ApiErrorMessages.nullResponse);
    }
  }

  ApiErrorModel fromResponse({
    required int? statusCode,
    required Map<String, dynamic> data,
  }) {
    final fallbackMessage = statusCode == null
        ? ApiErrorMessages.genericError
        : ApiErrorMessages.getHttpStatusMessage(statusCode);
    return ApiErrorModel(
      message: data['message'] ?? fallbackMessage,
      code: data["status"],
      errors: data["data"],
    );
  }
}

// usage :

/*Future<Either<Failure, User>> getUser() async {
  try {
    // API call
    return Right(user);
  } on DioException catch (e) {
    return Left(Failure.fromDioError(e)); // Clear error type
  }
}*/

// void fetchUserData() async {
//   try {
//     final result = await userRepository.getUser();
//     result.fold(
//       (failure) => showError(failure.errorMessage), // Handle Failure
//       (user) => displayUser(user),                  // Handle success
//     );
//   } catch (e) {
//     // This catches any other unexpected errors
//     print("Unexpected error: $e");
//   }
// }

// In your Repository
// try {
//   final result = await _firestore.collection('users').get();
//   return Right(result);
// } on FirebaseException catch (e) {
//   return Left(Failure.fromFirestore(e));
// } on FirebaseAuthException catch (e) {
//   return Left(Failure.fromFirebaseAuth(e));
// } catch (e) {
//   return Left(Failure.fromFirebase(e)); // Handles any other Firebase error
// }
