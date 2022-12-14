import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:tet/Controller/GroceryController.dart';

import '../../Core/styles/Colors.dart';
import '../../Core/styles/GeneralConstants.dart';

class chart extends StatefulWidget {
  const chart({Key? key}) : super(key: key);

  @override
  State<chart> createState() => _chartState();
}

class _chartState extends State<chart> {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(builder: (context, child) {
      return GetBuilder<GroceryController>(
        init: GroceryController(),
        builder: (controller){
          print (controller.deals.length);
          print (controller.fav.length);
         return ListView(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            physics: const BouncingScrollPhysics(),
            children: [
              verticalMediumSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 34.h,
                    width: 124.w,
                    decoration: BoxDecoration(
                        color: tomato,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                            bottomLeft: Radius.circular(25),
                            bottomRight: Radius.circular(15),
                            topRight: Radius.circular(50))),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10.w,
                        ),
                        Icon(Icons.location_on_outlined,color: Colors.white,),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "Oxford Street",
                          style:TextStyle(
                              fontWeight:FontWeight.w500,
                              fontSize: 11.sp,
                              color: Color(0xffFFFFFF)
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.black),
                        // boxShadow: [
                        //   BoxShadow(
                        //     color: Colors.grey.withOpacity(0.5),
                        //     spreadRadius: 1,
                        //     blurRadius: 5,
                        //     offset: const Offset(0, 3),
                        //   ),
                        // ],
                        borderRadius: BorderRadius.circular(25)),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.grey[200],
                    ),
                  )
                ],
              ),
              verticalLargeSpace,
              Text("Cart",style: TextStyle(color:Color(0xff424242),fontWeight: FontWeight.bold,fontSize: 15.sp ),),
              verticalMediumSpace,
              controller.fav.length!=0? Column(
                  children:List.generate(controller.deals.length, (index){
                    if (controller.fav[controller.deals[index].id]==true){
                     return Column(
                       children: [
                         Row(
                           // crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Container(
                               width: 57.w,
                               height: 50.h,
                               decoration: BoxDecoration(
                                   borderRadius: BorderRadius.circular(10),
                                   color:controller.deals[index].color
                               ),
                             ),
                             horizontalMediumSpace,
                             Column(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                                 Container(
                                     width:84.w,
                                     height:17.h,
                                     child: Text("${controller.deals[index].Name}",overflow: TextOverflow.ellipsis,style: TextStyle(color:Color(0xff2B3D54),fontSize: 12.sp,fontWeight:FontWeight.w500 ),)),
                                 verticalExtremeSmallSpace,
                                 Text("${controller.deals[index].CountPieces}",style: TextStyle(color:Color(0xff8D97A4),fontSize: 9.sp,fontWeight:FontWeight.w500),),
                                 verticalExtremeSmallSpace,
                                 Text("${controller.deals[index].totalprice}",style: TextStyle(color: Color(0xffB13E55),fontSize: 18.sp,fontWeight:FontWeight.w500,))
                               ],
                             ),
                             Spacer(),
                             InkWell(
                               onTap:(){
                                 setState(() {
                                   print ("controller.deals[index].count;${controller.deals[index].count--}");
                                   controller.deals[index].totalprice=controller.deals[index].Price*controller.deals[index].count;
                                 });
                               },
                               child: Center(
                                 child: Container(
                                     width: 33.w,
                                     height: 33.h,
                                     decoration: BoxDecoration(
                                         borderRadius: BorderRadius.circular(10),
                                         color: Color(0xffB0EAFD)
                                     ),
                                     child: Padding(
                                       padding:EdgeInsets.all(8.0.w),
                                       child: SvgPicture.asset("assets/Group 20787.svg"),
                                     )),
                               ),
                             ),
                             Padding(
                               padding: const EdgeInsets.only(left: 14,right: 14,top: 8,bottom: 8),
                               child: Text("${controller.deals[index].count}",style: TextStyle(color: Color(0xff424242),fontSize: 19,fontWeight: FontWeight.bold),),
                             ),
                             InkWell(
                               onTap:(){
                               setState(() {
                                 print ("controller.deals[index].count;${controller.deals[index].count++}");
                                 controller.deals[index].totalprice=controller.deals[index].Price*controller.deals[index].count;
                                 print ( controller.deals[index].totalprice);
                               });
                               },
                               child: Center(
                                 child: Container(
                                   width: 33.w,
                                   height: 33.h,
                                   decoration: BoxDecoration(
                                       borderRadius: BorderRadius.circular(10),
                                       color: Color(0xffB0EAFD)
                                   ),
                                   child:Padding(
                                     padding:EdgeInsets.all(8.0.h),
                                     child: SvgPicture.asset("assets/Group 20789.svg"),
                                   ),
                                 ),
                               ),
                             )
                           ],
                         ),
                         SizedBox(
                           height: 17.h,
                         )
                       ],
                     );
                   }
                    return const SizedBox();
                  }

                  )
              ):Center(child: Text("No record Found",style: TextStyle(color:Color(0xff424242),fontWeight: FontWeight.bold,fontSize: 15.sp ))),
            ],
          );
        },
      );
    });
    }
}
