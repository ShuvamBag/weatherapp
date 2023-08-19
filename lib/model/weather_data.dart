
import 'dart:convert';

class Current {
  int? dt;
  int? sunrise;
  int? sunset;
  double? temp;
  double? feelslike;
  int? pressure;
  int? humidity;
  double? dewpoint;
  double? uvi;
  int? clouds;
  int? visibility;
  double? windspeed;
  int? winddeg;
  double? windgust;
  List<Weather?>? weather;
  Rain? rain;

  Current({this.dt, this.sunrise, this.sunset, this.temp, this.feelslike, this.pressure, this.humidity, this.dewpoint, this.uvi, this.clouds, this.visibility, this.windspeed, this.winddeg, this.windgust, this.weather, this.rain});

  Current.fromJson(Map<String, dynamic> json) {
    dt = json['dt'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
    temp = json['current']['temp'];
    feelslike = json['current']['feels_like'];
    pressure = json['pressure'];
    humidity = json['current']['humidity'];
    dewpoint = json['dew_point'];
    uvi = json['uvi'];
    clouds = json['clouds'];
    visibility = json['visibility'];
    windspeed = json['current']['wind_speed'];
    winddeg = json['wind_deg'];
    windgust = json['wind_gust'];
    if (json['weather'] != null) {
      weather = <Weather>[];
      json['current'].forEach((v) {
        weather!.add(Weather.fromJson(v));
      });
    }
    rain = json['rain'] != null ? Rain?.fromJson(json['rain']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['dt'] = dt;
    data['sunrise'] = sunrise;
    data['sunset'] = sunset;
    data['temp'] = temp;
    data['feels_like'] = feelslike;
    data['pressure'] = pressure;
    data['humidity'] = humidity;
    data['dew_point'] = dewpoint;
    data['uvi'] = uvi;
    data['clouds'] = clouds;
    data['visibility'] = visibility;
    data['wind_speed'] = windspeed;
    data['wind_deg'] = winddeg;
    data['wind_gust'] = windgust;
    data['weather'] =weather != null ? weather!.map((v) => v?.toJson()).toList() : null;
    data['rain'] = rain!.toJson();
    return data;
  }
}

class Daily {
  int? dt;
  int? sunrise;
  int? sunset;
  int? moonrise;
  int? moonset;
  double? moonphase;
  String? summary;
  Temp? temp;
  FeelsLike? feelslike;
  int? pressure;
  int? humidity;
  double? dewpoint;
  double? windspeed;
  int? winddeg;
  double? windgust;
  List<Weather?>? weather;
  int? clouds;
  double? pop;
  double? rain;
  double? uvi;


  Daily({this.dt, this.sunrise, this.sunset, this.moonrise, this.moonset, this.moonphase, this.summary, this.temp, this.feelslike, this.pressure, this.humidity, this.dewpoint, this.windspeed, this.winddeg, this.windgust, this.weather, this.clouds, this.pop, this.rain, this.uvi});

  Daily.fromJson(Map<String, dynamic> json) {
    dt = json['dt'];
    sunrise = json['sunrise'];
    sunset = json['sunset'];
    moonrise = json['moonrise'];
    moonset = json['moonset'];
    moonphase = json['moon_phase'];
    summary = json['summary'];
    temp = json['temp'] != null ? Temp?.fromJson(json['temp']) : null;
    feelslike = json['feels_like'] != null ? FeelsLike?.fromJson(json['feels_like']) : null;
    pressure = json['pressure'];
    humidity = json['humidity'];
    dewpoint = json['dew_point'];
    windspeed = json['wind_speed'];
    winddeg = json['wind_deg'];
    windgust = json['wind_gust'];

    if (json['weather'] != null) {
      weather = <Weather>[];
      json['weather'].forEach((v) {
        weather!.add(Weather.fromJson(v));
      });
    }
    clouds = json['clouds'];
    pop = json['pop'];
    rain = json['rain'];
    uvi = json['uvi'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['dt'] = dt;
    data['sunrise'] = sunrise;
    data['sunset'] = sunset;
    data['moonrise'] = moonrise;
    data['moonset'] = moonset;
    data['moon_phase'] = moonphase;
    data['summary'] = summary;
    data['temp'] = temp!.toJson();
    data['feels_like'] = feelslike!.toJson();
    data['pressure'] = pressure;
    data['humidity'] = humidity;
    data['dew_point'] = dewpoint;
    data['wind_speed'] = windspeed;
    data['wind_deg'] = winddeg;
    data['wind_gust'] = windgust;
    data['weather'] =weather != null ? weather!.map((v) => v?.toJson()).toList() : null;
    data['clouds'] = clouds;
    data['pop'] = pop;
    data['rain'] = rain;
    data['uvi'] = uvi;
    return data;
  }
}

class FeelsLike {
  double? day;
  double? night;
  double? eve;
  double? morn;

  FeelsLike({this.day, this.night, this.eve, this.morn});

  FeelsLike.fromJson(Map<String, dynamic> json) {
    day = json['day'];
    night = json['night'];
    eve = json['eve'];
    morn = json['morn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['day'] = day;
    data['night'] = night;
    data['eve'] = eve;
    data['morn'] = morn;
    return data;
  }
}

class Hourly {
  int? dt;
  double? temp;
  double? feelslike;
  int? pressure;
  int? humidity;
  double? dewpoint;
  double? uvi;
  int? clouds;
  int? visibility;
  double? windspeed;
  int? winddeg;
  double? windgust;
  List<Weather?>? weather;
  double? pop;
  Rain? rain;

  Hourly({this.dt, this.temp, this.feelslike, this.pressure, this.humidity, this.dewpoint, this.uvi, this.clouds, this.visibility, this.windspeed, this.winddeg, this.windgust, this.weather, this.pop, this.rain});

  Hourly.fromJson(Map<String, dynamic> json) {
    dt = json['dt'];
    temp = json['temp'];
    feelslike = json['feels_like'];
    pressure = json['pressure'];
    humidity = json['humidity'];
    dewpoint = json['dew_point'];
    uvi = json['uvi'];
    clouds = json['clouds'];
    visibility = json['visibility'];
    windspeed = json['wind_speed'];
    winddeg = json['wind_deg'];
    windgust = json['wind_gust'];
    if (json['weather'] != null) {
      weather = <Weather>[];
      json['weather'].forEach((v) {
        weather!.add(Weather.fromJson(v));
      });
    }
    pop = json['pop'];
    rain = json['rain'] != null ? Rain?.fromJson(json['rain']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['dt'] = dt;
    data['temp'] = temp;
    data['feels_like'] = feelslike;
    data['pressure'] = pressure;
    data['humidity'] = humidity;
    data['dew_point'] = dewpoint;
    data['uvi'] = uvi;
    data['clouds'] = clouds;
    data['visibility'] = visibility;
    data['wind_speed'] = windspeed;
    data['wind_deg'] = winddeg;
    data['wind_gust'] = windgust;
    data['weather'] =weather != null ? weather!.map((v) => v?.toJson()).toList() : null;
    data['pop'] = pop;
    data['rain'] = rain!.toJson();
    return data;
  }
}

class Rain {
  double? onehour;

  Rain({this.onehour});

Rain.fromJson(Map<String, dynamic> json) {
  onehour = json['1h'];
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = Map<String, dynamic>();
data['1h'] = onehour;
return data;
}
}

class Root {
double? lat;
double? lon;
String? timezone;
int? timezoneoffset;
Current? current;
List<Hourly?>? hourly;
List<Daily?>? daily;

Root({this.lat, this.lon, this.timezone, this.timezoneoffset, this.current, this.hourly, this.daily});

Root.fromJson(Map<String, dynamic> json) {
lat = json['lat'];
lon = json['lon'];
timezone = json['timezone'];
timezoneoffset = json['timezone_offset'];
current = json['current'] != null ? Current?.fromJson(json['current']) : null;
if (json['hourly'] != null) {
hourly = <Hourly>[];
json['hourly'].forEach((v) {
hourly!.add(Hourly.fromJson(v));
});
}
if (json['daily'] != null) {
daily = <Daily>[];
json['daily'].forEach((v) {
daily!.add(Daily.fromJson(v));
});
}
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = Map<String, dynamic>();
data['lat'] = lat;
data['lon'] = lon;
data['timezone'] = timezone;
data['timezone_offset'] = timezoneoffset;
data['current'] = current!.toJson();
data['hourly'] =hourly != null ? hourly!.map((v) => v?.toJson()).toList() : null;
data['daily'] =daily != null ? daily!.map((v) => v?.toJson()).toList() : null;
return data;
}
}

class Temp {
double? day;
double? min;
double? max;
double? night;
double? eve;
double? morn;

Temp({this.day, this.min, this.max, this.night, this.eve, this.morn});

Temp.fromJson(Map<String, dynamic> json) {
day = json['day'];
min = json['min'];
max = json['max'];
night = json['night'];
eve = json['eve'];
morn = json['morn'];
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = Map<String, dynamic>();
data['day'] = day;
data['min'] = min;
data['max'] = max;
data['night'] = night;
data['eve'] = eve;
data['morn'] = morn;
return data;
}
}

class Weather {
int? id;
String? main;
String? description;
String? icon;

Weather({this.id, this.main, this.description, this.icon});

Weather.fromJson(Map<String, dynamic> json) {
id = json['weather']['id'];
main = json['weather']['main'];
description = json['weather']['description'];
icon = json['weather']['icon'];
}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = Map<String, dynamic>();
data['id'] = id;
data['main'] = main;
data['description'] = description;
data['icon'] = icon;
return data;
}
}

