import 'package:dio/dio.dart';
import 'api_error_messages.dart';

class Failure implements Exception {
  const Failure({required this.errorMessage});

  factory Failure.fromException(Exception exception) {
    return Failure(errorMessage: exception.toString());
  }

  factory Failure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return const Failure(errorMessage: ApiErrorMessages.connectionTimeout);

      case DioExceptionType.sendTimeout:
        return const Failure(errorMessage: ApiErrorMessages.sendTimeout);

      case DioExceptionType.receiveTimeout:
        return const Failure(errorMessage: ApiErrorMessages.receiveTimeout);

      case DioExceptionType.cancel:
        return const Failure(errorMessage: ApiErrorMessages.requestCancelled);

      case DioExceptionType.badCertificate:
        return const Failure(errorMessage: ApiErrorMessages.badCertificate);

      case DioExceptionType.badResponse:
        if (dioError.response != null) {
          return Failure.fromResponse(
            dioError.response!.statusCode,
            dioError.response!.data,
          );
        }
        return const Failure(errorMessage: ApiErrorMessages.nullResponse);

      case DioExceptionType.connectionError:
        final errorMessage = dioError.message?.toLowerCase() ?? '';
        if (errorMessage.contains('socketexception') ||
            errorMessage.contains('network is unreachable') ||
            errorMessage.contains('no address associated with hostname')) {
          return const Failure(errorMessage: ApiErrorMessages.noInternet);
        }
        return const Failure(errorMessage: ApiErrorMessages.connectionError);

      case DioExceptionType.unknown:
        final errorMessage = dioError.message?.toLowerCase() ?? '';
        if (errorMessage.contains('socketexception') ||
            errorMessage.contains('network')) {
          return const Failure(errorMessage: ApiErrorMessages.noInternet);
        }
        return const Failure(errorMessage: ApiErrorMessages.unexpectedError);
    }
  }

  factory Failure.fromResponse(
    int? statusCode,
    Map<String, dynamic> responseData,
  ) {
    final fallbackMessage = statusCode != null
        ? ApiErrorMessages.getHttpStatusMessage(statusCode)
        : ApiErrorMessages.genericError;
    final errorMessage =
        responseData['error'] ?? responseData['message'] ?? fallbackMessage;
    return Failure(errorMessage: errorMessage);
  }
  final String errorMessage;
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
