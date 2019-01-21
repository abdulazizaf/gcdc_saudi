import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:gcdc_saudi/models/WeatherData.dart';

class Weather extends StatelessWidget {
  final WeatherData weather;

  Weather({Key key, @required this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(weather.name, style: new TextStyle(color: Colors.blue)),
        Text(weather.main,
            style: new TextStyle(color: Colors.blue, fontSize: 32.0)),
        Text('درجة الحراره ', style: new TextStyle(color: Colors.blue)),
        Text('${weather.temp.toString()}°F',
            style: new TextStyle(color: Colors.blue)),
        Text('الصغرى', style: new TextStyle(color: Colors.blue)),
        Text('${weather.tempmin.toString()}°F',
            style: new TextStyle(color: Colors.blue)),
              Text('الكبرى', style: new TextStyle(color: Colors.blue)),
        Text('${weather.tempmax.toString()}°F',
            style: new TextStyle(color: Colors.blue)),
        Image.network('https://openweathermap.org/img/w/${weather.icon}.png'),
        Text(new DateFormat.yMMMd().format(weather.date),
            style: new TextStyle(color: Colors.blue)),
        Text(new DateFormat.Hm().format(weather.date),
            style: new TextStyle(color: Colors.blue)),
      ],
    );
  }
}
