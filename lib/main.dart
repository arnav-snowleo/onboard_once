import 'package:flutter/material.dart';
import 'package:onboarding_once/homeScreen.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'onboardings/onboarding_1.dart';

int initScreen;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //SharedPreferences
  SharedPreferences preferences = await SharedPreferences.getInstance();
  initScreen = await preferences.getInt('initScreen');
  await preferences.setInt('initScreen', 1);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: initScreen == 0 || initScreen == null ? 'onboard' : 'home',
      routes: {
        'onboard': (context) => OnboardingScreenOne(),
        'home': (context) => HomeScreen(),
      },
    );
  }
}
