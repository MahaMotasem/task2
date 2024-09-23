import 'package:flutter/material.dart';
import 'package:flutter_application_2/helpers/enums.dart';
import 'package:flutter_application_2/login.dart';
import 'package:flutter_application_2/helpers/shared.dart';

class CustomButton extends StatefulWidget {
  const CustomButton({super.key});

  @override
  State<CustomButton> createState() => _CustomButtonState();
}

class _CustomButtonState extends State<CustomButton> {
  bool islast = false;
  saveOnBoarding(bool done) {
    Shared.putBOOl(key: SharedKeys.islastOnBoarding, value: done);
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
      ),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: () {
        setState(() {
          islast = true;
          saveOnBoarding(islast);
        });
      },
      label: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            'Next',
            style: TextStyle(
              fontSize: 18,
              color: Colors.purple[900],
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(width: 8),
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.purple[900],
            size: 24,
          ),
        ],
      ),
    );
  }
}
