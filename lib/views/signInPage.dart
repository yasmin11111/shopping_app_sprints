// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:shopping_app_sprints/views/HomePage.dart';
import 'package:shopping_app_sprints/views/Products_Page.dart';
import 'package:shopping_app_sprints/widgets/button_Wid.dart';

class Signinpage extends StatefulWidget {
  @override
  State<Signinpage> createState() => _SigninpageState();
}

class _SigninpageState extends State<Signinpage> {
  TextEditingController passController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  String? pass;
  bool flag = true;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Color.fromARGB(255, 194, 124, 244),
        title: Text('Sign In',
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
                "assets/images/Mobile login-amico.png",
                height: 300,
                width: 300,
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
                              title: Text("Account Sign-in Successfully"),
                              actions: [
                                TextButton(
                                    onPressed: () {
                                      Navigator.of(context).push(
                                        PageRouteBuilder(
                                          transitionDuration:
                                              Duration(milliseconds: 800),
                                          pageBuilder: (context, animation,
                                                  secondaryAnimation) =>
                                              Products_Page(),
                                          transitionsBuilder: (context,
                                              animation,
                                              secondaryAnimation,
                                              child) {
                                            return FadeTransition(
                                              opacity: animation,
                                              child: child,
                                            );
                                          },
                                        ),
                                      );
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
