import 'package:clima/api/api_services.dart';
import 'package:get/get.dart';
import 'package:geolocator/geolocator.dart';

class GlobalController extends GetxController{
  //create various variables
  final RxBool _isLoading = true.obs;
  final RxDouble _latitude = 0.0.obs;
  final RxDouble _longitude = 0.0.obs;

  //instances of variables
  RxBool checkloading() => _isLoading;
  RxDouble getlatitude() => _latitude;
  RxDouble getlongitude() =>_longitude;

  @override
  void onInit() {
    // TODO: implement onInit
    if(_isLoading.isTrue){
      getlocation();
    }
    super.onInit();
  }

  getlocation() async{
    bool isServiceEnabled;
    LocationPermission locationPermission;
    isServiceEnabled = await Geolocator.isLocationServiceEnabled();
    if(!isServiceEnabled){
      return Future.error("Location not Enabled");
    }
    locationPermission = await Geolocator.checkPermission();
    if(locationPermission == LocationPermission.deniedForever)
      {
        return Future.error("Location Permissisons are denied Forever");
      }
    else if(locationPermission == LocationPermission.denied){
      locationPermission = await Geolocator.requestPermission();
      if(locationPermission == LocationPermission.denied)
        {
          return Future.error("Location permission is denied");
        }
    }

    return await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high).then((value) {
      //update out latitude and longitude
      print(value);
      _latitude.value = value.latitude;
      _longitude.value = value.longitude;
      _isLoading.value = false;


    });
  }
}

