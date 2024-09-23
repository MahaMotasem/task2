import 'package:flutter/material.dart';
import 'package:flutter_application_2/widgets/custom_button.dart';
import 'package:flutter_application_2/helpers/enums.dart';
import 'package:flutter_application_2/login.dart';
import 'package:flutter_application_2/onboarding/on_boarding_builder.dart';
import 'package:flutter_application_2/onboarding/onboarding_model.dart';
import 'package:flutter_application_2/helpers/shared.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  saveOnBoarding(bool done)  {
    Shared.putBOOl(key: SharedKeys.islastOnBoarding, value: done);
     Navigator.pushAndRemoveUntil(
                context,
                MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ),
                (route) => false,
              );
  }
  var pageController = PageController();
  bool islast = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(
            child: Text(
              'Skip',
              style: TextStyle(
                color: Colors.purple[900],
                fontSize: 18,
              ),
            ),
            onPressed: () {
              setState(() {
              //    Navigator.pushAndRemoveUntil(
              //   context,
              //   MaterialPageRoute(
              //     builder: (context) => LoginPage(),
              //   ),
              //   (route) => false,
              // );
              islast = true;
              saveOnBoarding(islast);
              });

            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                controller: pageController,
                itemCount: data.length,
                onPageChanged: (index) {
                  if (index == data.length - 1) {
                    setState(() {
                      islast = true;
                    });
                  } else {
                     setState(() {
                      islast = false;
                    });
                  }
                },
                physics: const BouncingScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  return AnimatedSwitcher(
                    duration: const Duration(milliseconds: 500),
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return FadeTransition(
                        opacity: animation,
                        child: child,
                      );
                    },
                    child: OnBoardingBuilder(model: data[index]),
                  );
                },
              ),
            ),
            SmoothPageIndicator(
              controller: pageController,
              count: data.length,
              effect: ExpandingDotsEffect(
                dotHeight: 10,
                dotWidth: 10,
                activeDotColor: Colors.purple[900]!,
                dotColor: Colors.grey.withOpacity(0.5),
                expansionFactor: 2,
              ),
            ),
            SizedBox(
              height: 160,
            ),
            Align(
                alignment: Alignment.bottomRight,
                child: Visibility(
                  visible: islast,
                  child:CustomButton(),
                ),
                ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
