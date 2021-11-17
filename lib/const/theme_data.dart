import 'package:flutter/material.dart';
import 'package:my_porto/const/colors.dart';

class Styles {
  static ThemeData themeData (bool isDarkTheme, BuildContext context) {
    return ThemeData(
      scaffoldBackgroundColor: isDarkTheme ? ColorsConsts.licorice : ColorsConsts.cream,
      primarySwatch: Colors.grey,
      primaryColor: isDarkTheme? ColorsConsts.cream : ColorsConsts.licorice,
      accentColor: isDarkTheme ? ColorsConsts.licorice : ColorsConsts.cream, //set warna indikator mentok scroll
      backgroundColor: isDarkTheme? ColorsConsts.deepcream : ColorsConsts.deeplicorice,
      indicatorColor: isDarkTheme? Color(0xff0E1D36) : Color(0xffCBDCF8),
      buttonColor: isDarkTheme? Color(0xff3B3B3B) : Color(0xffF1F5FB),
      hintColor: isDarkTheme? Colors.grey.shade300 : Colors.grey.shade800,
      highlightColor: isDarkTheme? Color(0xFF3B4353) : Color(0xFFF8F1EA),
      hoverColor: isDarkTheme? Color(0xff3A3A3B) : Color(0xff4285F4),
      focusColor: isDarkTheme? ColorsConsts.licorice : ColorsConsts.flamingo,
      disabledColor: Color(0xFFDC624B),
      textSelectionColor: isDarkTheme? ColorsConsts.cream : ColorsConsts.licorice,
      cardColor: isDarkTheme? Color(0xFF151515) : Colors.white,
      canvasColor: isDarkTheme? ColorsConsts.licorice : ColorsConsts.cream,
      brightness: isDarkTheme? Brightness.dark : Brightness.light,
      buttonTheme: Theme.of(context).buttonTheme.copyWith(
        colorScheme: isDarkTheme? ColorScheme.dark() : ColorScheme.light()
      ),
      appBarTheme: AppBarTheme(
        elevation: 0.0,
      )
    );
  }
}