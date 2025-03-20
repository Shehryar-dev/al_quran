import 'package:al_quran/core/resources/constants/colors.dart';
import 'package:flutter/material.dart';

class BottomNavbarTheme {
//light-----------
  static NavigationBarThemeData lightBottomSheetThemeData =
      NavigationBarThemeData(
    backgroundColor: AppColors.white,
    indicatorColor: AppColors.primary.withOpacity(0.1),
    labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return  TextStyle(color: AppColors.primary, fontSize: 11.5);
        }
        return const TextStyle(color: AppColors.scafoldDark, fontSize: 11.5);
      },
    ),
    iconTheme: WidgetStateProperty.resolveWith<IconThemeData>(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return  IconThemeData(color: AppColors.primary);
        }
        return const IconThemeData(color: AppColors.scafoldDark);
      },
    ),
  );
//dark------------
  static NavigationBarThemeData darkBottomSheetThemeData =
      NavigationBarThemeData(
    backgroundColor: AppColors.scafoldDark,
    indicatorColor: AppColors.primary.withOpacity(0.1),
    labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return  TextStyle(color: AppColors.primary, fontSize: 11.5);
        }
        return  TextStyle(color: AppColors.dark, fontSize: 11.5);
      },
    ),
    iconTheme: WidgetStateProperty.resolveWith<IconThemeData>(
      (states) {
        if (states.contains(WidgetState.selected)) {
          return  IconThemeData(color: Colors.grey.shade300);
        }
        return  IconThemeData(color: Colors.grey.shade300);
      },
    ),
  );
}
