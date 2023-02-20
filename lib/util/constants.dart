import 'package:dart_http/util/environment.dart';
import 'package:dart_http/util/hex_color.dart';
import 'package:flutter/material.dart';

class Constants {
  static final API_DOMAIN = Environment.apiUrl;
  static final API_GET = Environment.apiGet;
  static final API_KEY = Environment.apiKey;
  static const TIMEOUT = Duration(milliseconds: 10000);
  static const BLANK = " ";
  Color kBackgroundColor = HexColor('FFFFFF');
  Color kSolidButtonColor = HexColor('F38E36');
  Color kPrimaryTextColor = HexColor('000000');
  Color kSecondaryTextColor = HexColor('FFFFFF');
}