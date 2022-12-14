import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tet/View/Main%20Screen/Favorites.dart';
import 'package:tet/View/Main%20Screen/Grocery.dart';
import 'package:tet/View/Main%20Screen/chart.dart';

import '../View/Main Screen/News.dart';
import '../View/Main Screen/price.dart';

class HomeViewModel extends GetxController{
  int _navigatorValue=0;
  get naviagatorValue=>_navigatorValue;
  void changeSelectedValue(int selecetedvalue ){
    _navigatorValue=selecetedvalue;
    update();
  }
  List<Widget>Pages=[
    Grocery(),
    News(),
    SizedBox(),
    Favorites(),
    chart(),
  ];
}