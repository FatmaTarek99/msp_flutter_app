import 'package:msp_flutter_app/screen_1.dart';
import 'package:msp_flutter_app/screen_2.dart';
import 'package:msp_flutter_app/screen_3.dart';
import 'package:msp_flutter_app/screen_4.dart';
import 'package:msp_flutter_app/screen_5.dart';

import 'screen_1.dart';
import 'screen_2.dart';
import 'screen_3.dart';
import 'screen_4.dart';
import 'screen_5.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: screen1(),
      routes: {
        '/'  :(context) => screen1(),
        '/x2':(context) => screen2(),
        '/x3':(context) => screen3(),
        '/x4':(context) => screen4(),
        '/x5':(context) => screen5(),
      },
    );
  }

}
