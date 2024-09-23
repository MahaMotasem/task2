import 'package:flutter/material.dart';
import 'package:flutter_application_2/helpers/shared.dart';
import 'package:flutter_application_2/home_page/home_page.dart';
import 'package:flutter_application_2/splash.dart';

void main(){
  WidgetsFlutterBinding.ensureInitialized();
  Shared.init();
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}