import 'package:dart_sqflite/bindings/base_binding.dart';
import 'package:dart_sqflite/controllers/main_controller.dart';
import 'package:dart_sqflite/util/sqflite_manager.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

class MainBinding extends BaseBinding {

  @override
  void dependencies() {
    debugPrint("MainBinding dependencies");
    Get.lazyPut<MainController> (
      () => MainController(
        SqfliteManager.instance
      )
    );
  }
}