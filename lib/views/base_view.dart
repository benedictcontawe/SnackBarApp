import 'package:flutter/material.dart';
import 'package:get/get.dart';

abstract class BaseView<T> extends GetView<T> {
  const BaseView({Key? key}) : super(key: key); 

  Widget getLoadWidget() {
    return Container(decoration: getDecoration(), child: const Center(child: CircularProgressIndicator(),));
  }

  Decoration? getDecoration() {
    return const BoxDecoration (
      gradient: LinearGradient (
        colors: [
          Color.fromARGB(255, 78, 13, 151),
          Color.fromARGB(255, 107, 15, 168),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      ),
    );
  }
}