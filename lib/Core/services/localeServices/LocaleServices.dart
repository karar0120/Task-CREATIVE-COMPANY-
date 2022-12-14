//
// // ignore_for_file: file_names
//
// import 'dart:convert';
//
// import 'package:shared_preferences/shared_preferences.dart';
//
// class LocaleServices {
//
//   static LocaleServices? _instance;
//   factory LocaleServices() => _instance ??=  LocaleServices._();
//   LocaleServices._();
//
//   static String tokenKey='token';
//   static  String mobileKey='mobile';
//   static String passwordKey='password';
//   static String userDataKey='userData';
//   static SharedPreferences? _sharedPreferences;
//   late String userToken;
//
//
//   static init() async
//   {
//     _sharedPreferences = await SharedPreferences.getInstance();
//   }
//
//   static bool isContainKey({required String key,}){
//     return _sharedPreferences!.containsKey(
//       key
//     );
//   }
//
//   static getData({
//     required String key,
//   }) async{
//     if(isContainKey(key: key)) {
//       return  _sharedPreferences!.get(key);
//     }
//     else {
//       print('dddd');
//       return null;
//     }
//   }
//
//    Future<bool> saveData({
//     required String key,
//     required dynamic value,
//   }) async {
//     if (value is String) return await _sharedPreferences!.setString(key, value);
//     if (value is int) return await _sharedPreferences!.setInt(key, value);
//     if (value is bool) return await _sharedPreferences!.setBool(key, value);
//
//     return await _sharedPreferences!.setDouble(key, value);
//   }
//
//
//   Future<Map<String, dynamic>> getUserData({
//     required String key,
//   })async{
//     String? encodedMap = _sharedPreferences!.getString(key);
//     print('egterwgr');
//     print(encodedMap);
//
//     var x =json.decode(encodedMap!);
//     print(x.runtimeType);
//     return  x;
//   }
//
//   setUserData({
//     required String key,
//     required Map<String, dynamic> value,
//   })async{
//     print(value);
//       String encodedMap = json.encode(value);
//       print(encodedMap);
//       return await _sharedPreferences!.setString(key, encodedMap);
//   }
//
//   Future<bool> putBoolean({
//     required String key,
//     required bool value,
//   }) async
//   {
//     return await _sharedPreferences!.setBool(key, value);
//   }
//
//   Future<bool> clearKey({
//     required String key,
//   }) async
//   {
//     return await _sharedPreferences!.remove(key);
//   }
//
//
//   Future<bool> clearAll() async {
//     return await _sharedPreferences!.clear();
//   }
//
//   static dynamic getBoolean({required String key}){
//     return  _sharedPreferences!.getBool(key);
//   }
//
//
// }
