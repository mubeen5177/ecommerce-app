import 'package:ecommerceapp/features/welcome_screen/presentation/pages/splash.dart';
import 'package:flutter/material.dart';

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
          colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xffCB163D),
            primary: const Color(0xffCB163D),
          ),
          useMaterial3: false,
        ),
        home: const SplashScreen());
  }
}
