import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:intl/intl.dart';

import '../controller/global_controller.dart';
class HeaderWidget extends StatefulWidget {
  const HeaderWidget({super.key});

  @override
  State<HeaderWidget> createState() => _HeaderWidgetState();
}

class _HeaderWidgetState extends State<HeaderWidget> {
  String city = "";
  String date = DateFormat("yMMMMd").format(DateTime.now());
  final GlobalController globalController = Get.put(GlobalController(), permanent:true);

  bool isday = false;
  @override
  void initState() {
    // TODO: implement initState
    int hours = DateTime.now().hour;
    if (hours >= 5 && hours < 18) {
      setState(() {
        isday = true;
      });
    }
    print(globalController.getlatitude().value);
    getAddress(globalController.getlatitude().value,globalController.getlongitude().value);
    super.initState();
  }

  getAddress(lat,lon) async{
    List<Placemark> placemark =  await placemarkFromCoordinates(lat, lon);
    Placemark place = placemark[0];
    setState(() {
      city = place.locality!;
    });
  }
  @override
  Widget build(BuildContext context) {

    return Column(children: [
      Row(
        children: [
          SizedBox(
            width: 40,
          ),
          Container(
            child: Flexible(
              child: Text(
                city,
                style: GoogleFonts.inter(
                  fontSize: 35,
                  fontWeight: FontWeight.w600,
                  color: isday? HexColor("313341"):HexColor("FCF9FF"),
                ),
              ),
            ),
          )
        ],
      ),
      Row(
        children: [
          SizedBox(
            width: 43,
          ),
          Container(
            child: Text(
              date,
              style: GoogleFonts.inter(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: isday?HexColor("9A938C"):HexColor("B08ED0"),
              ),
            ),
          )
        ],
      ),
    ],);
  }
}
