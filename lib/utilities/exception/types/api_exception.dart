part of provider_application_exceptions;

/// Class to handle Unknown or All API Exceptions.
class APIException implements Exception {
  /// Constructor of API Exceptions.
  APIException({required this.message});

  final String _title = '''API Exception!''';

  /// message to show with this exception.
  final String message;

  /// getter of message.
  String getsMessage() => message;

  /// show snackbar.
  void showToast(BuildContext context) {
    showMySnackBar(
      context,
      title: _title,
      message: message,
      type: SnackType.error,
    );
  }
}
