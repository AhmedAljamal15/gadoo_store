import 'package:flutter/material.dart';
import 'package:gadoo_store/Core/App/env.variable.dart';
import 'package:gadoo_store/Core/Common/conctivity_controller.dart';
import 'package:gadoo_store/Core/Common/no_network.dart';
import 'package:gadoo_store/Views/home_view.dart';

class GadooStore extends StatelessWidget {
  const GadooStore({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ConctivityController.instance.isConnected,
      builder: (_, value, _) {
        if (value) {
          return MaterialApp(
            debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
            title: 'Gadoo Store',
            home: const HomeView(),
            builder: (context, child) {
              return Scaffold(
                body: Builder(builder: (context) {
                   ConctivityController.instance.init();
                  return child!;
                },),
              );
            },
          );
        } else {
          return MaterialApp(
            debugShowCheckedModeBanner: EnvVariable.instance.debugMode,
            title: 'No Network',
            home: const NoNetwork(),
            
          );
        }
      },
    );
  }
}
    

    

   
  

