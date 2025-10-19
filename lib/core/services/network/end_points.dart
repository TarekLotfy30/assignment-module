// A centralized class for managing all API endpoints and configurations.
/// Provides type-safe access to API routes and query parameters.
class EndPoints {
  EndPoints._();

  /// The base URL for the API.
  // This value is constant and does not change, saving memory
  static const String baseUrl = 'https://eraasoft.integration25.com/api/';
  static const String newsApiKey = '6daca0ce077440d7b4ffdfda4742e424';

  /// The endpoint for registering a new user.
  static const String register = 'register';

  /// The endpoint for logging in.
  static const String login = 'login';
}
