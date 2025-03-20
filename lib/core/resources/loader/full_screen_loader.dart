import 'package:al_quran/core/resources/constants/screen_path.dart';

class FullScreenLoader {

  static void show({required String loadingText, required String lottieAsset,required BuildContext context}) {
    final dark = HelperFunctions.isDarkMode(context);
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return PopScope(
          canPop: false,
          child: Dialog(
            backgroundColor:Colors.transparent,
            elevation: 0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    color: dark ? AppColors.scafoldDark : AppColors.appWhite,
                    borderRadius: BorderRadius.circular(10.0),
                    boxShadow: const [
                      BoxShadow(
                        color: Colors.black26,
                        blurRadius: 10.0,
                        spreadRadius: 2.0,
                      ),
                    ],
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Lottie.asset(
                        lottieAsset,
                        width: 100,
                        height: 100,
                        fit: BoxFit.fill,
                      ),
                      ...[
                      const SizedBox(height: 20.0),
                      Text(
                        loadingText,
                        style: const TextStyle(fontSize: 16.0),
                      ),
                    ],
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  static void hide(BuildContext context) {
    Navigator.of(context).pop();
  }

  static void openLoadingDialog(String text, String animation, BuildContext context) {
    showDialog(
      context:context, // use this for overlay dialogs
      barrierDismissible: false,
      builder: (_) => WillPopScope(
        onWillPop: () async {return false;},
        child: Container(
          color: HelperFunctions.isDarkMode(context) ? AppColors.dark : AppColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            children: [
              const SizedBox(height: 250), //adjust space as needed
              AnimationLoaderWidget(text: text, animation: animation),
            ],
          ),
        ),
      ),
    );
  }

  ///stop the currently loading open dialog
  static stopLoading(BuildContext context) {
    Navigator.of(context).pop(); //close dialog using navigator
  }
}
