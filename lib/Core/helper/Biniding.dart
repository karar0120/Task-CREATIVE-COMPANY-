import 'package:get/get.dart';
import 'package:tet/Controller/GroceryController.dart';

import '../../Controller/HomeViewModel.dart';

class Binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomeViewModel());
    Get.lazyPut(() => GroceryController());
  }
}