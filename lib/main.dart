// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:koalodownloader/provider/dropdownprovider.dart';
import 'package:koalodownloader/specs/colors.dart';
import 'package:koalodownloader/views/mainview.dart';
import 'package:koalodownloader/views/splashscreen/splashscreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => UIProvider()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Color(0xff424851),
          // ···
        ),
      ),
      home: SplashScreen(),
    );
  }
}
