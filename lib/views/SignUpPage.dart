// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopping_app_sprints/views/HomePage.dart';
import 'package:shopping_app_sprints/views/Products_Page.dart';
import 'package:shopping_app_sprints/widgets/button_Wid.dart';

class SignUpPage extends StatefulWidget {
  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController passController = TextEditingController();
  TextEditingController confirmpassController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  String? pass;
  bool flag = true;
  bool Confirm_flag = true;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Color.fromARGB(255, 194, 124, 244),
        title: Text('Sign Up',
            style: TextStyle(
                fontFamily: "Suwannaphum",
                fontWeight: FontWeight.bold,
                fontSize: 25,
                color: Color.fromARGB(255, 194, 124, 244))),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image.asset(
                "assets/images/Mobile login-pana.png",
                height: 300,
                width: 300,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    controller: nameController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter  Name';
                      } else
                        return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                      labelText: 'Name',
                      hintText: 'Enter your Full Name',
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    controller: emailController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter  Email';
                      } else if (!value.contains('@')) {
                        return 'Please Email Must Contain @';
                      } else
                        return null;
                    },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                      labelText: 'Email',
                      hintText: 'Enter your email',
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    controller: passController,
                    validator: (value) {
                      pass = value;
                      if (value == null || value.isEmpty) {
                        return 'Please enter  Password';
                      } else if (value.length < 6) {
                        return 'Password must be at least 6 characters';
                      } else
                        return null;
                    },
                    obscureText: flag,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        onPressed: () {
                          setState(() {
                            flag = !flag;
                          });
                        },
                        icon: Icon(flag == false
                            ? Icons.visibility
                            : Icons.visibility_off),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                      labelText: 'Password',
                      hintText: 'Enter Password',
                    )),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                    controller: confirmpassController,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter  Password';
                      } else if (value != pass) {
                        return 'Password does not match';
                      } else
                        return null;
                    },
                    obscureText: Confirm_flag,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                          onPressed: () {
                            setState(() {
                              Confirm_flag = !Confirm_flag;
                            });
                          },
                          icon: Icon(Confirm_flag == false
                              ? Icons.visibility
                              : Icons.visibility_off)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25)),
                      labelText: 'Confirm Password',
                      hintText: 'Enter Password',
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              button_Wid(
                text: "Create Account",
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Text("Account Created Successfully"),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                          context,
                                          MaterialPageRoute(
                                            builder: (context) =>
                                                Products_Page(),
                                          ));
                                    },
                                    child: Text("Close"))
                              ],
                            ));
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
