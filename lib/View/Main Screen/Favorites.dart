import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Favorites extends StatefulWidget {
  const Favorites({Key? key}) : super(key: key);

  @override
  State<Favorites> createState() => _FavoritesState();
}

class _FavoritesState extends State<Favorites> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context,child){
        return Container(
          child: Center(child: Text("Favorites",style:
          TextStyle(color:Color(0xff424242),fontWeight: FontWeight.bold,fontSize: 15.sp),)),
        );
      },
    );
  }
}
