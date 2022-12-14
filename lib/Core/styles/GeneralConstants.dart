// ignore_for_file: file_names

import 'dart:math' as math;

import 'package:flutter/material.dart';

import 'Colors.dart';


final kToday = DateTime.now();
final kFirstDay = DateTime(kToday.year-1, kToday.month, kToday.day);
final kLastDay = DateTime(kToday.year, kToday.month + 5, kToday.day);
const rightRotationAngle = 90 * math.pi / 180;
const leftRotationAngle = 270 * math.pi / 180;

const titleStyle = TextStyle(color: whiteColor,fontFamily: 'Circular Std Font',fontSize: 16,fontWeight: FontWeight.bold);

const titleStyle1 = TextStyle(color: dustyTeal,fontFamily: 'Circular Std Font',fontSize: 14,fontWeight: FontWeight.bold);

const titleStyle2 = TextStyle(color: tealish,fontFamily: 'Circular Std Font',fontSize: 14,fontWeight: FontWeight.bold);

const titleSmallStyle = TextStyle(color: brownishGrey,fontFamily: 'Circular Std Font',fontSize: 14,fontWeight: FontWeight.w600);

const titleSmallStyle2 = TextStyle(color: pinkishGrey,fontFamily: 'Circular Std Font',fontSize: 14,fontWeight: FontWeight.w600);

const titleSmallStyle4 = TextStyle(color: pinkishGrey,fontFamily: 'Circular Std Font',fontSize: 10,fontWeight: FontWeight.w600);

const titleSmallStyleGreen = TextStyle(color: Colors.green,fontFamily: 'Circular Std Font',fontSize: 14,fontWeight: FontWeight.w600);

const subTitleSmallStyle = TextStyle(color: lightGreyBlue,fontFamily: 'Circular Std Font',fontSize: 14,fontWeight: FontWeight.w600);

const subTitleSmallStyle2 = TextStyle(color: greenBlue,fontFamily: 'Circular Std Font',fontSize: 14,fontWeight: FontWeight.w600);

const subTitleSmallStyle3 = TextStyle(color: tomato,fontFamily: 'Circular Std Font',fontSize: 14,fontWeight: FontWeight.w600);

const titleSmallStyle3 = TextStyle(color: warmGrey,fontFamily: 'Circular Std Font',fontSize: 14,fontWeight: FontWeight.w600);

const titleSymmetricPadding = EdgeInsets.only(right: 8,left: 8,top: 8);

const titleSymmetricPadding2 = EdgeInsets.only(right: 8,left: 8);

const divider = Divider(color: pinkishGrey);

const verticalExtremeSmallSpace = SizedBox(height: 8);

const verticalSmallSpace = SizedBox(height: 15);

const verticalMediumSpace = SizedBox(height: 25);

const verticalLargeSpace = SizedBox(height: 35);

const verticalExtremeLargeSpace = SizedBox(height: 100);

const horizontalExtremeSmallSpace = SizedBox(width: 8);

const horizontalSmallSpace = SizedBox(width: 15);

const horizontalMediumSpace = SizedBox(width: 25);

const horizontalLargeSpace = SizedBox(width: 35);

const horizontalExtremeLargeSpace = SizedBox(width: 100);

BoxDecoration defaultDecoration = BoxDecoration(color: whiteColor,borderRadius: BorderRadius.circular(4));

final OutlineInputBorder outlineInputBorder = OutlineInputBorder(
  borderSide:  const BorderSide(color: whiteColor2),
  borderRadius: BorderRadius.circular(6),
);

InputBorder noneInputBorder = InputBorder.none;

const textFieldHintStyle = TextStyle(color: Color(0xFFBDBDBD), fontSize: 14,fontFamily: 'Circular Std Font',fontWeight: FontWeight.w600);
const titleSmallStyle1 = TextStyle(color: Color(0xFF4F4F4F),fontFamily: 'Circular Std Font',fontSize: 14,fontWeight: FontWeight.w600);
