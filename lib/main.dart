import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:gadoo_store/Core/App/env.variable.dart';
import 'package:gadoo_store/gadoo_store_app.dart';

void main(List<String> args) async {
  WidgetsFlutterBinding.ensureInitialized();

  await EnvVariable.instance.init(envType: EnvTypeEnum.prod);

  Platform.isAndroid
  ?await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyAnvs1Ohez9-xRyBglBHB8KG4lzE_lQncw', 
      appId: '1:484482921697:android:3af2a8b8c526e7692b33a0', 
      messagingSenderId: '484482921697', 
      projectId: 'gadoostore-608c3',
      ),
  )





  :await Firebase.initializeApp();
  runApp( const GadooStore());
}