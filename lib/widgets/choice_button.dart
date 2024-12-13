import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_quiz/widgets/base_widgets.dart';

class ChoiceButton extends BaseWidget {
  const ChoiceButton( {
    super.key,
    required this.text,
    required this.onTap,
    this.isCorrect, this.isSelected
  } );
    
  final String? text;
  final void Function() onTap;
  final bool? isCorrect, isSelected;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton (
      onPressed: onTap,
      style: ElevatedButton.styleFrom (
        padding: EdgeInsets.symmetric(
          vertical: Get.height * 0.025,
          horizontal: Get.width * 0.05,
        ),
        backgroundColor: _getBackgroundColor(),
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(40),
        ),
      ),
      child: Text (
        text!,
        textAlign: TextAlign.center,
      ),
    );
  }

  Color? _getBackgroundColor() {
    return Color.fromARGB(255, 33, 1, 95);
    /* TOTO: On going
    if (isSelected == null || isSelected == false) {
      return Color.fromARGB(255, 33, 1, 95);
    } else if(isCorrect == true) {
      return Colors.green;
    } else if (isCorrect == false) {
      return Colors.red;
    }
    */
  }
}