import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'app_colors.dart';

class AppTheme {
  const AppTheme._();

  static final ThemeData light = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      brightness: Brightness.light,
      primary: AppColors.primary,
      primaryContainer: AppColors.primary100,
      surface: AppColors.surface,
      surfaceContainer: AppColors.surface300,
      onSurfaceVariant: AppColors.surface100,
      error: AppColors.error,
      onErrorContainer: AppColors.error50,
    ),
     dividerColor: AppColors.surface100,
    iconTheme: IconThemeData(color: AppColors.white),
    textTheme: TextTheme(
      titleLarge: TextThemeTextStyle.textStyle.copyWith(
        color: AppColors.surface700,
        fontWeight: FontWeight.w500,
      ),

      labelSmall: TextThemeTextStyle.textStyle.copyWith(
        fontWeight: FontWeight.w500,
        color: AppColors.error,
        fontSize: 12.sp,
      ),
      labelLarge: TextThemeTextStyle.textStyle.copyWith(color: AppColors.white),
      titleMedium: TextThemeTextStyle.textStyle.copyWith(
        fontWeight: FontWeight.w500,
        color: AppColors.surface700,
        fontSize: 17.sp,
      ),
      bodySmall: TextThemeTextStyle.textStyle.copyWith(
        fontWeight: FontWeight.w400,
        color: AppColors.surface300,
        fontSize: 14.sp,
      ),
      titleSmall: TextThemeTextStyle.textStyle.copyWith(
        color: AppColors.surface300,
      ),
    ),

    scaffoldBackgroundColor: ColorScheme.fromSeed(
      seedColor: AppColors.white,
      primary: AppColors.white,
      brightness: Brightness.light,
    ).primary,
  );

  // Dark Mode .....
  static final ThemeData dark = ThemeData(
    useMaterial3: true,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.primary,
      primary: AppColors.primary,
      brightness: Brightness.dark,
    ),
    textTheme: TextTheme(
      // bodyMedium: textThemeTextStyle(),
      titleSmall: TextStyle(),
    ),
    scaffoldBackgroundColor: ColorScheme.fromSeed(
      seedColor: AppColors.surface,
      brightness: Brightness.dark,
    ).surfaceContainer,
  );
}

///
class TextThemeTextStyle {
  static const textStyle = TextStyle(fontFamily: "Urbanist");
}
