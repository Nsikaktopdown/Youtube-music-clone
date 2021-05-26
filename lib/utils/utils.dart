import 'dart:convert';

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
}
