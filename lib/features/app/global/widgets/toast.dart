


import 'package:fluttertoast/fluttertoast.dart';
import 'package:google_map_clone/features/app/theme/style.dart';

void toast(String message) {
  Fluttertoast.showToast(
      msg: message,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 2,
      backgroundColor: primaryColor,
      textColor: whiteColor,
      fontSize: 16.0);
}