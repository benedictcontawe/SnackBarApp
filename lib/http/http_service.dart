import 'dart:developer';
import 'package:dart_http/constants.dart';
import 'package:dart_http/models/nasa_response_model.dart';
import 'package:dart_http/util/convert_list.dart';
import 'package:http/http.dart' as http;

class HttpService {
  static Future<List<NasaResponseModel>> getAstronomyPictureOfTheDay(String key, int count) async {
    var response = await http.get (
      Uri.parse(
          "${Constants.API_DOMAIN}${Constants.API_GET}?api_key=$key&count=$count" ?? Constants.API_DOMAIN + "?api_key=" + key + "&count" + count.toString()
        )
    );
    log('body: ${response.body}');
    log('statusCode: ${response.statusCode}');
    log('request: ${response.request}');
    if (response.statusCode == 200) {
      var data = response.body;
      return ConvertList.toResponseList(data);
    } else {
      throw Exception();
    }
  }
}