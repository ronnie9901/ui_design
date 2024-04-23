import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ui_design/main.dart';
import 'package:ui_design/utils/color.dart';

class splacescreen extends StatefulWidget {
  const splacescreen({super.key});

  @override
  State<splacescreen> createState() => _splacescreenState();
}

class _splacescreenState extends State<splacescreen> {
  @override
  Widget build(BuildContext context) {
  Timer(Duration(seconds: 3),() {
    Navigator.pushReplacementNamed(context, '/home');
  },);
    return Scaffold(
      backgroundColor:  Colors.black12,

      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              height: 800,
              width: double.infinity,
              decoration: BoxDecoration(
                  boxShadow: const [
                    BoxShadow(

                        spreadRadius: 10,
                        blurRadius: 20,
                        blurStyle: BlurStyle.inner
                    ),
                  ],

                  gradient: LinearGradient(
                      begin: AlignmentDirectional.topStart,
                      colors: [
                        Colors.black12,
                        Colors.white24,
                      ]
                  ),
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://logos-world.net/wp-content/uploads/2021/08/Beats-Emblem.png'
                    ),
                  )
              ),
            )

          ],
        ),
      ),
    );
  }
}



