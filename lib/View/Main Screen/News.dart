import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context,child){
        return Container(
          child: Center(child: Text("News",style: TextStyle(color:Color(0xff424242),fontWeight: FontWeight.bold,fontSize: 15.sp),)),
        );
      },
    );
  }
}
