import 'package:flutter/Material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:ui_design/utils/addcard.dart';
import 'package:ui_design/utils/addtobag.dart';
import 'package:ui_design/utils/color.dart';
import 'package:ui_design/utils/fav.dart';
import 'package:ui_design/utils/homescreen.dart';
import 'package:ui_design/utils/profile_page.dart';
import 'package:ui_design/utils/row.dart';
import 'package:ui_design/utils/splacescreen.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      routes: {
        '/':(context)=> splacescreen(),
         '/home':(context)=> Homesreen(),
        '/addd':(context)=> addsreen(),
         '/fav': (context)=> favsreen(),
         '/addtocart':(context)=>Addtocart(),
         '/profile':(context)=>profilesreen(),


      },
    );
  }
}


