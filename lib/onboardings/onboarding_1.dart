import 'package:flutter/material.dart';
import 'onboarding_2.dart';

class OnboardingScreenOne extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('HomeScreenOnboardingScreenOne'),
      ),
      body: Container(
        child: FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => OnboardingScreenTwo(),
              ),
            );
          },
          child: Text('Next'),
        ),
      ),
    );
  }
}
