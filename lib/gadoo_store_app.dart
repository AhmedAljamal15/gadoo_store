import 'package:flutter/material.dart';
import 'package:gadoo_store/Core/App/env.variable.dart';
import 'package:gadoo_store/Views/home_view.dart';

class GadooStore extends StatelessWidget {
  const GadooStore({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
      title: 'Gadoo Store',
      home: HomeView(),
    );
  }
}