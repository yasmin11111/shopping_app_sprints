import 'package:flutter/material.dart';

class button_Wid extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  button_Wid({
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        minimumSize: Size(360, 50),
        backgroundColor: Color.fromARGB(255, 215, 170, 247),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          fontFamily: "Suwannaphum",
          fontWeight: FontWeight.bold,
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    );
  }
}
