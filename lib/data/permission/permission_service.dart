
import 'package:al_quran/core/resources/constants/screen_path.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:adhan/adhan.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class PermissionService {
  bool hasPermission = false;

  /// 🛑 **Permission Check & Request**
  Future<bool> getPermission() async {
    final permission = await Permission.location.serviceStatus.isEnabled;
    if (permission) {
      var status = await Permission.location.status;
      if (status.isGranted) {
        hasPermission = true;
        return true;
      } else {
        var newStatus = await Permission.location.request();
        hasPermission = (newStatus == PermissionStatus.granted);
        return hasPermission;
      }
    }
    return false;
  }

  /// 📍 **Fetch Current Location**
  Future<Position?> getCurrentLocation() async {
    if (!await getPermission()) {
      debugPrint("Location permission denied.");
      return null;
    }

    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
  }

  /// 🕌 **Get Today's Prayer Times for Current Location**
  Future<void> getPrayerTimes() async {
    Position? position = await getCurrentLocation();
    if (position == null) {
      debugPrint("Couldn't fetch location.");
      return;
    }

    var coordinates = Coordinates(position.latitude, position.longitude);
    var params = CalculationMethod.karachi.getParameters();
    params.madhab = Madhab.hanafi;

    final prayerTimes = PrayerTimes.today(coordinates, params);
    debugPrint("---Today's Prayer Times in Your Local Timezone(${prayerTimes.fajr.timeZoneName})---");
    debugPrint("Fajr: ${DateFormat.jm().format(prayerTimes.fajr)}");
    debugPrint("Sunrise: ${DateFormat.jm().format(prayerTimes.sunrise)}");
    debugPrint("Dhuhr: ${DateFormat.jm().format(prayerTimes.dhuhr)}");
    debugPrint("Asr: ${DateFormat.jm().format(prayerTimes.asr)}");
    debugPrint("Maghrib: ${DateFormat.jm().format(prayerTimes.maghrib)}");
    debugPrint("Isha: ${DateFormat.jm().format(prayerTimes.isha)}");
  }
}
