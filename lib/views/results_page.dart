import 'package:flutter/material.dart';
import 'package:getx_quiz/views/base_view.dart';

class ResultsPage extends BaseView {

    const ResultsPage({super.key});

    @override
    Widget build(BuildContext context) {
    return Scaffold (
        body: PopScope (
        canPop: true,
        child: Container (

        ),
        onPopInvokedWithResult: (bool didPop, dynamic result) {
        
        },
      ),
    );
    }
}