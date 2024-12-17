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
      darkTheme: ThemeData.dark().copyWith(),
      defaultTransition: Transition.fade,
      theme: ThemeData (
        useMaterial3: true,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ).copyWith(
        appBarTheme: AppBarTheme().copyWith(
          
        ),
        cardTheme: CardTheme().copyWith(

        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: null
        ),
        textTheme: ThemeData().textTheme.copyWith()
      ),
      themeMode: ThemeMode.system,
      getPages: AppPages.pages,
    ) 
  );
}