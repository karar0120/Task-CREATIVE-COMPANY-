import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tet/Core/styles/Colors.dart';
import '../../Core/styles/GeneralConstants.dart';

class Price extends StatefulWidget {
  const Price({Key? key}) : super(key: key);

  @override
  State<Price> createState() => _PriceState();
}

class _PriceState extends State<Price> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context,child){
        return Scaffold(
          appBar: AppBar(
           // title: Text("Price",style: TextStyle(color:Color(0xff424242),fontWeight: FontWeight.bold,fontSize: 15.sp),),
            centerTitle: true,
            backgroundColor: tomato,
          ),
          body: Container(
            child: Center(child: Text('Price',style: TextStyle(color:Color(0xff424242),fontWeight: FontWeight.bold,fontSize: 15.sp),),),
          ),
        );
      },
    );
  }
}
