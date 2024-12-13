import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:get/get.dart';
import 'package:getx_quiz/bindings/splash_binding.dart';
import 'package:getx_quiz/routes/app_pages.dart';

Future<void> main() async {
  debugPaintSizeEnabled = false;
  //await dotenv.load(fileName : Environment.mode);
  //#region Get X Storage
  //await GetStorage.init();
  //Get.put(GetStorageManager());
  //#endregion
  //#region Firebase
  //WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  //Get.put(FirestoreService());
  //Get.put(FirebaseStorageService());
  //Get.put(FirebaseAuthService());
  //#endregion
  runApp ( 
    GetMaterialApp (
      debugShowCheckedModeBanner: true,
      initialBinding: SplashBinding(),
      initialRoute: Routes.SPLASH,
      theme: ThemeData (
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      defaultTransition: Transition.fade,
      getPages: AppPages.pages,
    ) 
  );
}