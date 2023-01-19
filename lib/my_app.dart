import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bloc Architecture',
      home: const HomeScreen(),
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
    );
  }
}
