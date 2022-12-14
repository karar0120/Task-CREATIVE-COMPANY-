import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:tet/Controller/GroceryController.dart';
import 'package:tet/Core/styles/Colors.dart';
import 'package:tet/Core/styles/GeneralConstants.dart';
import 'package:tet/Model/GroceryModel.dart';
import 'package:tet/View/GeneralComponents/GeneralComponents.dart';

import '../../Core/Network/NewtworkServer.dart';

class Grocery extends StatefulWidget {
  const Grocery({Key? key}) : super(key: key);

  @override
  State<Grocery> createState() => _GroceryState();
}

class _GroceryState extends State<Grocery> {
  @override
  Widget build(BuildContext context) {
    TextEditingController SearchController=TextEditingController();
    FocusNode SearchNode=FocusNode();
    return ScreenUtilInit(builder: (context, child) {
      return GetBuilder<GroceryController>(
        init: GroceryController(),
        builder: (controller){
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
                    width: 125.w,
                    decoration: BoxDecoration(
                        color: tomato,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25.r),
                            bottomLeft: Radius.circular(25.r),
                            bottomRight: Radius.circular(15.r),
                            topRight: Radius.circular(50.r))),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10.w,
                        ),
                        Icon(Icons.location_on_outlined,color:Colors.white),
                        SizedBox(
                          width: 5.w,
                        ),
                        Text(
                          "Mustafa st.",
                          style: TextStyle(
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
                        borderRadius: BorderRadius.circular(25.r)),
                    child: CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                    ),
                  )
                ],
              ),
              verticalMediumSpace,
              DefaultFormField(
                prefixIcon: Icon(Icons.search,color: Color(0xff444444),),
                onTap: (){},
                labeltext: 'Search in thousands of products',
                onSubmit: (){}, suffixPressed:(){},
                controller: SearchController, validate: (){}, type:TextInputType.text, focusNode: SearchNode, prefixPressed: (){}, onChange: (){} ,
              ),
              SizedBox(
                height: 10.h,
              ),
              SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:List.generate(controller.location.length, (index) {
                    return Row(
                      children: [
                        Container(
                          width: 167.w,
                          height: 49.h,
                          decoration: BoxDecoration(
                            border: Border.all(color: whiteColor2),
                            borderRadius: BorderRadius.circular(10.r),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(2),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Container(
                                  height: 38.h,
                                  width: 39.w,
                                  decoration: BoxDecoration(
                                    color: Color(0xffCCCCCC),
                                    border: Border.all(color: whiteColor2),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                        child: Text(
                                          controller.location[index].Mainlocation,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(color: Colors.black),
                                        )),
                                    SizedBox(width: 5.w,),
                                    Container(
                                      child: Text(
                                        controller.location[index].Address,
                                        textAlign: TextAlign.start,
                                        maxLines: 1,
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(
                                            color: Color(0xff474749),
                                            fontSize: 9.sp,
                                            fontWeight: FontWeight.w400),
                                      ), ),
                                    SizedBox(width: 5.w,),
                                    Container(
                                      child: Text(controller.location[index].StreetName,
                                          maxLines: 1,
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Color(0xff474749),
                                              fontSize: 9.sp,
                                              fontWeight: FontWeight.w400)),
                                    )
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        )
                      ],
                    );
                  })
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Explore by Category",style:TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 11.sp,
                      color: Color(0xff474749)
                  ),),
                  Text("See All (36)",style: TextStyle(
                    fontSize: 9.sp,
                    color: Color(0xff929294),
                    fontWeight: FontWeight.w500,
                  ),)
                ],
              ),
              SizedBox(
                height: 20.h,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  children: List.generate(controller.category.length, (index) {
                    return Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              width: 57.w,
                              height: 50.h,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color:controller.category[index].color,
                              ),
                            ),
                            SizedBox(
                              height: 5.h,
                            ),
                            Text(controller.category[index].CategoryName,style: TextStyle(color: Color(0xff474749),fontWeight:FontWeight.w500,fontSize: 10.sp ),),

                          ],
                        ),
                        SizedBox(
                          width:10.w,
                        )
                      ],
                    );
                  }),
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              const Text("Deals of the day",
                style: TextStyle(color: Color(0xff474749)),),
              SizedBox(
                height: 20.h,
              ),
              SingleChildScrollView(
                physics:const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children:List.generate(controller.deals.length, (index) {
                    return Row(
                      children: [
                        Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  width: 90.w,
                                  height: 90.w,
                                  decoration: BoxDecoration(
                                    color: controller.deals[index].color,
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 5,right: 5,top: 5),
                                  child: CircleAvatar(
                                    radius: 14.r,
                                    backgroundColor: whiteColor,
                                    child: InkWell(
                                      onTap:()async{
                                        if (controller.fav.containsKey(controller.deals[index].id)){
                                          controller.removeToSelectedPermissions(controller.deals[index].id);
                                        }else {
                                          controller.addToSelectedPermissions(controller.deals[index].id);
                                        }
                                      },
                                      child: Icon(
                                        controller.fav[controller.deals[index].id]==true?Icons.favorite:Icons.favorite_border,
                                        size: 15.w,color:controller.fav[controller.deals[index].id]==true?tomato:Colors.grey[400],),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 10.w,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(controller.deals[index].Name,style: TextStyle(fontSize: 10.sp,color: Color(0xff474749)),),
                                SizedBox(
                                  height: 5.w,
                                ),
                                Text(controller.deals[index].CountPieces,style: TextStyle(fontSize: 10.sp,color: Color(0xff474749),fontWeight: FontWeight.w500),),
                                SizedBox(
                                  height: 5.w,
                                ),
                                Row(
                                  children: [
                                    Icon(Icons.location_on_outlined,color:Colors.black,size: 12,),
                                    SizedBox(
                                      width: 3.w,
                                    ),
                                    Text(controller.deals[index].Time,style: TextStyle(fontSize: 10.sp,color: Color(0xff474749),fontWeight: FontWeight.w500),),
                                  ],
                                ),
                                SizedBox(
                                  height: 5.h,
                                ),
                                Row(
                                  children: [
                                    Text("\$ ${controller.deals[index].Price}",style: TextStyle(color: Color(0xffEE6A61,),fontSize: 13.sp),),
                                    SizedBox(
                                      width: 20.w,
                                    ),
                                    Text("\$ ${controller.deals[index].Discount}",style: TextStyle(decoration: TextDecoration.lineThrough,color: Color(0xff464646),fontSize: 13.sp,fontWeight:FontWeight.w300 ),)
                                  ],
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),

                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          width: 15.w,
                        )
                      ],
                    );
                  })
                ),
              ),
              SizedBox(
                height: 10.h,
              ),
              Container(
                width: 346.w,
                height: 131.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Color(0xffFEC8BD),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text("Mega",style: TextStyle(color: Color(0xffD03A27),fontSize: 11.sp,fontWeight: FontWeight.w500),),
                        RichText(
                          text: new TextSpan(
                            text: 'WHOPP',
                            style: TextStyle(
                              color: Color(0xff21114B),
                              fontWeight: FontWeight.bold,
                              fontSize: 31.sp,
                            ),
                            children: <TextSpan>[
                              new TextSpan(
                                text: 'E',
                                style: new TextStyle(
                                  color:Color(0xffD13A27) ,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 31.sp,
                                ),
                              ),
                              new TextSpan(
                                  text: 'R',
                                  style: TextStyle(
                                    color: Color(0xff21114B),
                                    fontWeight: FontWeight.bold,
                                    fontSize: 31.sp,
                                  )
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("\$ 17",style: TextStyle(color: Color(0xffEE6A61,),fontSize: 18.sp,fontWeight: FontWeight.bold),),
                            SizedBox(
                              width: 20.w,
                            ),
                            Text("\$ 32",style: TextStyle(decoration: TextDecoration.lineThrough,color: Color(0xffFFFFFF),fontSize: 18.sp,fontWeight:FontWeight.w300 ),)
                          ],
                        ),
                        Text("* Available until 24 December 2020")
                      ],
                    ),
                  ),
                ),
              )
            ],
          );
        }
      );
    });
  }
}
