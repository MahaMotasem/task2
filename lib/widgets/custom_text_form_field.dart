import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  TextEditingController controller;
  String? Function(String?) validator;
  String? labelText;
  String? hintText;
  Widget? suffixIcon;
  CustomTextFormField({
    super.key,
    required this.controller,
    required this.validator,
    this.labelText,
    this.hintText,
    this.suffixIcon,

  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        labelText:labelText ,
        hintText:hintText,
        suffixIcon:suffixIcon,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        )
      ),
    );
  }
}
