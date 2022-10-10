import 'package:getx_storage/bindings/splash_binding.dart';
import 'package:getx_storage/util/environment.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'routes/app_pages.dart';

Future<void> main() async {
  await dotenv.load(fileName : Environment.mode);
  await GetStorage.init();
  debugPaintSizeEnabled = false;
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: true,
    initialBinding: SplashBinding(),
    initialRoute: Routes.SPLASH,
    theme: ThemeData(
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    defaultTransition: Transition.fade,
    getPages: AppPages.pages,
  ));
}