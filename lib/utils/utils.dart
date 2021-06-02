import 'dart:convert';
import 'dart:io';

import 'package:device_info/device_info.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:moor_flutter/moor_flutter.dart';

mixin Utils {
  static bool isLightMode(BuildContext context) {
    return Theme.of(context).brightness == Brightness.light;
  }

  static Uint8List convertFromBase64(String image) {
    return Base64Decoder().convert(image);
  }

  static double getDeviceHeight(BuildContext context) {
    return MediaQuery.of(context).size.height;
  }
  static double getDeviceWidth(BuildContext context) {
    return MediaQuery.of(context).size.width;
  }

  static Future<void> progressDialog(BuildContext context,
      {String message = ''}) {
    return showDialog(
      barrierDismissible: false,
      context: context,
      builder: (BuildContext context) => Center(
        child: CupertinoActivityIndicator(),
      ),
    );
  }

  static String formatDate(String date) =>
      DateFormat("d MMM hh:mm aaa").format(DateTime.parse(date));
      
/**
 * detect device in landscape mode
 */
      static bool isLandscape(BuildContext context) =>
      MediaQuery.of(context).orientation == Orientation.landscape;

   /**
    *  function to detect tablet devices
     */   
  static Future<bool> isTablet(BuildContext context) async {
    if (Platform.isIOS) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      IosDeviceInfo iosInfo = await deviceInfo.iosInfo;

      return iosInfo.model.toLowerCase() == "ipad";
    } else {
      // The equivalent of the "smallestWidth" qualifier on Android.
      var shortestSide = MediaQuery.of(context).size.shortestSide;

      // Determine if we should use mobile layout or not, 600 here is
      // a common breakpoint for a typical 7-inch tablet.
      return shortestSide > 600;
    }
  }
}
