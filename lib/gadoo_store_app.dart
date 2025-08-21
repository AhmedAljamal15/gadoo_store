import 'package:flutter/material.dart';
import 'package:gadoo_store/Views/home_view.dart';

class GadooStore extends StatelessWidget {
  const GadooStore({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Gadoo Store",
      home: HomeView(),
    );
  }
}