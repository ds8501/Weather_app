import 'package:flutter/material.dart';

class weather{
String? cityname;
double? temperature;
int? humidity;
double? wind;
double? pressure;
String? sunrise;
String? sunset;

weather({
        this.cityname,
        this.temperature,
        this.humidity,
        this.pressure,
        this.sunrise,
        this.sunset,
        this.wind,
});

weather.fromJSON(Map<String , dynamic> json){
    cityname=json['location']['name'];
    temperature= json['current']['temp_c'];
    humidity=json['current']['humidity'];
    pressure=json['current']['pressure_mb'];
    sunrise=json['astronomy']['sunrise'];
    sunset=json['astronomy']['sunset'];
    wind=json['current']['wind_kph'];

}
}