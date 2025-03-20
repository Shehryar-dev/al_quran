import 'dart:convert';
import '../resources/constants/screen_path.dart';
import 'package:http/http.dart' as http;

class HelperFunctions {
  static dynamic returnDioResponse(Response response) {
    switch (response.statusCode) {
      case 200:
        return response.data;
      case 400:
        return response.data;
      case 401:
        throw UnAuthorisedException();
      case 500:
        throw FetchDataException('Server error: ${response.statusCode}');
      default:
        throw FetchDataException('Unexpected error: ${response.statusCode}');
    }
  }

  static Exception handleDioError(DioException e) {
    if (e.type == DioExceptionType.connectionTimeout ||
        e.type == DioExceptionType.receiveTimeout) {
      return FetchDataException('Connection timeout. Please try again.');
    } else if (e.type == DioExceptionType.badResponse) {
      return FetchDataException('Server returned an invalid response.');
    } else if (e.type == DioExceptionType.unknown) {
      return NoInternetException();
    } else {
      return FetchDataException('Unknown error occurred.');
    }
  }

  ///HTTP
  static dynamic returnResponse(http.Response response){
    switch(response.statusCode){
      case 200:
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;
      case 400:
        dynamic jsonResponse = jsonDecode(response.body);
        return jsonResponse;
      case 401:
        throw UnAuthorisedException();
      case 500:
        throw FetchDataException('Error Communication with Server. Response code: ${response.statusCode}');
    }
  }


  static void simpleCopyText({required String text}) {
    Clipboard.setData(ClipboardData(text: text));
  }

  static void mostStrictAnimationNavigation(
      BuildContext context, Widget screen) {
    Navigator.pushAndRemoveUntil(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => screen,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.easeIn;

          var tween = Tween(begin: begin, end: end).chain(CurveTween(
            curve: curve,
          ));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
        transitionDuration: const Duration(milliseconds: 500),
      ),
          (Route<dynamic> route) => false,
    );
  }

  static void simpleAnimationNavigation(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      PageRouteBuilder(
        pageBuilder: (context, animation, secondaryAnimation) => screen,
        transitionsBuilder: (context, animation, secondaryAnimation, child) {
          const begin = Offset(1.0, 0.0);
          const end = Offset.zero;
          const curve = Curves.easeIn;

          var tween =
          Tween(begin: begin, end: end).chain(CurveTween(curve: curve));
          var offsetAnimation = animation.drive(tween);

          return SlideTransition(
            position: offsetAnimation,
            child: child,
          );
        },
        transitionDuration: const Duration(milliseconds: 300),
      ),
    );
  }

  static String truncateText(String text, int maxLength) {
    if (text.length <= maxLength) {
      return text;
    } else {
      return '${text.substring(0, maxLength)}...';
    }
  }

  static bool isDarkMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark;
  }

  static Size screenSize(BuildContext context) {
    return MediaQuery.of(context).size;
  }

  static double screenHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }

  static double screenWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }


  static List<T> removeDuplicates<T>(List<T> list) {
    return list.toSet().toList();
  }

  static List<Widget> wrapWidgets(List<Widget> widgets, int rowSize) {
    final wrappedlList = <Widget>[];
    for (var i = 0; i < widgets.length; i += rowSize) {
      final rowChildren = widgets.sublist(
          i, i + rowSize > widgets.length ? widgets.length : i + rowSize);
      wrappedlList.add(Row(children: rowChildren));
    }
    return wrappedlList;
  }

  static String generateUniqueKey(String productId, String size, String color) {
    return '$productId-$size-$color';
  }

  // static double calculateTotalAmount(Map<String, CartItemModel> items) {
  //   double totalAmount = 0.0;
  //
  //   // Iterate over each item in the list
  //   for (var item in items.values) {
  //     totalAmount += item.price * item.quantity; // Multiply price by quantity
  //   }
  //
  //   return totalAmount;
  // }


}
