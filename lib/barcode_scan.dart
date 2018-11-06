import 'dart:async';

import 'package:flutter/services.dart';
import 'package:barcode_scan/scan_options.dart';

class BarcodeScanner {
  static const CameraAccessDenied = 'PERMISSION_NOT_GRANTED';
  static const MethodChannel _channel =
      const MethodChannel('com.apptreesoftware.barcode_scan');
  static Future<String> scan({ScanOptions options}) async => await _channel.invokeMethod('scan');
}
