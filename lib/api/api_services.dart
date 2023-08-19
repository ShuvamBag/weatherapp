import 'dart:convert';

import 'package:clima/api/api_key.dart';
import 'package:clima/controller/global_controller.dart';
import 'package:clima/model/weather_data.dart';
import 'package:get/get.dart';
import 'package:http/http.dart'as http;




class ApiService {
  final GlobalController globalController = Get.put(GlobalController(), permanent:true);

  Future<Current> getcurrentWeather(String searchText)async{
    var latitude = globalController.getlatitude().value.toString();
    var longitude = globalController.getlongitude().value.toString();
    print(latitude);
    print(longitude);
    String url = "https://api.openweathermap.org/data/3.0/onecall?lat=$latitude&lon=$longitude&appid=$apikey&units=metric&exclude=minutely";
    try{
      http.Response response = await http.get(Uri.parse(url));
      if(response.statusCode == 200){
        Map<String,dynamic> json = jsonDecode(response.body);
        Current currentweather = Current.fromJson(json);
        return currentweather;
      }else{
        throw ("No data found");
      }

    }catch(e){
      print(e.toString());
      throw e.toString();
    }
  }
}


