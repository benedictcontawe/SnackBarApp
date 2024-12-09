import 'package:flutter/material.dart';
import 'package:getx_quiz/widgets/base_widgets.dart';

class ChoiceButton extends BaseWidget {
  const ChoiceButton( {
    super.key,
    required this.text,
    required this.onTap,
  } );
    
  final String? text;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton (
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 40,
        ),
        backgroundColor: const Color.fromARGB(255, 33, 1, 95),
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
}