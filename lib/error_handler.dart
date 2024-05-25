import 'package:flutter/material.dart';

class CustomErrorHandler {
  static final CustomErrorHandler _instance = CustomErrorHandler._internal();

  factory CustomErrorHandler() {
    return _instance;
  }

  CustomErrorHandler._internal();

  void handleError(Object error, StackTrace? stackTrace) {

    print('Error: $error');
    print('StackTrace: $stackTrace');

    // Report the error to an external service (e.g., Firebase Crashlytics)
    // reportError(error, stackTrace);

    // Optionally, display a user-friendly message to the user
    // showErrorDialog(error);
  }

  void reportError(Object error, StackTrace stackTrace) {
    // Implement error reporting logic here
    // e.g., Firebase Crashlytics, Sentry, etc.
  }

  void showErrorDialog(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('An error occurred'),
          content: Text(message),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }
}
