// import 'package:dio/dio.dart';
//
// class WebService {
//   static late Dio dio;
//
//   static init() {
//     dio = Dio(BaseOptions(
//         baseUrl: "",
//         receiveDataWhenStatusError: true,
//         receiveTimeout: 20 * 1000,
//         connectTimeout: 20 * 1000));
//   }
//
//   static Future uploadImage({
//     required dynamic data,
//     required Map<String, String>headers,
//     required String Uri,
//   }) async {
//     Response apiRespon = await dio.put(Uri,
//       data: data,
//       options: Options(
//           followRedirects: false,
//           // will not throw errors
//           validateStatus: (status) => true,
//           method: 'PUT', contentType: 'multipart/form-data', headers: headers),
//     );
//    return apiRespon;
//   }
//
//   static Future PostData({
//     required dynamic data,
//     required Map<String, String>headers,
//     required String Uri,
//   }) async {
//     Response apiRespon = await dio.post(Uri,
//       data: data,
//       options: Options(
//           followRedirects: false,
//           // will not throw errors
//           validateStatus: (status) => true,
//           method: 'POST', contentType: 'multipart/form-data', headers: headers),
//     );
//     return apiRespon;
//   }
//
//
//   static Future GetImage({required Map<String, String> headers,required String Uri}) async {
//     Response apiRespon = await dio.get(
//       Uri,
//       options: Options(
//           method: 'GET',
//           // followRedirects: false,
//           // // will not throw errors
//           // validateStatus: (status) => true,
//           contentType: 'application/json',
//           headers: headers),
//     );
//       if (apiRespon.statusCode==200){
//         return apiRespon.data;
//       }
//       else{
//         return {};
//       }
//     }
//
//   static Future GetData({required Map<String, String> headers,required String Uri,Map<String,dynamic>?query}) async {
//     Response apiRespon = await dio.get(
//       Uri,
//       queryParameters: query,
//       options: Options(
//         followRedirects: false,
//         // will not throw errors
//         validateStatus: (status) => true,
//           method: 'GET',
//           contentType: 'application/json',
//           headers: headers,
//       ),
//     );
//       return apiRespon;
//   }
//   static Future DeletaData({required Map<String, String> headers,required String Uri}) async {
//     Response apiRespon = await dio.delete(
//       Uri,
//       options: Options(
//           method: 'DELETE',
//           followRedirects: false,
//           // will not throw errors
//           validateStatus: (status) => true,
//           contentType: 'application/json',
//           headers: headers),
//     );
//       return apiRespon;
//   }
//
//
//   static Future POSTData({required Map<String, String> headers,required String Uri}) async {
//     Response apiRespon = await dio.post(
//       Uri,
//       options: Options(
//           method: 'POST',
//           contentType: 'application/json',
//           headers: headers),
//     );
//     return apiRespon;
//   }
//   static Future Putdata({
//     required dynamic data,
//     required Map<String, String>headers,
//     required String Uri,
//   }) async {
//     Response apiRespon = await dio.put(Uri,
//       data: data,
//       options: Options(
//           followRedirects: false,
//           // will not throw errors
//           validateStatus: (status) => true,
//           method: 'PUT', contentType: 'application/json', headers: headers),
//     );
//     return apiRespon;
//   }
//
//   // static Future<Response> PostDataBooking({
//   //   required String uri,
//   //   Map<String, dynamic>?query,
//   //   required Map<String, dynamic>data,
//   // }) async {
//   //   return await dio.post(
//   //     uri,
//   //     data: data,
//   //     queryParameters: query,
//   //   );
//   // }
//   // static Future GetDownld({required Map<String, String> headers,required String Uri,Map<String,dynamic>?query}) async {
//   //   Response apiRespon = await dio.get(
//   //     Uri,
//   //     queryParameters: query,
//   //     options: Options(
//   //       method: 'GET',
//   //       responseType: ResponseType.bytes,
//   //
//   //       contentType: 'application/json',
//   //       headers: headers,
//   //     ),
//   //   );
//   //   return apiRespon;
//   // }
//
//
// }
//
//
//
import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferenceUtils {
  static late SharedPreferences prefs;

  static init() async {
    prefs = await SharedPreferences.getInstance();
    // storing lists
    await putStringList("m_list", ["abc", "def"]);
    // await putObjectList("data",
    //     [CustomModel(id: 1, name: "Bob"), CustomModel(id: 2, name: "Alice")]);
  }

  static Future<bool> putStringList(String key, List<String> list) async {
    return prefs.setStringList(key, list);
  }

  static List<String>? getStringList(String key) {
    return prefs.getStringList(key);
  }

  static Future<bool?> putObjectList(String key, List<dynamic> list) async {
    if (prefs == null) return null;
    List<String>? _dataList = list.map((value) {
      return json.encode(value);
    }).toList();
    return prefs.setStringList(key, _dataList);
  }

  // static List<T>? getObjList<T>(String key, T f(Map v),
  //     {List<T> defValue = const []}) {
  //   if (prefs == null) return null;
  //   List<Map> dataList = getObjectList(key);
  //   List<T>? list = dataList.map((value) {
  //     return f(value);
  //   }).toList();
  //   return list ?? defValue;
  // }

  static List<Map>? getObjectList(String key) {
    if (prefs == null) return null;
    List<String>? dataList = prefs.getStringList(key);
    return dataList?.map((value) {
      Map _dataMap = json.decode(value);
      return _dataMap;
    }).toList();
  }
}