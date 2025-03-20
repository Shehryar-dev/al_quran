import 'package:al_quran/core/resources/constants/screen_path.dart';
import 'package:al_quran/core/resources/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
///widget for displaying an animated loading indicator

class AnimationLoaderWidget extends StatelessWidget {
  const AnimationLoaderWidget(
      {Key? key,
      this.text,
      required this.animation,
      this.showAction = false,
      this.actionText,
      this.onActionPressed})
      : super(key: key);

  final String? text;
  final String animation;
  final bool showAction;
  final String? actionText;
  final VoidCallback? onActionPressed;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Lottie.asset(animation,
              width: MediaQuery.of(context).size.width *
                  0.8), //display lottie animation
          const SizedBox(height: DSize.defaultSpace),
          Text(
            text ?? '',
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: DSize.defaultSpace),
          showAction
              ? SizedBox(
                  width: 250,
                  child: OutlinedButton(
                      onPressed: onActionPressed,
                      style: OutlinedButton.styleFrom(
                          backgroundColor: AppColors.dark),
                      child: Text(
                        actionText!,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .apply(color: AppColors.light),
                      )),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
