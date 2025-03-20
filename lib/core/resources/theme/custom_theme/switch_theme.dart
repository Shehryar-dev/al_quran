import 'package:flutter/material.dart';

class CustomSwitchTheme {
  static final SwitchThemeData lightSwitchThemeData = SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return const Color(0xFF4b68ff);
      }
      return Colors.grey;
    }),
    trackColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return const Color(0xFF4b68ff).withOpacity(0.5);
      }
      return Colors.grey.withOpacity(0.5);
    }),
    overlayColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return Colors.grey.withOpacity(0.1);
      }
      return null;
    }),
    //Border Color
    trackOutlineColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return const Color(0xFF4b68ff).withOpacity(0.1);
      }
      return Colors.grey.withOpacity(0.1);
    }),
  );

  static final SwitchThemeData darkSwitchThemeData = SwitchThemeData(
    thumbColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return const Color(0xFF4b68ff);
      }
      return Colors.grey;
    }),
    trackColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return const Color(0xFF4b68ff).withOpacity(0.5);
      }
      return Colors.grey.withOpacity(0.5);
    }),
    overlayColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.disabled)) {
        return Colors.grey.withOpacity(0.1);
      }
      return null;
    }),
    //Border Color
    trackOutlineColor: WidgetStateProperty.resolveWith((states) {
      if (states.contains(WidgetState.selected)) {
        return const Color(0xFF4b68ff).withOpacity(0.1);
      }
      return Colors.grey.withOpacity(0.1);
    }),
  );
}
