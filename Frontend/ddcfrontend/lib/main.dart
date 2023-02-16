import 'package:erecord/pages/splash/splash_screen.dart';
import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';

void main() {
  // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
  //   statusBarColor: Colors.transparent, // Set status bar color to transparent
  // ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "e-Record",
      theme: ThemeData(
         brightness: Brightness.light,
        primaryColor: const Color.fromARGB(255, 15, 31, 65),
        fontFamily: 'Roboto'
      ),
      home: const SplashScreen(),
    );
  }
}
