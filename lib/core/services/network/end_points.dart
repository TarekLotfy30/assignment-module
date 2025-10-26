// A centralized class for managing all API endpoints and configurations.
/// Provides type-safe access to API routes and query parameters.
class EndPoints {
  EndPoints._();

  /// The base URL for the API.
  // This value is constant and does not change, saving memory
  static const String baseUrl =
      'https://ashtar-dashboard-80-bcl274pu2q-uc.a.run.app/';

  static const String student = 'students/';

  static const String me = 'me';
}
