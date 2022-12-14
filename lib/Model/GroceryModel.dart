import 'package:flutter/material.dart';

class Location {
  String Mainlocation;
  String Address;
  String StreetName;



  Location({
    required this.Mainlocation,
    required this.Address,
    required this.StreetName,

  });

  factory Location.fromJson(Map<String, dynamic> json){
    return Location(
      Mainlocation: json['Mainlocation'],
      Address: json['Address'],
      StreetName: json['StreetName'],
    );
  }
}

class Category {
  Color color;
  String CategoryName;


  Category({
    required this.color,
    required this.CategoryName,
  });

  factory Category.fromJson(Map<String, dynamic> json){
    return Category(
      color: json['color'],
      CategoryName: json['CategoryName'],
    );
  }
}



class Deals  {
  int id;
  Color color;
  String Name;
  String CountPieces;
  String Time;
  double Price;
  double Discount;
  bool? isfave;
  int count=1;
  double totalprice;



  Deals ({
    required this.id,
    required this.color,
    required this.Name,
    required this.CountPieces,
    required this.Time,
    required this.Price,
    required this.Discount,
    this.isfave,
    required this.count,
    required this.totalprice,
  });

  factory Deals .fromJson(Map<String, dynamic> json){
    return Deals (
      id:json['id'],
      Name: json['Name'],
      CountPieces: json['CountPieces'],
      Time: json['Time'],
      Price: json['Price'],
      color: json['color'],
      Discount: json['Discount'],
      isfave: json['isfave'],
      count: json['count'],
      totalprice: json['totalprice']
    );
  }
}

class favorites {
  int id;
  bool isfav;
  favorites ({
    required this.id,
    required this.isfav,
  });

  factory favorites .fromJson(Map<String, dynamic> json){
    return favorites(
      id:json['id'],
      isfav:json['isfav'],
    );
  }
}
