import 'package:adhan/adhan.dart';
import 'package:geolocator/geolocator.dart';
import 'package:intl/intl.dart';

class AdhanRepository {
  /// 📍 **Get Current Location**
  Future<Position?> _getCurrentLocation() async {
    bool serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) return null;

    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) return null;
    }

    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  /// 🕌 **Get Prayer Times**
  Future<Map<String, String>> getPrayerTimes() async {
    Position? position = await _getCurrentLocation();
    if (position == null) {
      throw Exception("Location access denied");
    }

    var coordinates = Coordinates(position.latitude, position.longitude);
    var params = CalculationMethod.karachi.getParameters();
    params.madhab = Madhab.hanafi;

    final prayerTimes = PrayerTimes.today(coordinates, params);

    return {
      "Fajr": DateFormat.jm().format(prayerTimes.fajr),
      "Sunrise": DateFormat.jm().format(prayerTimes.sunrise),
      "Dhuhr": DateFormat.jm().format(prayerTimes.dhuhr),
      "Asr": DateFormat.jm().format(prayerTimes.asr),
      "Maghrib": DateFormat.jm().format(prayerTimes.maghrib),
      "Isha": DateFormat.jm().format(prayerTimes.isha),
    };
  }
}
