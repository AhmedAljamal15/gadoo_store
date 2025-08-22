import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class NoNetwork extends StatelessWidget {
  const NoNetwork({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ConstrainedBox(
        constraints:const BoxConstraints.expand(),
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/no_network.jpg'),
              fit: BoxFit.fill,
            ),
          ),
        ),
        ) ,
    );
  }
}