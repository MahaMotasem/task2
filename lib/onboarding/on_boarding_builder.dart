import 'package:flutter/material.dart';
import 'package:flutter_application_2/onboarding/onboarding_model.dart';
import 'package:lottie/lottie.dart';

class OnBoardingBuilder extends StatelessWidget {
  final OnboardingModel model;
  const OnBoardingBuilder({super.key, required this.model});

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
              children: [
               Lottie.asset('${model.image}'),
                // SizedBox(height: 10,),
                Text(

                  textAlign: TextAlign.center,
                  '${model.description}',
                  style: TextStyle(
                    fontSize: 17,

                  ),
                  ),
              ]
            ),
    );
  }
}