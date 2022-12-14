// // ignore: file_names
// // ignore_for_file: file_names
//
// import 'dart:convert';
//
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'package:myslots/Views/GeneralComponents/GeneralComponents.dart';
//
// const domain81 = 'https://api.stage.myslots.app';
// const domain82 = 'https://app.stage.myslots.app';
// const domainStage = '.stage.app.myslots.app';
//
// class NetworkService {
//   // NetworkService();
//
//   static NetworkService? _instance;
//   factory NetworkService() => _instance ??= NetworkService._();
//   NetworkService._();
//
//   static Locale? locale;
//   static String? url;
//   static dynamic requestResponse;
//   static Map<String, dynamic>? responseJson = {};
//
//   static Map<String, String> headers = {
//     'Content-Type': 'application/json',
//     'Accept': 'application/json'
//   };
//
//   static Future<bool> post({Map<String, dynamic>? body, context}) async {
//     String responseString;
//
//     http.Request request = http.Request('POST', Uri.parse(url!));
//     request.body = json.encode(body);
//     request.headers.addAll(headers);
//
//     http.StreamedResponse response = await request.send();
//     responseString = await response.stream.bytesToString();
//     responseJson = json.decode(responseString);
//     print(responseJson);
//
//     if (response.statusCode == 200) {
//       showAlertDialog(context,
//           alertTitle: Text('${responseJson!['result']}'), content: '');
//       return true;
//     } else {
//       showAlertDialog(context,
//           alertTitle: Text('${responseJson!['result']}'), content: '');
//       return false;
//     }
//   }
//
//   static Future<Map> get() async {
//     http.Response response = await http.get(Uri.parse(url!), headers: headers);
//     print('Get Response Data ${response.body}');
//     requestResponse = (jsonDecode(response.body));
//     responseJson = json.decode(response.body);
//     // print('Get Response Data ${responseJson}');
//     return json.decode(response.body);
//   }
// }
