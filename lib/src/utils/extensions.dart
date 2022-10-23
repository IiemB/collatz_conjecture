import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension ContextExtensions on BuildContext {
  ThemeData get theme => Theme.of(this);

  double get width => MediaQuery.of(this).size.width;

  double get height => MediaQuery.of(this).size.height;

  ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showSnackBar(
    String message, {
    Duration duration = const Duration(seconds: 3),
  }) =>
      ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Text(message),
        ),
      );

  void removeCurrentSnackBar() =>
      ScaffoldMessenger.of(this).removeCurrentSnackBar();
}

extension CroasterThemeData on ThemeData {
  ThemeData get modified => copyWith(
        textTheme: textTheme.copyWith(
          bodyText2: textTheme.bodyText2?.copyWith(
            fontSize: 14.sp,
          ),
        ),
        listTileTheme: listTileTheme.copyWith(
          iconColor: colorScheme.onBackground,
        ),
        snackBarTheme: snackBarTheme.copyWith(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
        ),
        appBarTheme: appBarTheme.copyWith(
          centerTitle: false,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(16),
            ),
          ),
          color: scaffoldBackgroundColor.withOpacity(0.8),
          titleTextStyle: textTheme.headline5?.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 24.sp,
          ),
        ),
      );
}
