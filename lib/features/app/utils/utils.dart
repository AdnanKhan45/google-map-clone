
import 'package:geolocator/geolocator.dart';

class PanelPositionUtils {

  static bool isSlidingPanelOpen(double position) {
    return position > 0.98;
  }

  static bool isSlidingPanelClosed(double position) {
    return position < 0.98;
  }

}

class MapPermissionUtils {
  static Future<LocationPermission> checkAndRequestLocationPermission() async {
    LocationPermission permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied ||
        permission == LocationPermission.deniedForever) {
      permission = await Geolocator.requestPermission();
    }
    return permission;
  }
}