import 'package:flutter/material.dart';
import 'onboarding_3.dart';

class OnboardingScreenTwo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('OnboardingScreenTwo'),
      ),
      body: Container(
        child: FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => OnboardingScreenThree(),
              ),
            );
          },
          child: Text('Next'),
        ),
      ),
    );
  }
}
