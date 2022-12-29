import 'dart:convert';

import'package:http/http.dart' as http;
import 'package:weather1_app/screens/weather_model.dart';


class weatherclient{
  Future<weather>? getcurrentweather(String? location)async{
    var endpoint = Uri.parse("http://api.weatherapi.com/v1/current.json?key=babb1bde54854caea7750753222412&q=location&aqi=no");

   var response =await http.get((endpoint));
   var body= jsonDecode(response.body);
    print(weather.fromJSON(body));
   return weather.fromJSON(body);
  }
}