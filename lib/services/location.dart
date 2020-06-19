import 'package:flutter/cupertino.dart';
import 'package:geolocator/geolocator.dart';

class Location {

  Location({@required latitude, @required longitude});

  double latitude;
  double longitude;

  Future<void> getCurrentLocation() async{
    try{
      Position position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      latitude = position.latitude;
      longitude = position.longitude;

      print(latitude);
      print(longitude);
    }
    catch (e){
      print(e);
    }
  }
}