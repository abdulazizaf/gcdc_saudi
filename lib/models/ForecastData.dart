import 'package:gcdc_saudi/models/WeatherData.dart';


class ForecastData {
  final List list;

  ForecastData({this.list});

  factory ForecastData.fromJson(Map<String, dynamic> json) {
    List list = new List();

    for (dynamic e in json['list']) {
      WeatherData w = new WeatherData(
          date: new DateTime.fromMillisecondsSinceEpoch(e['dt'] * 1000, isUtc: false),
          name: json['city']['name'],
          temp: e['main']['temp'].toDouble(),
          tempmin: e['main']['temp_min'].toDouble(),
          tempmax: e['main']['temp_max'].toDouble(),
          main: e['weather'][0]['main'],
          icon: e['weather'][0]['icon']);
      list.add(w);

    }

    return ForecastData(
      list: list,
    );
  }
}