// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Colors.dart';
import 'GeneralConstants.dart';

ThemeData lightThemeApp = ThemeData(
  fontFamily: 'Almarai-Bold',
  timePickerTheme: _timePickerTheme,
  textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
    foregroundColor: MaterialStateColor.resolveWith((states) => whiteColor),
    backgroundColor: MaterialStateColor.resolveWith((states) => greenBlue),
    //overlayColor: MaterialStateColor.resolveWith((states) => Colors.deepOrange),
  )),
  primaryColor: greenBlue,
  primaryColorLight:brownishGrey,
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: greenBlue),
  canvasColor: Colors.white,
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
  focusColor: Colors.transparent,
  scaffoldBackgroundColor: Colors.white,
  cardColor: whiteColor,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  popupMenuTheme: const PopupMenuThemeData(
      color: whiteColor,
      elevation: 2.0,
      textStyle: TextStyle(
        fontFamily: 'Almarai-Bold',
        color: greenBlue,
        fontSize: 12.0,
        fontWeight: FontWeight.w700,
      )),
  textSelectionTheme: TextSelectionThemeData(
    selectionColor: greenBlue.withOpacity(0.8),
    cursorColor: greenBlue,
    selectionHandleColor: greenBlue.withOpacity(0.8),
  ),
  buttonTheme: const ButtonThemeData(
    colorScheme: ColorScheme.light(background: Colors.white),
  ),
  appBarTheme: const AppBarTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(25),
      ),
    ),
    elevation: 2.0,
    systemOverlayStyle: SystemUiOverlayStyle(
      //statusBarColor: Colors.black54,
      statusBarIconBrightness: Brightness.dark,
    ),
    titleTextStyle: TextStyle(
      fontFamily: 'Almarai-Bold',
      color: Colors.white,
      fontSize: 17.0,
      fontWeight: FontWeight.w700,
    ),
    iconTheme: IconThemeData(color: greenBlue, size: 14.0),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: greenBlue,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: greenBlue,
    unselectedItemColor: Colors.grey,
    elevation: 20.0,
    backgroundColor: Color(0xFF060606),
    selectedLabelStyle: TextStyle(
      fontFamily: 'Almarai-Bold',
      color: Colors.white,
      fontSize: 12.0,
//      height: 14.8,
      fontWeight: FontWeight.w400,
    ),
    unselectedLabelStyle: TextStyle(
      fontFamily: 'Almarai-Bold',
      color: Colors.white,
      fontSize: 12.0,
//      height: 14.8,
      fontWeight: FontWeight.w400,
    ),
  ),
  tabBarTheme: const TabBarTheme(
    labelStyle: TextStyle(
      fontFamily: 'Almarai-Bold', color: Colors.white,
      fontSize: 12.0,
//      height: 14.8,
      fontWeight: FontWeight.w400,
    ),
    unselectedLabelStyle: TextStyle(
      fontFamily: 'CairoBold', color: Colors.white,
      fontSize: 12.0,
//      height: 14.8,
      fontWeight: FontWeight.w400,
    ),
  ),

  // cardTheme: const CardTheme(
  //   color: brownishGrey,
  // ),
  textTheme: ThemeData.dark().textTheme.copyWith(
      bodyText1: titleSmallStyle,
      bodyText2: titleStyle,
      subtitle1:titleSmallStyle,
      button: const TextStyle(
        fontFamily: 'Almarai-Bold',
        color: greenBlue,
        fontSize: 12,
        fontWeight: FontWeight.w700,
      ),
      headline1: const TextStyle(
          fontFamily: 'Almarai-Bold', fontSize: 20, color: greenBlue),
      headline2: const TextStyle(
        fontFamily: 'Almarai-Bold',
        fontSize: 18,
        color: Color(0xff598BE6),
        // fontWeight: FontWeight.bold,
      ),
      headline3: const TextStyle(
        fontFamily: 'Almarai-Bold',
        fontSize: 14,
        color: greenBlue,
      ),
      headline4: const TextStyle(
        fontFamily: 'Almarai-Bold',
        fontSize: 12,
        color: greenBlue,
      ),
      headline5: TextStyle(
        fontFamily: 'Almarai-Bold',
        fontSize: 13,
        color: Colors.grey[800],
      ),
      headline6: const TextStyle(
        fontFamily: 'Almarai-Bold',
        color: greenBlue,
        fontSize: 12,
      )),
);

ThemeData darkThemeApp = ThemeData.dark().copyWith(
  textSelectionTheme: TextSelectionThemeData(
    selectionColor: greenBlue.withOpacity(0.8),
    cursorColor: greenBlue,
    selectionHandleColor: greenBlue.withOpacity(0.8),
  ),
  primaryColor: greenBlue,
  colorScheme: ColorScheme.fromSwatch().copyWith(secondary: lightGreyBlue),
  canvasColor: Colors.transparent,
  splashColor: Colors.transparent,
  highlightColor: Colors.transparent,
  focusColor: Colors.transparent,
  scaffoldBackgroundColor: Colors.white,
  cardColor: lightGreyBlue,
  visualDensity: VisualDensity.adaptivePlatformDensity,
  appBarTheme: const AppBarTheme(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(
        bottom: Radius.circular(25),
      ),
    ),
    elevation: 2.0,
    titleTextStyle: TextStyle(
      fontFamily: 'Almarai-Bold',
      color: Colors.white,
      fontSize: 17.0,
      fontWeight: FontWeight.w700,
    ),
    iconTheme: IconThemeData(color: greenBlue, size: 14.0),
  ),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: greenBlue,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    type: BottomNavigationBarType.fixed,
    selectedItemColor: greenBlue,
    unselectedItemColor: Colors.grey,
    elevation: 20.0,
    backgroundColor: Color(0xFF060606),
    selectedLabelStyle: TextStyle(
      fontFamily: 'Almarai-Bold',
      color: Colors.white,
      fontSize: 12.0,
//      height: 14.8,
      fontWeight: FontWeight.w400,
    ),
    unselectedLabelStyle: TextStyle(
      fontFamily: 'Almarai-Bold',
      color: Colors.white,
      fontSize: 12.0,
//      height: 14.8,
      fontWeight: FontWeight.w400,
    ),
  ),
  tabBarTheme: const TabBarTheme(
    labelStyle: TextStyle(
      fontFamily: 'Almarai-Bold', color: Colors.white,
      fontSize: 12.0,
//      height: 14.8,
      fontWeight: FontWeight.w400,
    ),
    unselectedLabelStyle: TextStyle(
      fontFamily: 'CairoBold', color: Colors.white,
      fontSize: 12.0,
//      height: 14.8,
      fontWeight: FontWeight.w400,
    ),
  ),
  textTheme: ThemeData.dark().textTheme.copyWith(
      bodyText1: TextStyle(
        fontFamily: 'Almarai-Bold',
        fontSize: 12,
        color: Colors.grey[800],
      ),
      subtitle1: const TextStyle(
        fontFamily: 'Almarai-Bold',
        fontSize: 80,
        fontWeight: FontWeight.w700,
        color: Color(0xFFFAFAFA),
      ),
      button: const TextStyle(
        fontFamily: 'Almarai-Bold',
        color: greenBlue,
        fontSize: 12,
        fontWeight: FontWeight.w700,
      ),
      headline1: const TextStyle(
          fontFamily: 'Almarai-Bold', fontSize: 20, color: greenBlue),
      headline2: const TextStyle(
        fontFamily: 'Almarai-Bold',
        fontSize: 18,
        color: Color(0xff598BE6),
        // fontWeight: FontWeight.bold,
      ),
      headline3: const TextStyle(
        fontFamily: 'Almarai-Bold',
        fontSize: 14,
        color: greenBlue,
      ),
      headline4: const TextStyle(
        fontFamily: 'Almarai-Bold',
        fontSize: 12,
        color: greenBlue,
      ),
      headline5: TextStyle(
        fontFamily: 'Almarai-Bold',
        fontSize: 13,
        color: Colors.grey[800],
      ),
      headline6: const TextStyle(
        fontFamily: 'Almarai-Bold',
        color: greenBlue,
        fontSize: 12,
      )),
);

final _timePickerTheme = TimePickerThemeData(
  backgroundColor: whiteColor,
  hourMinuteShape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    side: BorderSide(color: whiteColor, width: 4),
  ),
  dayPeriodBorderSide: const BorderSide(color: greenBlue, width: 4),
  dayPeriodColor: whiteColor,
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    side: BorderSide(color: greenBlue, width: 4),
  ),
  dayPeriodTextColor: greenBlue,
  dayPeriodShape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(8)),
    side: BorderSide(color: greenBlue, width: 4),
  ),
  hourMinuteColor: MaterialStateColor.resolveWith((states) =>
      states.contains(MaterialState.selected) ? greenBlue : whiteColor),
  hourMinuteTextColor: MaterialStateColor.resolveWith((states) =>
      states.contains(MaterialState.selected) ? whiteColor : greenBlue),
  dialHandColor: greenBlue,
  dialBackgroundColor: whiteColor,
  hourMinuteTextStyle:
      const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
  dayPeriodTextStyle:
      const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
  // helpTextStyle:
  // const TextStyle(fontSize: 12, fontWeight: FontWeight.bold, color: greenBlue),
  inputDecorationTheme: const InputDecorationTheme(
    border: InputBorder.none,
    contentPadding: EdgeInsets.all(0),
  ),
  // dialTextColor: MaterialStateColor.resolveWith(
  //         (states) => states.contains(MaterialState.selected) ? whiteColor : greenBlue),
  entryModeIconColor: greenBlue,
);


