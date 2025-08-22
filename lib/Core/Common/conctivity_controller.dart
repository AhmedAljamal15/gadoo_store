import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';

class ConctivityController {
  ConctivityController._();

  static final ConctivityController instance = ConctivityController._();

  ValueNotifier<bool> isConnected = ValueNotifier(true);

  Future<void> init() async {
    final result = await Connectivity().checkConnectivity();
    isInternetConnected(result);
    Connectivity().onConnectivityChanged.listen(isInternetConnected);
  }

  // bool isInternetConnected(ConnectivityResult? result) {
  //   if (result == ConnectivityResult.none) {
  //     isConnected.value = false;
  //     return false;
  //   } else if (result == ConnectivityResult.mobile ||
  //       result == ConnectivityResult.wifi) {
  //     isConnected.value = true;
  //     return true;
  //   }
  //   return false;
  // }

  bool isInternetConnected(Object? result) {
  List<ConnectivityResult> results;

  if (result is List<ConnectivityResult>) {
    results = result;
  } else if (result is ConnectivityResult || result == null) {
    results = [ (result as ConnectivityResult?) ?? ConnectivityResult.none ];
  } else {
    // unexpected type -> treat as no connection
    isConnected.value = false;
    return false;
  }

  final connected = results.any((r) =>
    r == ConnectivityResult.mobile || r == ConnectivityResult.wifi);

  isConnected.value = connected;
  return connected;
}
}
