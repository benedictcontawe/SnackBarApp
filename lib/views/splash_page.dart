import 'package:getx_quiz/controllers/splash_controller.dart';
import 'package:getx_quiz/views/base_view.dart';
import 'package:flutter/material.dart';

class SplashPage extends BaseView<SplashController> {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
        body : Center (
          child: Container (
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(255, 78, 13, 151),
                  Color.fromARGB(255, 107, 15, 168),
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: Align (
              alignment: Alignment.center,
              child: Column (
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset (
                    'assets/flutter.webp',
                    fit: BoxFit.cover,
                    height: 100,
                    width: 100,
                    alignment: Alignment.center,
                  ),
                  const Text(
                    'Flutter App', 
                    style: TextStyle(
                      fontSize: 20, 
                      fontWeight: FontWeight.bold, 
                      color: Colors.indigo
                    ),
                    )
                ],
              ),
            ),
          ),
        ),
    );
  }
}