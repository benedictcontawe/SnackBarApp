import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';
import 'package:getx_quiz/controllers/base_controller.dart';
import 'package:getx_quiz/routes/app_pages.dart';

class SplashController extends BaseController {

  late Timer _timer;

  @override
  void onInit() {
    super.onInit();
    debugPrint("SplashController onInit");
  }

  @override
  void onReady() {
    super.onReady();
    debugPrint("SplashController onReady");
    _startTimer();
  }

  void _startTimer() {
    debugPrint("SplashController startTimer");
    _timer = Timer (
      const Duration( milliseconds: 4000 ), 
      (() => _launchMenu())
    );
  }

  void _launchMenu() {
      debugPrint("SplashController Timer Stops");
      Get.offAndToNamed(Routes.MENU);
      _timer.cancel();
  }

  @override
  void onClose() {
    debugPrint("SplashController onClose");
    super.onClose();
  }
}