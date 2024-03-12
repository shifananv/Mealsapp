import 'package:flutter/material.dart';
import 'package:food/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JustEat',
      debugShowCheckedModeBanner: false, // Setting debugShowCheckedModeBanner to false
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 217, 217, 217),
        primarySwatch: const MaterialColor(0xFF827500, <int, Color>{
          50: Color.fromARGB(255, 255, 255, 255),
          100: Color.fromARGB(255, 255, 255, 255),
          200: Color.fromARGB(255, 255, 255, 255),
          300: Color.fromARGB(255, 255, 255, 255),
          400: Color.fromARGB(255, 255, 255, 255),
          500: Color.fromARGB(255, 130, 117, 0),
          600: Color.fromARGB(255, 130, 117, 0),
          700: Color.fromARGB(255, 130, 117, 0),
          800: Color.fromARGB(255, 130, 117, 0),
          900: Color.fromARGB(255, 130, 117, 0),

        }),
        textTheme: const TextTheme(bodyText1: TextStyle(fontFamily: 'Montserrat'))
      ),
      home: const SplashScreen(title: 'JustEat'),
    );
  }
}


