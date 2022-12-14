import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../Core/styles/Colors.dart';
import '../../Core/styles/GeneralConstants.dart';

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}

void navigateTo(context, Widget) => Navigator.push(
  context,
  MaterialPageRoute(
    builder: (context) => Widget,
  ),
);

class DefaultFormField extends StatelessWidget {
  String labeltext;
  ScrollController? scrollController;
  TextEditingController controller;
  TextInputType type;
  Function onSubmit;
  Function onChange;
  Function onTap;
  bool obscureText = false;
  Function validate;
  String? hintText;
  String?suffixText;
  Widget? prefixIcon;
  Function prefixPressed;
  Widget? suffixIcon;
  Color suffixColor;
  int? maxlines;
  Color prefixColor;
  dynamic? initialValue;
  Function suffixPressed;
  bool isClickable = true;
  bool readOnly = false;
  bool autoFocus = false;
  FocusNode? focusNode;
  bool removeBorder;
  double height;
  double? width;
  bool? timepickerfree;
  EdgeInsetsGeometry? contentPadding;
  TextInputAction?keyboardType;
  List<TextInputFormatter>? inputFormate;
  DefaultFormField(
      {Key? key,
        this.scrollController,
        this.keyboardType,
        required this.labeltext,
        required this.controller,
        required this.type,
        required this.onSubmit,
        required this.onChange,
        this.suffixText,
        required this.focusNode,
        required this.onTap,
        this.removeBorder = true,
        this.obscureText = false,
        this.timepickerfree=true,
        required this.validate,
        this.inputFormate,
        this.prefixColor = greenBlue,
        // required this.hintText,
        this.prefixIcon,
        required this.prefixPressed,
        this.suffixIcon,
        this.suffixColor = greenBlue,
        required this.suffixPressed,
        this.isClickable = true,
        this.readOnly = false,

        this.contentPadding,
        this.initialValue,
        this.height=10,
        this.width,
        this.maxlines,
        this.hintText,
        this.autoFocus = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45.h,
      width: double.infinity,
      child: InkWell(
        onTap: isClickable == false
            ? () {
          onTap();
        }
            : null,
        child: Container(
          alignment: AlignmentDirectional.center,
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
          decoration: removeBorder
              ? BoxDecoration(
            //color: Colors.white,
            // border: Border.all(color: whiteColor2),
            // // boxShadow: [
            // //   BoxShadow(
            // //     color: Colors.grey.withOpacity(0.5),
            // //     spreadRadius: 1,
            // //     blurRadius: 5,
            // //     offset: const Offset(0, 3),
            // //   ),
            // // ],
            // borderRadius: BorderRadius.circular(6)
          )
              : null,
          child: Align(
            alignment: Alignment.centerLeft,
            child: TextFormField(
              key: key,
              inputFormatters: inputFormate,
              scrollController: scrollController,
              textInputAction:keyboardType??TextInputAction.done,
              maxLines: maxlines,
              autofocus: autoFocus,
              controller: controller,
              focusNode: focusNode,
              keyboardType: type,
              obscureText: obscureText,
              readOnly: readOnly,
              enabled: isClickable,
              initialValue: initialValue,
              onFieldSubmitted: (val) {
                onSubmit();
              },
              onChanged: (val) {
                onChange();
              },
              onTap: () {
                onTap();
              },
              validator: (val) {
                validate;
              },
              cursorColor: tomato,
              decoration: InputDecoration(
                  suffixText:suffixText,
                  suffixStyle: TextStyle(
                      color:Color(0xFF4F4F4F),
                      fontSize: 14,
                      fontFamily: 'Circular Std Font'),
                  labelText: labeltext,
                  hintText: hintText,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11.r),
                    borderSide: BorderSide(
                      //color: Colors.red,
                      color: whiteColor2,
                      // width: 2.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11.r),
                    borderSide: BorderSide(
                      color: whiteColor2,
                      // width: 1.0,
                    ),
                  ),
                  prefixIcon: prefixIcon != null
                      ? IconButton(
                    icon: prefixIcon!,
                    onPressed: () {
                      prefixPressed();
                    },
                  )
                      : null,
                  suffixIcon: suffixIcon != null
                      ? IconButton(
                    onPressed: () {
                      suffixPressed();
                    },
                    icon: suffixIcon!,
                  )
                      : null,
                  hintStyle: textFieldHintStyle,
                  labelStyle: TextStyle(
                      color: Color(0xff474749),
                      fontSize: 11.sp,fontWeight: FontWeight.w500),
                  fillColor: Colors.white,
                  filled: removeBorder ? true : false,
                  errorStyle: const TextStyle(color: Color(0xFF4F4F4F)),
                  //floatingLabelBehavior: FloatingLabelBehavior.never,
                  contentPadding: const EdgeInsets.only(
                      right: 10, left: 10, bottom: 10, top: 10)),
              style: TextStyle(
                  color:(readOnly==true&&timepickerfree==false)?Color(0xFFBDBDBD):Color(0xFF4F4F4F),
                  fontSize: 14,
                  fontFamily: 'Circular Std Font'),
            ),
          ),
        ),
      ),
    );
  }
}

//
// class TextForm extends StatelessWidget {
//   @override
//   String labeltext;
//   TextEditingController controller;
//   TextInputType type;
//   Function onSubmit;
//   Function onChange;
//   Function onTap;
//   bool obscureText = false;
//   Function validate;
//   //String hintText;
//   Widget? prefixIcon;
//   Function prefixPressed;
//   Widget? suffixIcon;
//   Color suffixColor;
//   int ?maxlines;
//   Color prefixColor;
//   String? initialValue;
//   Function suffixPressed;
//   bool isClickable = true;
//   bool readOnly = false;
//   bool autoFocus = false;
//   FocusNode? focusNode;
//   bool removeBorder;
//   double height;
//   double? width;
//   EdgeInsetsGeometry? contentPadding;
//   TextForm(
//       {Key? key,
//         required this.labeltext,
//         required this.controller,
//         required this.type,
//         required this.onSubmit,
//         required this.onChange,
//         required this.focusNode,
//         required this.onTap,
//         this.removeBorder = true,
//         this.obscureText = false,
//         required this.validate,
//         this.prefixColor = greenBlue,
//         //required this.hintText,
//         this.prefixIcon,
//         required this.prefixPressed,
//         this.suffixIcon,
//         this.suffixColor = greenBlue,
//         required this.suffixPressed,
//         this.isClickable = true,
//         this.readOnly = false,
//         this.contentPadding,
//         this.initialValue,
//         this.height = 45,
//         this.width,
//         this.maxlines,
//         this.autoFocus = false})
//       : super(key: key);
//
//
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: height,
//       width: width,
//       child: InkWell(
//         onTap: isClickable == false
//             ? () {
//           onTap();
//         }
//             : null,
//         child: Container(
//           alignment: AlignmentDirectional.center,
//           padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 4),
//           decoration:  BoxDecoration(
//               color: Colors.white,
//               // border: Border.all(color: whiteColor2),
//               // boxShadow: [
//               //   BoxShadow(
//               //     color: Colors.grey.withOpacity(0.5),
//               //     spreadRadius: 1,
//               //     blurRadius: 5,
//               //     offset: const Offset(0, 3),
//               //   ),
//               // ],
//               //borderRadius: BorderRadius.circular(6)
//
//           ),
//           child: Align(
//             alignment: Alignment.centerLeft,
//             child: TextFormField(
//               maxLines:maxlines ,
//               autofocus: autoFocus,
//               controller: controller,
//               focusNode: focusNode,
//               keyboardType: type,
//               obscureText: obscureText,
//               readOnly: readOnly,
//               enabled: isClickable,
//               initialValue: initialValue,
//               onFieldSubmitted: (val) {
//                 onSubmit();
//               },
//               onChanged: (val) {
//                 onChange();
//               },
//               onTap: () {
//                 onTap();
//               },
//               validator: (val) {
//                 validate;
//               },
//               cursorColor: greenBlue,
//               decoration: InputDecoration(
//                   labelText:labeltext,
//                   //hintText: hintText,
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(6.0),
//                     borderSide: BorderSide(
//                       //color: Colors.red,
//                       color: whiteColor2,
//                       width: 2.0,
//                     ),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                       borderRadius:BorderRadius.circular(6),
//                     borderSide: BorderSide(
//                       color: whiteColor2,
//                       width: 2.0,
//                     ),
//                   ),
//                   prefixIcon: prefixIcon != null
//                       ? IconButton(
//                     icon: prefixIcon!,
//                     onPressed: () {
//                       prefixPressed();
//                     },
//                   )
//                       : null,
//                   suffixIcon: suffixIcon != null
//                       ? IconButton(
//                     onPressed: () {
//                       suffixPressed();
//                     },
//                     icon: suffixIcon!,
//                   )
//                       : null,
//                   hintStyle: textFieldHintStyle,
//                   labelStyle: TextStyle(
//                       color: isClickable ? Colors.grey[400] : greenBlue,
//                       fontSize: 14),
//                   fillColor: Colors.white,
//                   filled: removeBorder?true:false,
//                   errorStyle: const TextStyle(color: Color(0xFF4F4F4F)),
//                   //floatingLabelBehavior: FloatingLabelBehavior.never,
//                   contentPadding: const EdgeInsets.only(left: 10,top: 10,right: 10)
//               ),
//               style: const TextStyle(
//                   color: Color(0xFF4F4F4F),
//                   fontSize: 14,
//                   fontFamily: 'Almarai-Bold'),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//

// class SpacificDefaultFormField extends StatelessWidget {
//   TextEditingController controller;
//   TextInputType type;
//   Function onSubmit;
//   Function onChange;
//   Function onTap;
//   bool obscureText = false;
//   Function validate;
//   String hintText;
//   Widget? prefixIcon;
//   Function prefixPressed;
//   Widget? suffixIcon;
//   Color suffixColor;
//   TextInputAction?keyboardType;
//   int? maxLenght;
//   Color prefixColor;
//   String? initialValue;
//   Function suffixPressed;
//   bool isClickable = true;
//   bool readOnly = false;
//   bool autoFocus = false;
//   FocusNode? focusNode;
//   bool removeBorder;
//   double height;
//   EdgeInsetsGeometry? contentPadding;
//
//
//   SpacificDefaultFormField(
//       {Key? key,
//         required this.controller,
//         required this.type,
//         required this.onSubmit,
//         required this.onChange,
//         required this.focusNode,
//         required this.onTap,
//         this.removeBorder = true,
//         this.obscureText = false,
//         required this.validate,
//         this.prefixColor = greenBlue,
//         required this.hintText,
//         this.prefixIcon,
//         required this.prefixPressed,
//         this.suffixIcon,
//         this.suffixColor = greenBlue,
//         required this.suffixPressed,
//         this.isClickable = true,
//         this.readOnly = false,
//         this.contentPadding,
//         this.initialValue,
//         this.height = 45,
//         this.keyboardType,
//         this.maxLenght,
//         this.autoFocus = false})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final userDataController = Provider.of<UserDataController>(context);
//     print("search lamgg${userDataController.langg}");
//     if (userDataController.langg == null) {
//       userDataController.langg = "en";
//     }
//     return SizedBox(
//       height: 45,
//       child: InkWell(
//         onTap: isClickable == false
//             ? () {
//           onTap();
//         }
//             : null,
//         child: Container(
//           alignment: AlignmentDirectional.center,
//           padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 4),
//           decoration: removeBorder
//               ? BoxDecoration(
//               color: Colors.white,
//               border: Border.all(color: whiteColor2),
//               // boxShadow: [
//               //   BoxShadow(
//               //     color: Colors.grey.withOpacity(0.5),
//               //     spreadRadius: 1,
//               //     blurRadius: 5,
//               //     offset: const Offset(0, 3),
//               //   ),
//               // ],
//               borderRadius: userDataController.langg == 'ar'
//                   ? const BorderRadius.only(
//                 bottomRight: Radius.circular(6),
//                 topRight: Radius.circular(6),
//               )
//                   : const BorderRadius.only(
//                 bottomLeft: Radius.circular(6),
//                 topLeft: Radius.circular(6),
//               ))
//               : null,
//           child: TextFormField(
//             // maxLength: maxLenght,
//             textAlign: TextAlign.center,
//             autofocus: autoFocus,
//             controller: controller,
//             focusNode: focusNode,
//             keyboardType: type,
//             obscureText: obscureText,
//             readOnly: readOnly,
//             enabled: isClickable,
//             textInputAction: keyboardType??TextInputAction.done,
//             initialValue: initialValue,
//             onFieldSubmitted: (val) {
//               onSubmit();
//             },
//             onChanged: (val) {
//               onChange();
//             },
//             onTap: () {
//               onTap();
//             },
//             validator: (val) {
//               validate;
//             },
//             cursorColor: greenBlue,
//             decoration: InputDecoration(
//               // labelText: label,
//                 hintText: hintText,
//                 border: InputBorder.none,
//                 prefixIcon: prefixIcon != null
//                     ? IconButton(
//                   icon: prefixIcon!,
//                   onPressed: () {
//                     prefixPressed();
//                   },
//                 )
//                     : null,
//                 suffixIcon: suffixIcon != null
//                     ? IconButton(
//                   onPressed: () {
//                     suffixPressed();
//                   },
//                   icon: suffixIcon!,
//                 )
//                     : null,
//                 hintStyle: textFieldHintStyle,
//                 labelStyle: TextStyle(
//                     color: isClickable ? Colors.grey[400] : greenBlue,
//                     fontSize: 12),
//                 fillColor: Colors.white,
//                 filled: true,
//                 errorStyle: const TextStyle(color: Color(0xFF4F4F4F)),
//                 floatingLabelBehavior: FloatingLabelBehavior.never,
//                 contentPadding:
//                 contentPadding ?? const EdgeInsets.only(top: 10)),
//             style: const TextStyle(
//                 color: Color(0xFF4F4F4F),
//                 fontSize: 12,
//                 fontFamily: 'Almarai-Bold'),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
// class SpeicalDefaultFormField extends StatelessWidget {
//   String? labeltext;
//   TextEditingController controller;
//   TextInputType type;
//   Function onSubmit;
//   Function onChange;
//   Function onTap;
//   bool obscureText = false;
//   Function validate;
//   String hintText;
//   Widget? prefixIcon;
//   Function prefixPressed;
//   Widget? suffixIcon;
//   Color suffixColor;
//   int? maxlines;
//   Color prefixColor;
//   String? initialValue;
//   Function suffixPressed;
//   bool isClickable = true;
//   bool readOnly = false;
//   bool autoFocus = false;
//   FocusNode? focusNode;
//   bool removeBorder;
//   double height;
//   double? width;
//   EdgeInsetsGeometry? contentPadding;
//
//   SpeicalDefaultFormField(
//       {Key? key,
//         this.labeltext,
//         required this.controller,
//         required this.type,
//         required this.onSubmit,
//         required this.onChange,
//         required this.focusNode,
//         required this.onTap,
//         this.removeBorder = true,
//         this.obscureText = false,
//         required this.validate,
//         this.prefixColor = greenBlue,
//         required this.hintText,
//         this.prefixIcon,
//         required this.prefixPressed,
//         this.suffixIcon,
//         this.suffixColor = greenBlue,
//         required this.suffixPressed,
//         this.isClickable = true,
//         this.readOnly = false,
//         this.contentPadding,
//         this.initialValue,
//         this.height = 45,
//         this.width,
//         this.maxlines,
//         this.autoFocus = false})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: height,
//       width: width,
//       child: InkWell(
//         onTap: isClickable == false
//             ? () {
//           onTap();
//         }
//             : null,
//         child: Container(
//           alignment: AlignmentDirectional.center,
//           padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 4),
//           decoration: removeBorder
//               ? BoxDecoration(
//               color: Colors.white,
//               border: Border.all(color: whiteColor2),
//               // boxShadow: [
//               //   BoxShadow(
//               //     color: Colors.grey.withOpacity(0.5),
//               //     spreadRadius: 1,
//               //     blurRadius: 5,
//               //     offset: const Offset(0, 3),
//               //   ),
//               // ],
//               borderRadius: BorderRadius.circular(6))
//               : null,
//           child: Align(
//             alignment: Alignment.centerLeft,
//             child: TextFormField(
//               maxLines: maxlines,
//               autofocus: autoFocus,
//               controller: controller,
//               focusNode: focusNode,
//               keyboardType: type,
//               obscureText: obscureText,
//               readOnly: readOnly,
//               enabled: isClickable,
//               initialValue: initialValue,
//
//               onFieldSubmitted: (val) {
//                 onSubmit();
//               },
//               onChanged: (val) {
//                 onChange();
//               },
//               onTap: () {
//                 onTap();
//               },
//               validator: (val) {
//                 validate;
//               },
//               cursorColor: greenBlue,
//
//               decoration: InputDecoration(
//                   labelText: labeltext,
//                   hintText: hintText,
//                   border: InputBorder.none,
//                   prefixIcon: prefixIcon != null
//                       ? IconButton(
//                     icon: prefixIcon!,
//                     onPressed: () {
//                       prefixPressed();
//                     },
//                   )
//                       : null,
//                   suffixIcon: suffixIcon != null
//                       ? IconButton(
//                     onPressed: () {
//                       suffixPressed();
//                     },
//                     icon: suffixIcon!,
//                   )
//                       : null,
//                   hintStyle: textFieldHintStyle,
//                   labelStyle: TextStyle(
//                       color: isClickable ? Colors.grey[400] : greenBlue,
//                       fontSize: 14),
//                   fillColor: Colors.white,
//                   filled: true,
//                   errorStyle: const TextStyle(color: Color(0xFF4F4F4F)),
//                   floatingLabelBehavior: FloatingLabelBehavior.never,
//                   contentPadding:
//                   contentPadding ?? const EdgeInsets.only(top: 10)),
//               style: const TextStyle(
//                   color: Color(0xFF4F4F4F),
//                   fontSize: 14,
//                   fontFamily: 'Almarai-Bold'),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// class FormFieldErrors extends StatelessWidget {
//   String invalidStringKey;
//   bool isValided;
//
//   FormFieldErrors({Key key, this.invalidStringKey, this.isValided})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 10),
//       child: Visibility(
//         visible: isValided,
//         child: Align(
//           alignment: AlignmentDirectional.centerEnd,
//           child: Padding(
//             padding: const EdgeInsets.only(
//                 left: 8.0, right: 8.0),
//             child: Text(
//               '$invalidStringKey',
//               style: TextStyle(
//                   color: Colors.red[300],
//                   fontFamily: "Almarai-Regular",
//                   fontSize: 11),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

class GeneralAppBar extends StatelessWidget with PreferredSizeWidget {
  Widget? title;
  double? leadingWidth;
  bool? centerTitle;
  Color? appBarColor;
  Widget? leading;
  List<Widget>? actions;
  double? elevation=0.0;
  double? appbarPreferredSize;
  Color? appbarBackButtonColor;

  GeneralAppBar(
      {Key? key,
        this.title,
        this.leadingWidth,
        this.centerTitle,
        this.appBarColor,
        this.leading,
        this.actions,
        this.appbarPreferredSize = 80,
        this.elevation,
        this.appbarBackButtonColor = whiteColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (ctx, child) {
        return AppBar(
          automaticallyImplyLeading: false,
          leadingWidth: leadingWidth,
          backgroundColor: appBarColor ?? greenBlue,
          centerTitle: centerTitle ?? false,
          title: title,
          elevation: elevation,
          leading: leading ??
              InkWell(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: appbarBackButtonColor,
                    size: 18,
                  )),
          actions: actions,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(25),
            ),
          ),
        );
      },
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(appbarPreferredSize ?? kToolbarHeight);
}

class GeneralButton extends StatelessWidget {
  double width;
  double height;
  double radius;
  Color buttonBackgroundColor;
  Color? borderColor;
  String title;

  GeneralButton({
    Key? key,
    this.width = double.infinity,
    this.height = 45,
    this.radius = 6,
    this.buttonBackgroundColor = greenBlue,
    this.borderColor,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        border: Border.all(color: borderColor ?? buttonBackgroundColor),
        color: buttonBackgroundColor,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Center(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 14,
            color: borderColor ?? Colors.white,
          ),
        ),
      ),
    );
  }
}

// class SpacificGeneralButton extends StatelessWidget {
//   double width;
//   double height;
//   double radius;
//   Color buttonBackgroundColor;
//   Color? borderColor;
//
//   //String title;
//   Widget iconortitle;
//
//   SpacificGeneralButton(
//       {Key? key,
//         this.width = double.infinity,
//         this.height = 45,
//         this.radius = 6,
//         this.buttonBackgroundColor = greenBlue,
//         this.borderColor,
//         //required this.title,
//         required this.iconortitle})
//       : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final userDataController = Provider.of<UserDataController>(context);
//
//     return Container(
//       width: width,
//       height: height,
//       decoration: BoxDecoration(
//         borderRadius: userDataController.langg == 'ar'
//             ? const BorderRadius.only(
//             bottomLeft: Radius.circular(6), topLeft: Radius.circular(6))
//             : const BorderRadius.only(
//             bottomRight: Radius.circular(6), topRight: Radius.circular(6)),
//         border: Border.all(color: borderColor ?? buttonBackgroundColor),
//         color: buttonBackgroundColor,
//         boxShadow: [
//           BoxShadow(
//             color: Colors.grey.withOpacity(0.3),
//             spreadRadius: 2,
//             blurRadius: 5,
//             offset: const Offset(0, 3), // changes position of shadow
//           ),
//         ],
//       ),
//       child: Center(child: iconortitle
//         // child:   Text(
//         //   title,
//         //   style: TextStyle(
//         //     fontSize: 12,
//         //     color: borderColor ?? Colors.white,
//         //   ),
//         // ),
//       ),
//     );
//   }
// }

class DefaultTextButton extends StatelessWidget {
  String title;
  Widget? screen;
  Color?color;
  bool isFinish;
  GestureTapCallback?ontap;
  double? fontSize;
  FontWeight? fontWeight;
  AlignmentDirectional align;

  DefaultTextButton(
      {Key? key,
        required this.title,
        this.screen,
        this.fontSize,
        this.fontWeight,
        this.color,
        this.ontap,
        this.isFinish = false,
        this.align = AlignmentDirectional.centerEnd})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: align,
      child: GestureDetector(
        key: key,
        onTap: ontap,
        child: Text(
          key:key,
          title,
          style: TextStyle(
            color:color??greenBlue,
            fontFamily: 'Almarai-Regular',
            fontWeight: fontWeight ?? FontWeight.w500,
            fontSize: fontSize ?? 15,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}
//
// class LanguagePopUpMenuItem extends StatefulWidget {
//   const LanguagePopUpMenuItem({Key? key}) : super(key: key);
//
//   @override
//   _LanguagePopUpMenuItemState createState() => _LanguagePopUpMenuItemState();
// }
//
// class _LanguagePopUpMenuItemState extends State<LanguagePopUpMenuItem> {
//   @override
//   Widget build(BuildContext context) {
//     final userDataController = Provider.of<UserDataController>(context);
//     return ScreenUtilInit(
//       builder: (BuildContext ctx, child) {
//         return PopupMenuButton(
//           icon: SvgPicture.asset("assets/language.svg",
//               color: greenBlue, height: 0.05.sw),
//           onSelected: (value) {
//             userDataController.changeCurrentLanguage(context, value);
//           },
//           itemBuilder: (context) => [
//             PopupMenuItem(
//               value: 'ar',
//               child: Text("${AppLocalizations.of(context)!.trans("ar")}"),
//             ),
//             PopupMenuItem(
//               value: 'en',
//               child: Text("${AppLocalizations.of(context)!.trans("en")}"),
//             ),
//           ],
//         );
//       },
//     );
//   }
// }
//
// class GeneralBottomNavigationBar extends StatefulWidget {
//   const GeneralBottomNavigationBar({Key? key}) : super(key: key);
//
//   @override
//   _GeneralBottomNavigationBarState createState() =>
//       _GeneralBottomNavigationBarState();
// }
//
// class _GeneralBottomNavigationBarState extends State<GeneralBottomNavigationBar> {
//   @override
//   Widget build(BuildContext context) {
//     return Consumer<ChangeIndexController>(
//         builder: (context, changeIndexController, child) {
//           return Container(
//             decoration: BoxDecoration(
//               color: whiteColor,
//               borderRadius: const BorderRadius.only(
//                 topRight: Radius.circular(15),
//                 topLeft: Radius.circular(15),
//               ),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.grey.withOpacity(0.5),
//                   spreadRadius: 5,
//                   blurRadius: 7,
//                   offset: const Offset(0, 3), // changes position of shadow
//                 ),
//               ],
//             ),
//             // padding: const EdgeInsets.only(top: 6),
//             child: ClipRRect(
//               borderRadius: const BorderRadius.only(
//                 topRight: Radius.circular(15),
//                 topLeft: Radius.circular(15),
//               ),
//               child: BottomNavigationBar(
//                 backgroundColor: whiteColor,
//                 elevation: 0.0,
//                 iconSize: 0.07.sw,
//                 currentIndex: changeIndexController.index,
//                 showSelectedLabels: false,
//                 showUnselectedLabels: false,
//                 items: [
//                   BottomNavigationBarItem(
//                       icon: Container(
//                         padding: const EdgeInsets.all(8),
//                         decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: changeIndexController.index == 0
//                                 ? greenBlue.withOpacity(0.2)
//                                 : Colors.transparent),
//                         child: SvgPicture.asset(
//                           'assets/homeIcon.svg',
//                           width: 0.065.sw,
//                         ),
//                       ),
//                       label: ''),
//                   BottomNavigationBarItem(
//                       icon: Container(
//                           padding: const EdgeInsets.all(8),
//                           decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: changeIndexController.index == 1
//                                   ? greenBlue.withOpacity(0.2)
//                                   : Colors.transparent),
//                           child: SvgPicture.asset(
//                             'assets/calendarIcon.svg',
//                             width: 0.065.sw,
//                           )),
//                       label: ''),
//                   BottomNavigationBarItem(
//                       icon: Container(
//                         padding: const EdgeInsets.all(8),
//                         decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: changeIndexController.index == 2
//                                 ? greenBlue.withOpacity(0.2)
//                                 : Colors.transparent),
//                         child: SvgPicture.asset(
//                           'assets/clientGroupIcon.svg',
//                           width: 0.065.sw,
//                         ),
//                       ),
//                       label: ''),
//                   BottomNavigationBarItem(
//                       icon: Container(
//                           padding: const EdgeInsets.all(8),
//                           decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: changeIndexController.index == 3
//                                   ? greenBlue.withOpacity(0.2)
//                                   : Colors.transparent),
//                           child: SvgPicture.asset(
//                             'assets/moneyIcon.svg',
//                             width: 0.065.sw,
//                           )),
//                       label: ""),
//                   BottomNavigationBarItem(
//                       icon: Container(
//                           padding: const EdgeInsets.all(8),
//                           decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: changeIndexController.index == 4
//                                   ? greenBlue.withOpacity(0.2)
//                                   : Colors.transparent),
//                           child: SvgPicture.asset(
//                             'assets/reportIcon.svg',
//                             width: 0.065.sw,
//                           )),
//                       label: ""),
//                   BottomNavigationBarItem(
//                       icon: Container(
//                           padding: const EdgeInsets.all(8),
//                           decoration: BoxDecoration(
//                               shape: BoxShape.circle,
//                               color: changeIndexController.index == 5
//                                   ? greenBlue.withOpacity(0.2)
//                                   : Colors.transparent),
//                           child: Stack(
//                             alignment: AlignmentDirectional.center,
//                             children: [
//                               SvgPicture.asset(
//                                 'assets/settingIcon.svg',
//                                 width: 0.065.sw,
//                               ),
//                               Container(
//                                 height: 0.015.sw,
//                                 width: 0.015.sw,
//                                 decoration: const BoxDecoration(
//                                     color: tealish, shape: BoxShape.circle),
//                               )
//                             ],
//                           )),
//                       label: ""),
//                 ],
//                 onTap: (index) {
//                   changeIndexController.changeIndexFunction(index);
//                 },
//               ),
//             ),
//           );
//         });
//   }
// }

void showCustomBottomSheet
    (BuildContext context, {required Widget bottomSheetContent, required double bottomSheetHeight}) {
  showModalBottomSheet(
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20.0))),
      isScrollControlled: true,
      backgroundColor: Colors.white,

      context: context,
      builder: (context) {
        return ScreenUtilInit(
          builder: (ctx, child) {
            return SizedBox(
              height: bottomSheetHeight.sh,
              child: Stack(
                children: [
                  Positioned(
                    right: 0.4.sw,
                    left: 0.4.sw,
                    top: 10,
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: 5,
                      decoration: BoxDecoration(
                          color: pinkishGrey,
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                  bottomSheetContent
                ],
              ),
            );
          },
        );
      });
}

class GeneralButtonWithIcon extends StatelessWidget {
  Widget? icon;
  Widget? title;
  Color? color;
  Color? borderColor;
  double? elevation;

  GeneralButtonWithIcon(
      {Key? key,
        this.title,
        this.icon,
        this.color,
        this.borderColor,
        this.elevation})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: color ?? greenBlue,
      borderRadius: BorderRadius.circular(6),
      elevation: elevation!,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
            color: color ?? greenBlue,
            borderRadius: BorderRadius.circular(6),
            border: Border.all(color: borderColor!)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon!,
            const SizedBox(
              width: 4,
            ),
            title!
          ],
        ),
      ),
    );
  }
}
//
// class CustomDropDown extends StatefulWidget {
//   dynamic value;
//   String? hint;
//   double? Height;
//   bool isReadOnly=false;
//   String labelText;
//   TextStyle? hintStyle;
//   ScrollController? SearchScroll;
//   String? errorText;
//   Color? IconColor;
//   bool? enableSearch=false;
//   bool Function(DropdownMenuItem item,String )?SearchFunction;
//   List<DropdownMenuItem>? items;
//   ValueChanged<dynamic>? onChanged;
//   TextEditingController? SearchController;
//   Widget? leading;
//   dynamic Width;
//   bool? isLeading = false;
//   CustomDropDown(
//       {Key? key,
//         this.IconColor,
//         this.isLeading,
//         this.value,
//         this.hint,
//         this.hintStyle,
//         this.items,
//         this.leading,
//         this.isReadOnly=false,
//         this.onChanged,
//         this.Width,
//         this.SearchScroll,
//         this.errorText,
//         this.SearchController,
//         this.SearchFunction,
//         this.enableSearch,
//         this.Height,
//         required this.labelText})
//       : super(key: key);
//
//   @override
//   State<CustomDropDown> createState() => _CustomDropDownState();
// }
//
// class _CustomDropDownState extends State<CustomDropDown> {
//   @override
//   Widget build(BuildContext context) {
//     return InkWell(
//       child: Container(
//         height: 45,
//         width: widget.Width,
//         decoration: BoxDecoration(
//           color: Colors.white,
//           //border: Border.all(color: whiteColor2),
//           // boxShadow: [
//           //   BoxShadow(
//           //     color: Colors.grey.withOpacity(0.5),
//           //     spreadRadius: 1,
//           //     blurRadius: 5,
//           //     offset: const Offset(0, 3),
//           //   ),
//           // ],
//           //borderRadius: BorderRadius.circular(6)
//         ),
//         child: Row(
//           children: [
//             // widget.isLeading == true
//             //     ? const SizedBox(
//             //         width: 20,
//             //       )
//             //     : const SizedBox(),
//             // widget.isLeading == true
//             //     ? widget.leading ?? SvgPicture.asset("assets/industry.svg")
//             //     : const SizedBox(),
//             Flexible(
//               child: DropdownButtonFormField2<dynamic>(
//                 key:widget.key,
//                 // scrollbarAlwaysShow: true,
//
//                 // //value: widget.value,
//                 // buttonHeight: 100,
//                 // buttonWidth: 400,
//                 //itemHeight:40,
//                 dropdownMaxHeight:widget.Height??300 ,
//                 // dropdownWidth:300,
//                 //dropdownColor: Colors.white,
//                 decoration: InputDecoration(
//                   prefixIcon:widget.isLeading==true? widget.leading != null
//                       ? IconButton(
//                     icon: widget.leading!,
//                     onPressed: () {
//                       //widget.leading();
//                     },
//                   )
//                       : null:null,
//                   labelText: widget.labelText,
//                   enabledBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(6.0),
//                     borderSide: BorderSide(
//                       //color: Colors.red,
//                       color: whiteColor2,
//                       // width: 2.0,
//                     ),
//                   ),
//                   focusedBorder: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(6),
//                     borderSide: BorderSide(
//                       color: whiteColor2,
//                       // width: 1.0,
//                     ),
//                   ),
//                   border: OutlineInputBorder(
//                       borderRadius: BorderRadius.circular(5.0)),
//                   contentPadding: EdgeInsets.all(10),
//                   labelStyle: TextStyle(
//                     color: Colors.grey[400],
//                     fontSize: 14,
//                   ),
//                 ),
//                 // value: value,
//                 focusColor: Colors.white,
//                 style: titleSmallStyle,
//                 // value: value,
//                 hint:widget.hint!=null? Text(
//                   widget.hint!,
//                   style:widget.isReadOnly==true?textFieldHintStyle:widget.hintStyle!,
//                   maxLines: 2,
//                   overflow: TextOverflow.ellipsis,
//                 ):null,
//                 items:widget.isReadOnly==false? widget.items!:[],
//                 onChanged: widget.onChanged,
//                 isExpanded: true,
//                 searchController:widget.SearchController,
//                 searchInnerWidget:widget.enableSearch==true? Padding(
//                   padding: const EdgeInsets.only(
//                     top: 8,
//                     bottom: 4,
//                     right: 8,
//                     left: 8,
//                   ),
//                   child: SingleChildScrollView(
//                     child: Column(
//                       children: [
//                         TextFormField(
//                           //scrollController:widget.SearchScroll,
//                           controller:widget.SearchController,
//                           decoration: InputDecoration(
//                               helperMaxLines: 1,
//                               //isDense: true,
//                               contentPadding: const EdgeInsets.symmetric(
//                                 horizontal: 10,
//                                 vertical: 8,
//                               ),
//                               hintStyle:textFieldHintStyle,
//                               hintText: "${AppLocalizations.of(context)!.trans("Search")}",
//                               border:InputBorder.none
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ):SizedBox(),
//                 //itemHeight: 10,
//                 onMenuStateChange: (isOpen) {
//                   if (!isOpen) {
//                     widget.SearchController?.clear();
//                   }
//                 },
//                 searchMatchFn: widget.SearchFunction,
//                 //underline: const SizedBox(),
//                 icon:widget.isReadOnly==true?SvgPicture.asset("assets/dropDownIcon.svg",color:Color(0xFFBDBDBD)):SvgPicture.asset("assets/dropDownIcon.svg"),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class CustomDropDownMulti extends StatefulWidget {
//   dynamic value;
//   String? hint;
//   String labelText;
//   TextStyle? hintStyle;
//   String? errorText;
//   List<DropdownMenuItem>? items;
//   ValueChanged<dynamic>? onChanged;
//   Widget? leading;
//   dynamic Width;
//   bool? isLeading = false;
//   CustomDropDownMulti(
//       {Key? key,
//         this.isLeading,
//         this.value,
//         this.hint,
//         this.hintStyle,
//         this.items,
//         this.leading,
//         this.onChanged,
//         this.Width,
//         this.errorText,
//         required this.labelText})
//       : super(key: key);
//
//   @override
//   State<CustomDropDownMulti> createState() => _CustomDropDownMultiState();
// }
//
// class _CustomDropDownMultiState extends State<CustomDropDownMulti> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 45,
//       width: widget.Width,
//       decoration: BoxDecoration(
//         color: Colors.white,
//         //border: Border.all(color: whiteColor2),
//         // boxShadow: [
//         //   BoxShadow(
//         //     color: Colors.grey.withOpacity(0.5),
//         //     spreadRadius: 1,
//         //     blurRadius: 5,
//         //     offset: const Offset(0, 3),
//         //   ),
//         // ],
//         //borderRadius: BorderRadius.circular(6)
//       ),
//       child: Row(
//         children: [
//           // widget.isLeading == true
//           //     ? const SizedBox(
//           //         width: 20,
//           //       )
//           //     : const SizedBox(),
//           // widget.isLeading == true
//           //     ? widget.leading ?? SvgPicture.asset("assets/industry.svg")
//           //     : const SizedBox(),
//           Flexible(
//             child: DropDownMultiSelect(
//               onChanged: (List<String>x){},
//               //value: widget.value,
//               //dropdownColor: Colors.white,
//               selectedValues: [],
//               decoration: InputDecoration(
//                 prefixIcon:widget.isLeading==true? widget.leading != null
//                     ? IconButton(
//                   icon: widget.leading!,
//                   onPressed: () {
//                     //widget.leading();
//                   },
//                 )
//                     : null:null,
//                 labelText: widget.labelText,
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(6.0),
//                   borderSide: BorderSide(
//                     //color: Colors.red,
//                     color: whiteColor2,
//                     // width: 2.0,
//                   ),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(6),
//                   borderSide: BorderSide(
//                     color: whiteColor2,
//                     // width: 1.0,
//                   ),
//                 ),
//                 border: OutlineInputBorder(
//                     borderRadius: BorderRadius.circular(5.0)),
//                 contentPadding: EdgeInsets.all(10),
//                 labelStyle: TextStyle(
//                   color: Colors.grey[400],
//                   fontSize: 14,
//                 ),
//               ),
//               // value: value,
//               //focusColor: Colors.white,
//               //style: titleSmallStyle,
//               // value: value,
//               hint:widget.hint!=null? Text(
//                 widget.hint!,
//                 style: widget.hintStyle!,
//                 overflow: TextOverflow.ellipsis,
//               ):null,
//               options: widget.items!,
//               //onChanged: widget.onChanged,
//               //isExpanded: true,
//               //underline: const SizedBox(),
//               icon: SvgPicture.asset("assets/dropDownIcon.svg"),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class CustomDropDownSearch extends StatefulWidget {
//   dynamic value;
//   String? hint;
//   TextStyle? hintStyle;
//   String? errorText;
//   List<DropdownMenuItem>? items;
//   ValueChanged<dynamic>? onChanged;
//   Widget? leading;
//   dynamic Width;
//   bool? isLeading = false;
//
//   CustomDropDownSearch(
//       {Key? key,
//         this.isLeading,
//         this.value,
//         this.hint,
//         this.hintStyle,
//         this.items,
//         this.leading,
//         this.onChanged,
//         this.Width,
//         this.errorText})
//       : super(key: key);
//
//   @override
//   State<CustomDropDownSearch> createState() => _CustomDropDownSearchState();
// }
//
// class _CustomDropDownSearchState extends State<CustomDropDownSearch> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 45,
//       width: widget.Width,
//       decoration: BoxDecoration(
//         //color: Colors.white,
//           border: Border.all(color: whiteColor2),
//           // boxShadow: [
//           //   BoxShadow(
//           //     color: Colors.grey.withOpacity(0.5),
//           //     spreadRadius: 1,
//           //     blurRadius: 5,
//           //     offset: const Offset(0, 3),
//           //   ),
//           // ],
//           borderRadius: BorderRadius.circular(6)),
//       child: Row(
//         children: [
//           widget.isLeading == true
//               ? const SizedBox(
//             width: 20,
//           )
//               : const SizedBox(),
//           widget.isLeading == true
//               ? widget.leading ?? SvgPicture.asset("assets/industry.svg")
//               : const SizedBox(),
//           Flexible(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
//               child: SearchChoices.single(
//                 searchFn: () {},
//                 keyboardType: TextInputType.name,
//                 items: widget.items!,
//                 //dialogBox: false,
//                 //value: v,
//                 hint: Text(
//                   widget.hint!,
//                   style: widget.hintStyle!,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//                 searchHint: "Select one",
//                 onChanged: widget.onChanged,
//                 isExpanded: true,
//                 //dropdownColor: Colors.white,
//                 // value: value,
//                 //focusColor: Colors.white,
//                 style: titleSmallStyle,
//                 // menuConstraints: BoxConstraints(
//                 //   maxWidth: 400,
//                 //   maxHeight: 100
//                 // ),
//                 // value: value,
//                 // hint: Text(
//                 //   widget.hint!,
//                 //   style: widget.hintStyle!,
//                 //   overflow: TextOverflow.ellipsis,
//                 // ),
//                 //items: widget.items!,
//                 //onChanged: widget.onChanged,
//                 //isExpanded: true,
//                 underline: const SizedBox(),
//                 icon: SvgPicture.asset("assets/dropDownIcon.svg"),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// class SpecialCustomDropDown extends StatefulWidget {
//   dynamic value;
//   String? hint;
//   TextStyle? hintStyle;
//   String? errorText;
//   List<DropdownMenuItem>? items;
//   ValueChanged<dynamic>? onChanged;
//   Widget? leading;
//   dynamic Width;
//   bool? isLeading = false;
//
//   SpecialCustomDropDown(
//       {Key? key,
//         this.isLeading,
//         this.value,
//         this.hint,
//         this.hintStyle,
//         this.items,
//         this.leading,
//         this.onChanged,
//         this.Width,
//         this.errorText})
//       : super(key: key);
//
//   @override
//   State<SpecialCustomDropDown> createState() => _SpecialCustomDropDownState();
// }
//
// class _SpecialCustomDropDownState extends State<SpecialCustomDropDown> {
//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 45,
//       width: widget.Width,
//       // decoration: BoxDecoration(
//       //     color: Colors.white,
//       //     border: Border.all(color: whiteColor2),
//       //     // boxShadow: [
//       //     //   BoxShadow(
//       //     //     color: Colors.grey.withOpacity(0.5),
//       //     //     spreadRadius: 1,
//       //     //     blurRadius: 5,
//       //     //     offset: const Offset(0, 3),
//       //     //   ),
//       //     // ],
//       //     borderRadius: BorderRadius.circular(6)
//       // ),
//       child: Row(
//         children: [
//           widget.isLeading == true
//               ? const SizedBox(
//             width: 20,
//           )
//               : const SizedBox(),
//           widget.isLeading == true
//               ? widget.leading ?? SvgPicture.asset("assets/industry.svg")
//               : const SizedBox(),
//           Flexible(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
//               child: DropdownButton<dynamic>(
//                 dropdownColor: Colors.white,
//                 // value: value,
//                 focusColor: Colors.white,
//                 style: titleSmallStyle,
//                 // value: value,
//                 hint: Text(
//                   widget.hint!,
//                   style: widget.hintStyle!,
//                   overflow: TextOverflow.ellipsis,
//                 ),
//                 items: widget.items!,
//                 onChanged: widget.onChanged,
//                 isExpanded: true,
//                 underline: const SizedBox(),
//                 icon: SvgPicture.asset("assets/dropDownIcon.svg"),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

//
// class CustommultiselectDropDown extends StatefulWidget {
//   dynamic value;
//   String? hint;
//   TextStyle? hintStyle;
//   String? errorText;
//   List<MultiSelectItem>? items;
//   Function(List) onChanged;
//   Widget? leading;
//   dynamic Width;
//   bool ?isLeading=false;
//
//   CustommultiselectDropDown(
//       {Key? key,
//         this.isLeading,
//         this.value,
//         this.hint,
//         this.hintStyle,
//         this.items,
//         this.leading,
//         this.onChanged,
//         this.Width,
//         this.errorText})
//       : super(key: key);
//
//   @override
//   State<CustommultiselectDropDown> createState() => _CustommultiselectDropDownState();
// }
//
// class _CustommultiselectDropDownState extends State<CustommultiselectDropDown> {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 45,
//       width: widget.Width,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           border: Border.all(color: whiteColor2),
//           // boxShadow: [
//           //   BoxShadow(
//           //     color: Colors.grey.withOpacity(0.5),
//           //     spreadRadius: 1,
//           //     blurRadius: 5,
//           //     offset: const Offset(0, 3),
//           //   ),
//           // ],
//           borderRadius: BorderRadius.circular(6)),
//       child: Row(
//         children: [
//
//           widget.isLeading==true?  const SizedBox(
//             width: 20,
//           ):SizedBox(),
//           widget.isLeading==true? widget.leading ?? SvgPicture.asset("assets/industry.svg"):SizedBox(),
//           Flexible(
//             child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
//               child:MultiSelectDialogField(
//                 //dropdownColor: Colors.white,
//                 // value: value,
//                 title: Text("Animals"),
//                 //focusColor: Colors.white,
//                 selectedColor: greenBlue,
//                 //style: titleSmallStyle,
//                 // value: value,
//                 // hint: Text(
//                 //   widget.hint!,
//                 //   style: widget.hintStyle!,
//                 //   overflow: TextOverflow.ellipsis,
//                 // ),
//                 items: widget.items!,
//                 onConfirm: widget.onChanged,
//                // isExpanded: true,
//                // underline: const SizedBox(),
//                // icon: SvgPicture.asset("assets/dropDownIcon.svg"),
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
//
// showAlertDialog(BuildContext context,
//     {required Widget alertTitle, required String content, onOk}) {
//   // set up the button
//   Widget okButton = TextButton(
//     child: Text(
//       "${AppLocalizations.of(context)!.trans("ok")}",
//       style: const TextStyle(
//           color: Colors.black,
//           fontFamily: "CairoBold",
//           fontSize: 14,
//           fontWeight: FontWeight.bold),
//     ),
//     style: ButtonStyle(backgroundColor: MaterialStateProperty.all(greenBlue)),
//     onPressed: onOk ??
//             () {
//           Navigator.pop(context);
//         },
//   );
//
//   // set up the AlertDialog
//   AlertDialog alert = AlertDialog(
//     title: alertTitle,
//     content: Text(
//       content,
//       textAlign: TextAlign.center,
//       style: TextStyle(
//           fontFamily: "CairoBold",
//           fontSize: 16,
//           color: Theme.of(context).colorScheme.secondary),
//     ),
//     actions: [
//       Padding(
//         padding: const EdgeInsets.all(25.0),
//         child: okButton,
//       ),
//     ],
//   );
//
//   // show the dialog
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return alert;
//     },
//   );
// }
//
// showAlertDialogContinue(BuildContext context,
//     {required Widget alertTitle,
//       required String content,
//       onOk,
//       required VoidCallback Continue}) {
//   // set up the button
//
//   Widget okButton = TextButton(
//     child: Text(
//       "${AppLocalizations.of(context)!.trans("cancel")}",
//       style: const TextStyle(
//           color: warmGrey2,
//           fontFamily: "CairoBold",
//           fontSize: 14,
//           fontWeight: FontWeight.bold),
//     ),
//     style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.transparent)),
//     onPressed: onOk ??
//             () {
//           Navigator.pop(context);
//         },
//   );
//   Widget ContinueButton = TextButton(
//     child: Text(
//       "${AppLocalizations.of(context)!.trans("Continue")}",
//       style: const TextStyle(
//           color: Colors.black,
//           fontFamily: "CairoBold",
//           fontSize: 14,
//           fontWeight: FontWeight.bold),
//     ),
//     style: ButtonStyle(backgroundColor: MaterialStateProperty.all(greenBlue)),
//     onPressed: Continue,
//   );
//   // set up the AlertDialog
//   AlertDialog alert = AlertDialog(
//     //title: alertTitle,
//     content: Text(
//       content,
//       textAlign: TextAlign.center,
//       style:
//       TextStyle(fontFamily: "CairoBold", fontSize: 16, color: Colors.black),
//     ),
//     actions: [
//       Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: okButton,
//       ),
//       Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: ContinueButton,
//       ),
//     ],
//   );
//   // show the dialog
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return alert;
//     },
//   );
// }
//
// showAlertDialogYESNO(BuildContext context,
//     {required Widget alertTitle,
//       required String content,
//       onOk,
//       required  Continue}) {
//   // set up the button
//
//   Widget okButton = TextButton(
//     child: Text(
//       "${AppLocalizations.of(context)!.trans("No")}",
//       style: const TextStyle(
//           color: warmGrey2,
//           fontFamily: "CairoBold",
//           fontSize: 14,
//           fontWeight: FontWeight.bold),
//     ),
//     style: ButtonStyle(backgroundColor: MaterialStateProperty.all(Colors.transparent)),
//     onPressed: onOk ??
//             () {
//           Navigator.pop(context);
//         },
//   );
//   Widget ContinueButton = TextButton(
//     child: Text(
//       "${AppLocalizations.of(context)!.trans("Yes")}",
//       style: const TextStyle(
//           color: Colors.black,
//           fontFamily: "CairoBold",
//           fontSize: 14,
//           fontWeight: FontWeight.bold),
//     ),
//     style: ButtonStyle(backgroundColor: MaterialStateProperty.all(greenBlue)),
//     onPressed: Continue,
//   );
//   // set up the AlertDialog
//   AlertDialog alert = AlertDialog(
//     //title: alertTitle,
//     content: Text(
//       content,
//       textAlign: TextAlign.center,
//       style: TextStyle(
//           fontFamily: "CairoBold",
//           fontSize: 16,
//           color: Theme.of(context).colorScheme.secondary),
//     ),
//     actions: [
//       Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: okButton,
//       ),
//       //horizontalMediumSpace,
//       Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: ContinueButton,
//       ),
//     ],
//   );
//   // show the dialog
//   showDialog(
//     context: context,
//     builder: (BuildContext context) {
//       return alert;
//     },
//   );
// }

void showSnack({
  msg,
  required BuildContext context,
  var scaffoldKey,
  fullHeight,
  marginBottom,
  isFloating = false,
  Color? color,
}) {
  var _snackBar = SnackBar(
      behavior: isFloating ? SnackBarBehavior.floating : SnackBarBehavior.fixed,
      backgroundColor: color ?? const Color(0xffff1e1e).withOpacity(0.7),
      margin: EdgeInsets.fromLTRB(4, 0, 4, marginBottom ?? 5),
      content: SizedBox(
        height: fullHeight ?? 89,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
                child: Text(
                  "$msg",
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontFamily: "Almarai-Bold"),
                  maxLines: null,
                )),
            fullHeight == null
                ? const SizedBox(
              height: 60.0,
            )
                : const SizedBox()
          ],
        ),
      ));

  scaffoldKey.currentState.showSnackBar(_snackBar);
}

enum ErrorAnimationProp { offset }
//
// class ShakingErrorText extends StatelessWidget {
//   final ShakingErrorController controller;
//   final int timesToShake;
//   final MultiTween<ErrorAnimationProp> _tween;
//
//   ShakingErrorText({
//     required this.controller,
//     this.timesToShake = 4,
//   }) : _tween = MultiTween<ErrorAnimationProp>() {
//     List.generate(
//         timesToShake,
//             (_) => _tween
//           ..add(ErrorAnimationProp.offset, Tween<double>(begin: 0, end: 10),
//               const Duration(milliseconds: 100))
//           ..add(ErrorAnimationProp.offset, Tween<double>(begin: 10, end: -10),
//               const Duration(milliseconds: 100))
//           ..add(ErrorAnimationProp.offset, Tween<double>(begin: -10, end: 0),
//               const Duration(milliseconds: 100)));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider<ShakingErrorController>.value(
//       value: controller,
//       child: Consumer<ShakingErrorController>(
//         builder: (context, errorController, child) {
//           return CustomAnimation<MultiTweenValues<ErrorAnimationProp>>(
//             control: errorController.controlSignal,
//             curve: Curves.easeOut,
//             duration: _tween.duration,
//             tween: _tween,
//             animationStatusListener: (status) {
//               if (status == AnimationStatus.forward) {
//                 controller.onAnimationStarted();
//               }
//             },
//             builder: (BuildContext context, Widget? child, tweenValues) {
//               return Transform.translate(
//                 offset: Offset(tweenValues.get(ErrorAnimationProp.offset), 0),
//                 child: child,
//               );
//             },
//             child: Visibility(
//               visible: controller.isVisible && controller.isMounted,
//               maintainSize: controller.isMounted,
//               maintainAnimation: controller.isMounted,
//               maintainState: controller.isMounted,
//               child: Text(errorController.errorText,
//                   textAlign: TextAlign.start,
//                   style: const TextStyle(color: Colors.red)),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
//
// class BottomSheet1 extends StatelessWidget {
//   BottomSheet1({Key? key}) : super(key: key);
//   List names = [];
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         Text(
//           'New Session',
//           style: TextStyle(
//             fontWeight: FontWeight.w800,
//             fontSize: 20.sp,
//             color: const Color(0xffabd1d0),
//           ),
//         ),
//         Row(
//           children: [
//             Text(
//               'Date:',
//               style: TextStyle(
//                   fontWeight: FontWeight.w800,
//                   fontSize: 15.sp,
//                   color: Colors.black54),
//             ),
//             SizedBox(
//               width: 2.w,
//             ),
//             const TextField(),
//             IconButton(
//                 onPressed: () {},
//                 icon: const Icon(
//                   Icons.calendar_today_outlined,
//                   color: Color(0xffabd1d0),
//                 )),
//           ],
//         ),
//         Row(
//           children: [
//             Text(
//               'Services:',
//               style: TextStyle(
//                   fontWeight: FontWeight.w800,
//                   fontSize: 15.sp,
//                   color: Colors.black54),
//             ),
//             DropdownButton(
//               underline: const SizedBox(),
//               hint: Text(
//                 'Hair cut',
//                 style: TextStyle(fontSize: 15.sp, color: Colors.grey),
//               ),
//               iconSize: 16.sp,
//               icon: const Icon(
//                 Icons.keyboard_arrow_down,
//                 color: Color(0xffABD1D0),
//               ),
//               borderRadius: BorderRadius.circular(15),
//               isExpanded: true,
//               value: names,
//               onChanged: (newValue) {},
//               items: names
//                   .map((value) => DropdownMenuItem(
//                 child: Text(value),
//                 value: value,
//               ))
//                   .toList(),
//             ),
//           ],
//         ),
//         Row(
//           children: [
//             Text(
//               'Client',
//               style: TextStyle(
//                   fontWeight: FontWeight.w800,
//                   fontSize: 15.sp,
//                   color: Colors.black54),
//             ),
//             DropdownButton(
//               underline: const SizedBox(),
//               hint: Text(
//                 'Asmaa Mahmoud',
//                 style: TextStyle(fontSize: 15.sp, color: Colors.grey),
//               ),
//               iconSize: 16.sp,
//               icon: const Icon(
//                 Icons.keyboard_arrow_down,
//                 color: Color(0xffABD1D0),
//               ),
//               borderRadius: BorderRadius.circular(15),
//               isExpanded: true,
//               value: names,
//               onChanged: (newValue) {},
//               items: names
//                   .map((value) => DropdownMenuItem(
//                 child: Text(value),
//                 value: value,
//               ))
//                   .toList(),
//             ),
//           ],
//         ),
//         Row(
//           children: [
//             Text(
//               'Staff:',
//               style: TextStyle(
//                   fontWeight: FontWeight.w800,
//                   fontSize: 15.sp,
//                   color: Colors.black54),
//             ),
//             CircleAvatar(
//               radius: 2.w,
//               backgroundColor: Colors.teal,
//             ),
//             DropdownButton(
//               underline: const SizedBox(),
//               hint: Text(
//                 'Alyaa Mohammed',
//                 style: TextStyle(fontSize: 15.sp, color: Colors.grey),
//               ),
//               iconSize: 16.sp,
//               icon: const Icon(
//                 Icons.keyboard_arrow_down,
//                 color: Color(0xffABD1D0),
//               ),
//               borderRadius: BorderRadius.circular(15),
//               isExpanded: true,
//               value: names,
//               onChanged: (newValue) {},
//               items: names
//                   .map((value) => DropdownMenuItem(
//                 child: Text(value),
//                 value: value,
//               ))
//                   .toList(),
//             ),
//           ],
//         ),
//         Row(
//           children: [
//             Text(
//               'Service price ',
//               style: TextStyle(
//                 fontWeight: FontWeight.w800,
//                 fontSize: 15.sp,
//                 color: Colors.black54,
//               ),
//             ),
//             Text(
//               ' 20\$',
//               style: TextStyle(
//                 fontWeight: FontWeight.w800,
//                 fontSize: 15.sp,
//                 color: Colors.grey,
//               ),
//             ),
//             SizedBox(
//               width: 5.w,
//             ),
//             Text(
//               'Discount ',
//               style: TextStyle(
//                 fontWeight: FontWeight.w800,
//                 fontSize: 15.sp,
//                 color: Colors.black54,
//               ),
//             ),
//             const TextField(
//               decoration: InputDecoration(
//                 hintText: '20 \$',
//                 hintStyle: TextStyle(color: Colors.grey),
//               ),
//             )
//           ],
//         ),
//         Row(
//           children: [
//             Text(
//               'Tax ',
//               style: TextStyle(
//                 fontWeight: FontWeight.w800,
//                 fontSize: 15.sp,
//                 color: Colors.black54,
//               ),
//             ),
//             Text(
//               ' 20\$',
//               style: TextStyle(
//                 fontWeight: FontWeight.w800,
//                 fontSize: 15.sp,
//                 color: Colors.grey,
//               ),
//             ),
//           ],
//         ),
//         Row(
//           children: [
//             Text(
//               'Total price ',
//               style: TextStyle(
//                 fontWeight: FontWeight.w800,
//                 fontSize: 15.sp,
//                 color: Colors.black54,
//               ),
//             ),
//             Text(
//               ' 20\$ ',
//               style: TextStyle(
//                 fontWeight: FontWeight.w800,
//                 fontSize: 15.sp,
//                 color: Colors.grey,
//               ),
//             ),
//             SizedBox(
//               width: 3.w,
//             ),
//             Text(
//               '  Paid: ',
//               style: TextStyle(
//                 fontWeight: FontWeight.w800,
//                 fontSize: 15.sp,
//                 color: Colors.black54,
//               ),
//             ),
//             const TextField(
//               decoration: InputDecoration(
//                 hintText: '0 \$',
//                 hintStyle: TextStyle(color: Colors.grey),
//               ),
//             )
//           ],
//         ),
//         Row(
//           children: [
//             Text(
//               'Notes:',
//               style: TextStyle(
//                 fontWeight: FontWeight.w800,
//                 fontSize: 15.sp,
//                 color: Colors.black54,
//               ),
//             ),
//             const TextField(
//               maxLines: 2,
//             ),
//           ],
//         ),
//         Row(
//           children: [
//             Text(
//               'Status:  ',
//               style: TextStyle(
//                   fontWeight: FontWeight.w800,
//                   fontSize: 15.sp,
//                   color: Colors.black54),
//             ),
//             DropdownButton(
//               underline: const SizedBox(),
//               hint: Text(
//                 'New',
//                 style: TextStyle(fontSize: 15.sp, color: Colors.grey),
//               ),
//               iconSize: 16.sp,
//               icon: const Icon(
//                 Icons.keyboard_arrow_down,
//                 color: Color(0xffABD1D0),
//               ),
//               borderRadius: BorderRadius.circular(15),
//               isExpanded: true,
//               value: names,
//               onChanged: (newValue) {},
//               items: names
//                   .map((value) => DropdownMenuItem(
//                 child: Text(value),
//                 value: value,
//               ))
//                   .toList(),
//             ),
//           ],
//         ),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: [
//             GestureDetector(
//               onTap: () {},
//               child: Container(
//                 decoration: BoxDecoration(
//                   color: const Color(0xffabd1d0),
//                   borderRadius: BorderRadius.circular(5),
//                 ),
//                 child: Center(
//                   child: Text(
//                     'Cancel',
//                     style: TextStyle(
//                       fontWeight: FontWeight.w800,
//                       fontSize: 20.sp,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             GestureDetector(
//               onTap: () {},
//               child: Container(
//                 decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(5),
//                     border: Border.all(color: Colors.red, width: 1.w)),
//                 child: Center(
//                   child: Text(
//                     'Cancel',
//                     style: TextStyle(
//                       fontWeight: FontWeight.w800,
//                       fontSize: 20.sp,
//                       color: Colors.red,
//                     ),
//                   ),
//                 ),
//               ),
//             )
//           ],
//         )
//       ],
//     );
//   }
// }
//
// Widget Nointernetconnected(context){
//   return Center(
//     child: Container(
//       color: backgroundColor,
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           SvgPicture.asset('assets/interneterror.svg',height:150 ),
//           verticalLargeSpace,
//           Text("${AppLocalizations.of(context)!.trans("No internet connection")}"),
//         ],
//       ),
//     ),
//
//   );
// }
//
//
// class ModalDropDown extends StatefulWidget {
//   @override
//   _ModalDropDownState createState() => _ModalDropDownState();
// }
//
// class _ModalDropDownState extends State<ModalDropDown> {
//   @override
//   Widget build(BuildContext context) {
//     final user= Provider.of<UserDataController>(context);
//     return Column(
//       children: [
//         TextButton(onPressed: (){
//           showCountrySelectorBottomSheet(context,user.allCountries.map<DropdownMenuItem<CountryModel>>((CountryModel value){
//             return DropdownMenuItem<CountryModel>(
//               value: value,
//               child:user.langs=='en'? Text(value.name):Text(value.nameAr!),
//             );
//           }).toList(),);
//         }, child: Text("Textsssa"))
//       ],
//     );
//   }
// //
// // // final duplicateItems = List<CountryModel>.generate(10000, (i) => "$i");
// // // var items = <CountryModel>[];
// // //
// // // void filterSearchResults(String query) {
// // //  final user= Provider.of<UserDataController>(context,listen: false);
// // //   List<CountryModel> dummySearchList = <CountryModel>[];
// // //   dummySearchList.addAll(user.allCountries);
// // //   if(query.isNotEmpty) {
// // //     List<CountryModel> dummyListData = <CountryModel>[];
// // //     dummySearchList.forEach((item) {
// // //       if(item.contains(query)) {
// // //         dummyListData.add(item);
// // //       }
// // //     });
// // //     setState(() {
// // //       items.clear();
// // //       items.addAll(dummyListData);
// // //     });
// // //     return;
// // //   } else {
// // //     setState(() {
// // //       items.clear();
// // //       items.addAll(duplicateItems);
// // //     });
// // //   }
// // // }
// // // void findPersonUsingWhere(String personName) {
// // //   final foundPeople = people.where((element) {
// // //     final booktitle=element.nameAr!.toLowerCase();
// // //     final input=personName.toLowerCase();
// // //     return booktitle.contains(input);
// // //   }).toList();
// // //   setState(() {
// // //     people=foundPeople;
// // //     print (people.length);
// // //   });
// // //   if (foundPeople.isNotEmpty) {
// // //     print('Using where: ${foundPeople.first.name}');
// // //   }
// // // }
// // CountryModel? selected;
// //
// // // Widget buildSheet(BuildContext context) {
// // //   return StatefulBuilder(builder: (BuildContext context, setState) {
// // //     final user = Provider.of<UserDataController>(context, listen: false);
// // //     TextEditingController Search = TextEditingController();
// // //     return GestureDetector(
// // //       behavior: HitTestBehavior.opaque,
// // //       onTap: () {
// // //         Navigator.of(context).pop();
// // //       },
// // //       child: DraggableScrollableSheet(
// // //         builder: (context, controller) =>
// // //             Container(
// // //               padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
// // //               decoration: BoxDecoration(
// // //                 color: Colors.white,
// // //                 borderRadius: BorderRadius.vertical(
// // //                   top: Radius.circular(20),
// // //                 ),
// // //               ),
// // //               child: Column(
// // //                 children: [
// // //                   Padding(
// // //                     padding: EdgeInsets.only(bottom: 10),
// // //                     child: TextFormField(
// // //                       controller: Search,
// // //                       keyboardType: TextInputType.name,
// // //                       style: TextStyle(fontSize: 16),
// // //                       decoration: InputDecoration(
// // //                         border: OutlineInputBorder(
// // //                             borderRadius: BorderRadius.circular(7)),
// // //                         contentPadding: EdgeInsets.only(top: 10),
// // //                         hintText: 'Search',
// // //                         prefixIcon: Icon(Icons.access_alarm),
// // //                       ),
// // //                       onChanged: (value) {
// // //                         user.allCountriesdafound = user.allCountriesda
// // //                             .where((city) =>
// // //                             city.name.toLowerCase().contains(value))
// // //                             .toList();
// // //                       },
// // //                     ),
// // //                   ),
// // //                 ],
// // //               ),
// // //             ),
// // //       ),
// // //     );
// // //   });
// // // }
// //
// //
// // Widget buildSheet(BuildContext context) {
// //   final user = Provider.of<UserDataController>(context, listen: false);
// //       TextEditingController Search = TextEditingController();
// //   return StatefulBuilder(builder: (BuildContext context, setState) {
// //     return GestureDetector(
// //       behavior: HitTestBehavior.opaque,
// //       onTap: () {
// //         Navigator.of(context).pop();
// //       },
// //       child: DraggableScrollableSheet(
// //         initialChildSize: 0.9,
// //         builder: (_, controller) => Container(
// //           padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
// //           decoration: BoxDecoration(
// //             color: Colors.white,
// //             borderRadius: BorderRadius.vertical(
// //               top: Radius.circular(20),
// //             ),
// //           ),
// //           child: Column(
// //             children: [
// //               Divider(
// //                 thickness: 4,
// //                 color: Colors.grey.shade300,
// //                 endIndent: 170,
// //                 indent: 170,
// //               ),
// //               Padding(
// //                 padding: EdgeInsets.only(bottom: 15, top: 5),
// //                 child: Text("Select city",
// //                     style: TextStyle(
// //                         fontSize: 18,
// //                         color: Colors.black,
// //                         fontWeight: FontWeight.bold)),
// //               ),
// //               Padding(
// //                 padding: EdgeInsets.only(bottom: 10),
// //                 child: TextFormField(
// //                   controller: Search,
// //                   keyboardType: TextInputType.name,
// //                   style: TextStyle(fontSize: 16),
// //                   decoration: InputDecoration(
// //                     border: OutlineInputBorder(
// //                         borderRadius: BorderRadius.circular(7)),
// //                     contentPadding: EdgeInsets.only(top: 10),
// //                     hintText: 'Search',
// //                     prefixIcon: Icon(Icons.access_alarm),
// //                   ),
// //                   onChanged: (value) {
// //                     setState(() {
// //                       user.allCountriesdafound = user.allCountriesda
// //                           .where((city) =>
// //                           city.name.toLowerCase().contains(value.toLowerCase()))
// //                           .toList();
// //                     });
// //                   },
// //                 ),
// //               ),
// //               Expanded(
// //                 child: user.allCountriesdafound.isNotEmpty
// //                     ? ListView.builder(
// //                   itemCount: user.allCountriesdafound.length,
// //                   itemBuilder: (context, index) {
// //                     final city = user.allCountriesdafound[index];
// //                     return ListTile(
// //                       title: Text(city.name),
// //                       onTap: () {
// //                         Navigator.of(context).pop();
// //                         setState(() {
// //                           selected = city;
// //                         });
// //                       },
// //                     );
// //                   },
// //                 )
// //                     : Padding(
// //                   padding: EdgeInsets.only(top: 50),
// //                   child: Text(
// //                     "No data.",
// //                     style: TextStyle(fontSize: 16),
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   });
// // }
// //
// //
// // void showModal(context) {
// //   final user = Provider.of<UserDataController>(context, listen: false);
// //   TextEditingController Search = TextEditingController();
// //   Search.clear();
// //   showModalBottomSheet(
// //       context: context,
// //       builder: (context) {
// //         return StatefulBuilder(builder: (BuildContext context, setState) {
// //           return SingleChildScrollView(
// //             physics: BouncingScrollPhysics(),
// //             child: Column(
// //               children: [
// //                 TextFormField(
// //                   controller: Search,
// //                   onChanged: (value) {
// //                     setState(() {
// //                       user.allCountriesdafound = user.allCountriesda
// //                           .where((city) =>
// //                           city.name.toLowerCase().contains(
// //                               value.toLowerCase()))
// //                           .toList();
// //                     });
// //                   },
// //                 ),
// //                 Container(
// //                   padding: EdgeInsets.all(8),
// //                   height: 600,
// //                   alignment: Alignment.center,
// //                   child: ListView.separated(
// //                       physics: BouncingScrollPhysics(),
// //                       itemCount: user.allCountriesdafound.length,
// //                       separatorBuilder: (context, int) {
// //                         return Divider();
// //                       },
// //                       itemBuilder: (context, index) {
// //                         final city = user.allCountriesdafound[index];
// //                         return GestureDetector(
// //                             behavior: HitTestBehavior.opaque,
// //                             child: Text(city.name),
// //                             onTap: () {
// //                               Navigator.of(context).pop();
// //                               setState(() {
// //                                 selected = city;
// //                               });
// //                               user.setSelectedCountry(
// //                                   user.allCountriesda[index]);
// //                               setState(() {
// //                                 _selected = user.allCountriesda[index].name;
// //                               });
// //                               print(user.allCountriesda[index].id);
// //                               Navigator.of(context).pop();
// //                             }
// //                         );
// //                       }
// //                   ),
// //                 ),
// //               ],
// //             ),
// //           );
// //         });
// //       }
// //   );
// // }
// //
// //
// // List<String> animalNames = ['Elephant', 'Tiger', 'Kangaroo'];
// // List<String> animalFamily = ['Elephantidae', 'Panthera', 'Macropodidae'];
// // List<String> animalLifeSpan = ['60-70', '8-10', '15-20'];
// // List<String> animalWeight = ['2700-6000', '90-310', '47-66'];
// // int selectedTile = 0;
// //
// // Widget bottomDetailsSheet() {
// //   return DraggableScrollableSheet(
// //     initialChildSize: .2,
// //     minChildSize: .1,
// //     maxChildSize: .6,
// //     builder: (BuildContext context, ScrollController scrollController) {
// //       return Container(
// //         color: Colors.lightGreen[100],
// //         child: ListView(
// //           controller: scrollController,
// //           children: [
// //             ListTile(
// //               title: Text(
// //                 "NAME",
// //               ),
// //               subtitle: Text(
// //                 animalNames[selectedTile],
// //               ),
// //             ),
// //             ListTile(
// //               title: Text(
// //                 "FAMILY",
// //               ),
// //               subtitle: Text(
// //                 animalFamily[selectedTile],
// //               ),
// //             ),
// //             ListTile(
// //               title: Text(
// //                 "LIFESPAN",
// //               ),
// //               subtitle: Text(
// //                 animalLifeSpan[selectedTile],
// //               ),
// //             ),
// //             ListTile(
// //               title: Text(
// //                 "WEIGHT",
// //               ),
// //               subtitle: Text(
// //                 animalWeight[selectedTile],
// //               ),
// //             ),
// //           ],
// //         ),
// //       );
// //     },
// //   );
// // }
// //
//
// }
//
// Future<DropdownMenuItem?> showCountrySelectorBottomSheet(BuildContext context, List<DropdownMenuItem> countries ) {
//   return showModalBottomSheet(
//     context: context,
//     clipBehavior: Clip.hardEdge,
//     isScrollControlled: true,
//     backgroundColor: Colors.transparent,
//     shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.only(
//             topLeft: Radius.circular(12), topRight: Radius.circular(12))),
//     builder: (BuildContext context) {
//       return Stack(children: [
//         GestureDetector(
//           onTap: () => Navigator.pop(context),
//         ),
//         DraggableScrollableSheet(
//           builder: (BuildContext context, ScrollController controller) {
//             return Container(
//               decoration: ShapeDecoration(
//                 color: Theme.of(context).canvasColor,
//                 shape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(12),
//                     topRight: Radius.circular(12),
//                   ),
//                 ),
//               ),
//               child: CountrySearchListWidget(
//                 countries,
//                 "en",
//                 searchBoxDecoration:InputDecoration(
//                   //isDense: true,
//                     contentPadding: const EdgeInsets.symmetric(
//                       horizontal: 10,
//                       vertical: 8,
//                     ),
//                     hintStyle:textFieldHintStyle,
//                     hintText: "${AppLocalizations.of(context)!.trans("Search")}",
//                     border:InputBorder.none
//                 ),
//                 scrollController: controller,
//                 showFlags: true,
//                 useEmoji: true,
//                 autoFocus: true,
//                 isSearch: true,
//               ),
//             );
//           },
//         ),
//       ]);
//     },
//   );
// }
//
// class CountrySearchListWidget extends StatefulWidget {
//   final List<DropdownMenuItem> countries;
//   final InputDecoration? searchBoxDecoration;
//   final String? locale;
//   final ScrollController? scrollController;
//   final bool autoFocus;
//   final bool isSearch;
//   final bool? showFlags;
//   final bool? useEmoji;
//
//   CountrySearchListWidget(this.countries, this.locale,
//       {this.searchBoxDecoration,
//         this.scrollController,
//         this.showFlags,
//         required this.isSearch,
//         this.useEmoji,
//         this.autoFocus = false});
//
//   @override
//   _CountrySearchListWidgetState createState() =>
//       _CountrySearchListWidgetState();
// }
//
// class _CountrySearchListWidgetState extends State<CountrySearchListWidget> {
//   TextEditingController _searchController = TextEditingController();
//   late List<DropdownMenuItem> filteredCountries;
//
//   @override
//   void initState() {
//     filteredCountries = filterCountries();
//     super.initState();
//   }
//
//   @override
//   void dispose() {
//     _searchController.dispose();
//     super.dispose();
//   }
//
//   /// Returns [InputDecoration] of the search box
//   InputDecoration getSearchBoxDecoration() {
//     return widget.searchBoxDecoration ??
//         InputDecoration(labelText: 'Search by country name or dial code');
//   }
//
//   /// Filters the list of Country by text from the search box.
//   List<DropdownMenuItem> filterCountries() {
//     final value = _searchController.text.trim();
//
//     if (value.isNotEmpty) {
//       return widget.countries.where(
//               (DropdownMenuItem country) {
//             if (country.value!=null){
//               CountryModel datename=country.value as CountryModel;
//               return datename.name.toLowerCase().startsWith(value.toLowerCase());
//             }
//             return country.value;
//           }
//         // ||
//         // country.toLowerCase().contains(value.toLowerCase()) ||
//         // getCountryName(country)!
//         //     .toLowerCase()
//         //     .contains(value.toLowerCase())
//         // ||
//         // country.dialCode!.contains(value.toLowerCase()),
//       ).toList();
//
//     }
//     return widget.countries;
//
//   }
//
//   /// Returns the country name of a [Country]. if the locale is set and translation in available.
//   /// returns the translated name.
//   String? getCountryName(DropdownMenuItem country) {
//     if (widget.locale != null && country.value!= null) {
//       // String? translated = country![widget.locale!];
//       // if (translated != null && translated.isNotEmpty) {
//       //   return translated;
//       // }
//       CountryModel datename=country.value as CountryModel;
//       return datename.name ;
//     }
//     return country.value;
//   }
//
//   String? getCountryNameAr(DropdownMenuItem country) {
//     if (widget.locale != null && country.value != null) {
//       // String? translated = country![widget.locale!];
//       // if (translated != null && translated.isNotEmpty) {
//       //   return translated;
//       // }
//       CountryModel datename=country.value as CountryModel;
//       return datename.nameAr ;
//     }
//     return country.value;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final user= Provider.of<UserDataController>(context);
//     return Column(
//       mainAxisSize: MainAxisSize.min,
//       children: <Widget>[
//         widget.isSearch?Padding(
//           padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
//           child: TextFormField(
//             key: Key(TestHelper.CountrySearchInputKeyValue),
//             decoration: getSearchBoxDecoration(),
//             controller: _searchController,
//             autofocus: widget.autoFocus,
//             onChanged: (value) =>
//                 setState(() => filteredCountries = filterCountries()),
//           ),
//         ):SizedBox(),
//         Flexible(
//           child: ListView.builder(
//             controller: widget.scrollController,
//             shrinkWrap: true,
//             itemCount: filteredCountries.length,
//             itemBuilder: (BuildContext context, int index) {
//               DropdownMenuItem country = filteredCountries[index];
//               return ListTile(
//                 key: Key(TestHelper.countryItemKeyValue("EGYPT")),
//                 // leading: widget.showFlags!
//                 //     ? _Flag(country: country, useEmoji: widget.useEmoji)
//                 //     : null,
//                 title:widget.locale=='en' ?
//                 Align(
//                     alignment: AlignmentDirectional.centerStart,
//                     child: Text('${getCountryName(country)}',
//                         textAlign: TextAlign.start)):Align(
//                     alignment: AlignmentDirectional.centerEnd,
//                     child: Text('${getCountryNameAr(country)}',
//                         textAlign: TextAlign.start)),
//                 // subtitle: Align(
//                 //     alignment: AlignmentDirectional.centerStart,
//                 //     child: Text('${country.na ?? ''}',
//                 //         textDirection: TextDirection.ltr,
//                 //         textAlign: TextAlign.start)),
//                 onTap: () {
//                   //Navigator.of(context).pop(country);
//                   print (country.value);
//                   user.setSelectedCountry(country.value);
//                   print (user.selectedCountry?.name);
//                   print (user.selectedCountry?.nameAr);
//                   print (user.selectedCountry?.id);
//
//                   //user.setSelectedCountry();
//                 },
//               );
//             },
//           ),
//         ),
//       ],
//     );
//   }
//
//   @override
//   void setState(fn) {
//     if (mounted) {
//       super.setState(fn);
//     }
//   }
// }
//
// class _DropdownMenuItemContainer extends StatelessWidget {
//   /// Creates an item for a dropdown menu.
//   ///
//   /// The [child] argument is required.
//   const _DropdownMenuItemContainer({
//     Key? key,
//     this.alignment = AlignmentDirectional.centerStart,
//     required this.child,
//   }) : assert(child != null),
//         super(key: key);
//
//   /// The widget below this widget in the tree.
//   ///
//   /// Typically a [Text] widget.
//   final Widget child;
//
//   /// Defines how the item is positioned within the container.
//   ///
//   /// This property must not be null. It defaults to [AlignmentDirectional.centerStart].
//   ///
//   /// See also:
//   ///
//   ///  * [Alignment], a class with convenient constants typically used to
//   ///    specify an [AlignmentGeometry].
//   ///  * [AlignmentDirectional], like [Alignment] for specifying alignments
//   ///    relative to text direction.
//   final AlignmentGeometry alignment;
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       //constraints: const BoxConstraints(minHeight: _kMenuItemHeight),
//       alignment: alignment,
//       child: child,
//     );
//   }
// }
//
// class DropdownMenuItem<T> extends _DropdownMenuItemContainer {
//   /// Creates an item for a dropdown menu.
//   ///
//   /// The [child] argument is required.
//   const DropdownMenuItem({
//     Key? key,
//     this.onTap,
//     this.value,
//     this.enabled = true,
//     AlignmentGeometry alignment = AlignmentDirectional.centerStart,
//     required Widget child,
//   }) : assert(child != null),
//         super(key: key, alignment:alignment, child: child);
//
//   /// Called when the dropdown menu item is tapped.
//   final VoidCallback? onTap;
//
//   /// The value to return if the user selects this menu item.
//   ///
//   /// Eventually returned in a call to [DropdownButton.onChanged].
//   final T? value;
//
//   /// Whether or not a user can select this menu item.
//   ///
//   /// Defaults to `true`.
//   final bool enabled;
// }