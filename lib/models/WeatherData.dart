class WeatherData {
  final DateTime date;
  final String name;
  final double temp;
  final double tempmin;
  final double tempmax;
  final String main;
  final String icon;

  WeatherData({this.date, this.name, this.temp,this.tempmin,this.tempmax, this.main, this.icon});

  factory WeatherData.fromJson(Map<String, dynamic> json) {
    return WeatherData(
      date: new DateTime.fromMillisecondsSinceEpoch(json['dt'] * 1000, isUtc: false),
      name: json['name'],
      temp: json['main']['temp'].toDouble(),
      tempmin: json['main']['temp_min'].toDouble(),
      tempmax: json['main']['temp_max'].toDouble(),
      main: json['weather'][0]['main'],
      icon: json['weather'][0]['icon'],
    );
  }
}