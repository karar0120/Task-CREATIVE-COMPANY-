import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:tet/Controller/HomeViewModel.dart';
import 'package:tet/Core/styles/Colors.dart';

import 'Core/Network/NewtworkServer.dart';
import 'Core/styles/GeneralConstants.dart';
import 'Core/styles/Themes.dart';
import 'View/Main Screen/price.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferenceUtils.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Task',
      theme: lightThemeApp,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeViewModel>(
      init: HomeViewModel(),
      builder: (controller) => Scaffold(
        body: SafeArea(child: controller.Pages[controller.naviagatorValue]),
        bottomNavigationBar: bottomNavigationBar(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xffD93E11),
            onPressed: () {
              Navigator.push(context,MaterialPageRoute(builder: (context)=>Price()));
            },
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text("19\$"),
                ),
                SvgPicture.asset("assets/Group 20775.svg"),
              ],
            )),
      ),
    );
  }

  Widget bottomNavigationBar() {
    return GetBuilder<HomeViewModel>(
      init: HomeViewModel(),
      builder: (controller) => ScreenUtilInit(
        builder: (context, child) {
          return Container(
            decoration: BoxDecoration(
              color: whiteColor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(15.r),
                topLeft: Radius.circular(15.r),
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5.r,
                  blurRadius: 7.r,
                  offset: const Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            // padding: const EdgeInsets.only(top: 6),
            child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15.r),
                  topLeft: Radius.circular(15.r),
                ),
                child: BottomNavigationBar(
                    backgroundColor: whiteColor,
                    elevation: 0.0,
                    iconSize: 0.07.sw,
                    showSelectedLabels: false,
                    showUnselectedLabels: false,
                    items: [
                      BottomNavigationBarItem(
                        icon: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: controller.naviagatorValue == 0
                                  ? tomato.withOpacity(0.2)
                                  : Colors.transparent),
                          child: SvgPicture.asset(
                            'assets/Group 20748.svg',
                            width: 0.065.sw,
                            color: controller.naviagatorValue == 0
                                ? tomato
                                : Color(0xff949494),
                          ),
                        ),
                        label: "",
                      ),
                      BottomNavigationBarItem(
                          icon: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: controller.naviagatorValue == 1
                                    ? tomato.withOpacity(0.2)
                                    : Colors.transparent),
                            child: SvgPicture.asset(
                              'assets/Group 16107.svg',
                              width: 0.065.sw,
                              color: controller.naviagatorValue == 1
                                  ? tomato
                                  : Color(0xff949494),
                            ),
                          ),
                          label: ""),
                      BottomNavigationBarItem(icon: SizedBox(), label: ""),
                      BottomNavigationBarItem(
                          icon: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: controller.naviagatorValue == 3
                                    ? tomato.withOpacity(0.2)
                                    : Colors.transparent),
                            child: SvgPicture.asset(
                              'assets/Group 16103.svg',
                              width: 0.065.sw,
                              color: controller.naviagatorValue == 3
                                  ? tomato
                                  : Color(0xff949494),
                            ),
                          ),
                          label: ""),
                      BottomNavigationBarItem(
                          icon: Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: controller.naviagatorValue == 4
                                    ? tomato.withOpacity(0.2)
                                    : Colors.transparent),
                            child: Icon(
                              Icons.wallet,
                              size: 0.065.sw,
                              color: controller.naviagatorValue == 4
                                  ? tomato
                                  : Color(0xff949494),
                            ),
                          ),
                          label: "")
                    ],
                    currentIndex: controller.naviagatorValue,
                    onTap: (index) {
                      if (index!=2){
                        controller.changeSelectedValue(index);
                      }
                    })),
          );
        },
      ),
    );
  }
}
