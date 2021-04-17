import 'package:flutter/material.dart';
import 'package:onboarding_once/homeScreen.dart';

class OnboardingScreenThree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OnboardingScreenThree'),
      ),
      body: Container(
        child: FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => HomeScreen(),
              ),
            );
          },
          child: Text('Next'),
        ),
      ),
    );
  }
}
