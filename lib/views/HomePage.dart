// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:shopping_app_sprints/views/SignUpPage.dart';
import 'package:shopping_app_sprints/views/signInPage.dart';
import 'package:shopping_app_sprints/widgets/button_Wid.dart';

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 215, 170, 247),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Shopify',
              style: TextStyle(
                  fontFamily: "Suwannaphum",
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: Color.fromARGB(255, 194, 124, 244)),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width / 2,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://i.pinimg.com/736x/f1/99/9c/f1999ce457044447456370aed8c57849.jpg"),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  SizedBox(width: 13),
                  Expanded(
                    child: Image.asset("assets/images/download (5).jpg",
                        height: MediaQuery.of(context).size.height / 2,
                        width: MediaQuery.of(context).size.width / 2),
                  ),
                ],
              ),
            ),
          ),
          button_Wid(
              text: "Sign Up",
              onPressed: () {
                Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          SignUpPage(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return ScaleTransition(
                          scale: animation,
                          child: child,
                        );
                      },
                      transitionDuration: Duration(milliseconds: 500),
                    ));
              }),
          SizedBox(height: 20),
          button_Wid(
              text: "Sign In",
              onPressed: () {
                Navigator.push(
                  context,
                  PageRouteBuilder(
                      pageBuilder: (context, animation, secondaryAnimation) =>
                          Signinpage(),
                      transitionsBuilder:
                          (context, animation, secondaryAnimation, child) {
                        return ScaleTransition(
                          scale: animation,
                          child: child,
                        );
                      },
                      transitionDuration: Duration(milliseconds: 500)),
                );
              }),
          // button_Wid(text: "Sign In", w: Sign_page()),
        ],
      ),
    );
  }
}
