import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'package:gcdc_saudi/models/WeatherData.dart';


class WeatherItem extends StatelessWidget {
  final WeatherData weather;

  WeatherItem({Key key, @required this.weather}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(weather.name, style: new TextStyle(color: Colors.blue)),
            Text(weather.main, style: new TextStyle(color: Colors.blue, fontSize: 24.0)),
            Text('${weather.temp.toString()}°F',  style: new TextStyle(color: Colors.blue)),
            
            Image.network('https://openweathermap.org/img/w/${weather.icon}.png'),
            Text(new DateFormat.yMMMd().format(weather.date), style: new TextStyle(color: Colors.blue)),
            Text(new DateFormat.Hm().format(weather.date), style: new TextStyle(color: Colors.blue)),
          ],
        ),
      ),
    );
  }
}