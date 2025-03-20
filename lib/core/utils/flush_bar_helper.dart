import 'package:al_quran/core/resources/constants/screen_path.dart';
import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_route.dart';



class FlashBarHelper{
  static void flushBarErrorMessage(String message, BuildContext context){
    showFlushbar(context: context,
        flushbar: Flushbar(
          title: 'Error',
          message: message,
          forwardAnimationCurve: Curves.decelerate,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: EdgeInsets.all(15),
          duration: Duration(seconds: 3),
          animationDuration: Duration(milliseconds: 500),
          shouldIconPulse: true,
          showProgressIndicator: true,
          reverseAnimationCurve: Curves.easeInOut,
          borderRadius: BorderRadius.circular(8),
          positionOffset: 20,
          flushbarPosition: FlushbarPosition.BOTTOM,
          backgroundColor: AppColors.error,
          icon: Icon(Iconsax.close_square, color: Colors.white,),
        )..show(context) );
  }

  static void flushBarSuccessMessage(String message, BuildContext context){
    showFlushbar(
        context: context,
        flushbar: Flushbar(
          title: 'Successful',
          message: message,
          forwardAnimationCurve: Curves.decelerate,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: EdgeInsets.all(15),
          duration: Duration(seconds: 3),
          animationDuration: Duration(milliseconds: 500),
          shouldIconPulse: true,
          reverseAnimationCurve: Curves.easeInOut,
          borderRadius: BorderRadius.circular(8),
          positionOffset: 20,
          flushbarPosition: FlushbarPosition.BOTTOM,
          showProgressIndicator: true,
          backgroundColor: AppColors.appPurpleLight1,
          icon: Icon(Iconsax.copy_success2, color: Colors.white,),
        )..show(context) );
  }


  static void flushBarWarningMessage(String message, BuildContext context){
    showFlushbar(context: context,
        flushbar: Flushbar(
          message: message,
          forwardAnimationCurve: Curves.decelerate,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: EdgeInsets.all(15),
          duration: Duration(seconds: 3),
          animationDuration: Duration(milliseconds: 500),
          shouldIconPulse: true,
          showProgressIndicator: true,
          reverseAnimationCurve: Curves.easeInOut,
          borderRadius: BorderRadius.circular(8),
          positionOffset: 20,
          flushbarPosition: FlushbarPosition.TOP,
          backgroundColor: AppColors.warning,
          icon: Icon(Iconsax.warning_2, color: Colors.white,),
        )..show(context) );
  }


  static void flushBarInfoMessage(String message, BuildContext context){
    showFlushbar(context: context,
        flushbar: Flushbar(
          message: message,
          forwardAnimationCurve: Curves.decelerate,
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          padding: EdgeInsets.all(15),
          duration: Duration(seconds: 3),
          animationDuration: Duration(milliseconds: 500),
          shouldIconPulse: true,
          showProgressIndicator: true,
          reverseAnimationCurve: Curves.easeInOut,
          borderRadius: BorderRadius.circular(8),
          positionOffset: 20,
          flushbarPosition: FlushbarPosition.TOP,
          backgroundColor: AppColors.info,
          icon: Icon(Iconsax.information, color: Colors.white,),
        )..show(context) );
  }

}