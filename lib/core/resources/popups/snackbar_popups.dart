

import 'package:al_quran/core/resources/constants/screen_path.dart';

class SnackbarService {
  // static void showSnackbar(BuildContext context, String message,
  //     {Color textColor = Colors.white,
  //     double fontSize = 14.0,
  //     Color backgroundColor = Colors.blue}) {
  //   ScaffoldMessenger.of(context)
  //     ..hideCurrentSnackBar()
  //     ..showSnackBar(SnackBar(
  //       backgroundColor: backgroundColor,
  //       content: Text(
  //         message,
  //         style: TextStyle(color: textColor, fontSize: fontSize),
  //       ),
  //       shape: RoundedRectangleBorder(
  //         borderRadius: BorderRadius.circular(12.0), // Rounded edges
  //       ),
  //       behavior: SnackBarBehavior.floating,
  //       padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
  //     ));
  // }
  static void showSnackbar(BuildContext context, String message,
      {String? heading, // Optional heading parameter
      Color textColor = Colors.white,
      double fontSize = 14.0,
      Color backgroundColor = Colors.blue,
      Color headingColor = Colors.white, // Optional heading color
      double headingFontSize = 16.0,
      int durationInSec = 2}) {
    // Optional heading font size
    final content = heading != null
        ? Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                heading,
                style: TextStyle(
                  color: headingColor,
                  fontSize: headingFontSize,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4.0), // Space between heading and message
              Text(
                message,
                style: TextStyle(color: textColor, fontSize: fontSize),
              ),
            ],
          )
        : Text(
            message,
            style: TextStyle(color: textColor, fontSize: fontSize),
          );

    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(
        duration: Duration(seconds: durationInSec),
        backgroundColor: backgroundColor,
        content: content,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12.0), // Rounded edges
        ),
        behavior: SnackBarBehavior.floating,
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      ));
  }

  static void showWarning(
      {required BuildContext context,
      required String message,
      String? heading}) {
    showSnackbar(
      context,
      message,
      heading: heading,
      textColor: Colors.white,
      backgroundColor: AppColors.warning,
    );
  }

  static void showError(
      {required BuildContext context,
      required String message,
      String? heading}) {
    showSnackbar(
      context,
      message,
      heading: heading,
      textColor: Colors.white,
      backgroundColor: AppColors.error,
    );
  }

  static void showSucccess(
      {required BuildContext context,
      required String message,
      String? heading}) {
    showSnackbar(
      context,
      message,
      heading: heading,
      textColor: Colors.white,
      backgroundColor: Colors.green,

    );
  }

  static void showSimpleMessage(
      {required BuildContext context,
      required String message,
      String? heading,
      int duration = 2}) {
    showSnackbar(
      durationInSec: duration,
      context,
      message,
      heading: heading,
      textColor: Colors.white,
      backgroundColor: AppColors.primary,
    );
  }
}
