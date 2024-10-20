import 'package:flutter/material.dart';
import 'package:taptalk/HomeScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'TapTalk',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'lato',
          useMaterial3: true,
        ),
        home: 
        
        const HomeScreen(),
        );
  }
}
