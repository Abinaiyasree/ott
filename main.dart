import 'package:flutter/material.dart';
import 'package:mxplayer/home.dart';
import 'package:mxplayer/page1.dart';
import 'package:mxplayer/splash.dart';

import 'Mx VideoPage.dart';
import 'bottom navi.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: splash(),
    );
  }
}

