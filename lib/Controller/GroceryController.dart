import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../Model/GroceryModel.dart';
class GroceryController extends GetxController{
  final List<Location> _location=[
    Location(Mainlocation: "Home Address",
        Address: "Mustafa St. No:2",
        StreetName: "Street x12"),
    Location(Mainlocation: "Office Address",
        Address: "Axis Istanbul, B2 Blok",
        StreetName: "Floor 2, Office 11")
  ];
  List<Location> get location=>_location;


  final List<Category> _Category=[
    Category(color:Color(0xffF9BDAD) , CategoryName: "Steak"),
    Category(color:Color(0xffFAD96D) , CategoryName: "Vegetables"),
    Category(color:Color(0xffCCB8FF) , CategoryName: "Beverages"),
    Category(color:Color(0xffB0EAFD) , CategoryName: "Fish"),
    Category(color:Color(0xffFF9DC2) , CategoryName: "Juice"),
  ];
  List<Category> get category=>_Category;



  List<int>_favorites=[];
 List<int> get Favorites=>_favorites;

  Map<int ,bool>fav={};
  addToSelectedPermissions(int proId) {
    fav.addAll({
      proId:true,
    });
    print ("ad${fav[proId]}");
    update();
  }
  removeToSelectedPermissions(int proId) {
    fav.remove(proId);
    print ("re${fav[proId]}");
    update();
  }

  final List<Deals> _Deals=[
    Deals(id:1,
      color:Color(0xffFBEDD8) ,
      Name: "Summer Sun Ice Cream Pack",
      CountPieces: "Pieces 5",
      Time: "15 Minutes Away",
      Price: 12,
      Discount: 18,
      isfave:true,
      count: 1,
      totalprice: 12.0
    ),
    Deals(id:2, color:
    Color(0xff28D193) ,Name: "Cake", CountPieces: "Pieces 7", Time: "20 Minutes Away", Price: 18,Discount: 25,
      isfave: true,
      count: 1,
      totalprice:18.0
    ),
  ];
  List<Deals> get deals=>_Deals;
}