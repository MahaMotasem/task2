import 'package:flutter/material.dart';
import 'package:flutter_application_2/constant.dart';
import 'package:flutter_application_2/helpers/enums.dart';
import 'package:flutter_application_2/helpers/shared.dart';
import 'package:flutter_application_2/home_page/home_page.dart';
import 'package:flutter_application_2/login.dart';
import 'package:flutter_application_2/profile.dart';
import 'package:flutter_application_2/widgets/custom_text_form_field.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var passwordConfirmController = TextEditingController();
  var phoneController = TextEditingController();
  var nameController = TextEditingController();
  var addressController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool obScure = true;

  @override
  Widget build(BuildContext context) {
    ScreenSize.init(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/log.png"),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  controller: nameController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text('Name'),
                    hintText: 'Enter your name',
                    suffixIcon: Icon(Icons.person),
                  ),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  validator: (value) {
                    if (!RegExp(
                            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                        .hasMatch(value!)) {
                      return 'Please enter a valid email';
                    }
                    return null;
                  },
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text('Email'),
                    hintText: 'Enter your email',
                    suffixIcon: Icon(Icons.email),
                  ),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  obscureText: obScure,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                  controller: passwordController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text('Password'),
                    hintText: 'Enter your password',
                    suffixIcon: IconButton(
                      icon: obScure
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          obScure = !obScure;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  obscureText: obScure,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your password';
                    }
                    return null;
                  },
                  controller: passwordConfirmController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text('confirm password'),
                    hintText: 'confirm your password',
                    suffixIcon: IconButton(
                      icon: obScure
                          ? Icon(Icons.visibility)
                          : Icon(Icons.visibility_off),
                      onPressed: () {
                        setState(() {
                          obScure = !obScure;
                        });
                      },
                    ),
                  ),
                ),
                const SizedBox(height: 15),
                TextFormField(
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Please enter your phone number';
                    } else if (value.length != 11) {
                      return 'Enter a valid number';
                    }
                    return null;
                  },
                  controller: phoneController,
                  keyboardType: TextInputType.phone,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    label: Text('Phone'),
                    hintText: 'Enter your phone number',
                    suffixIcon: Icon(Icons.phone),
                  ),
                ),
                const SizedBox(height: 15),
                CustomTextFormField(
                  labelText: 'Address',
                  hintText: 'Enter your address',
                  controller: addressController,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'please enter address';
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    elevation: 5,
                    backgroundColor: Color(0xFF1c1f85),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                  ),
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (context) => HomePage(),
                        ),
                        (route) => false,
                      );
                      Shared.putString(
                          key: SharedKeys.email, value: emailController.text);
                      Shared.putString(
                          key: SharedKeys.address,
                          value: addressController.text);
                      Shared.putString(
                          key: SharedKeys.phone, value: phoneController.text);
                      Shared.putString(
                          key: SharedKeys.name, value: nameController.text);
                    }
                  },
                  child: Text(
                    'Sign Up',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Already have an account?"),
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LoginPage(),
                              ));
                        },
                        child: Text('Sign In'))
                  ],
                ),
                SizedBox(
                  height: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
