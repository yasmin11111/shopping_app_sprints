// // ignore_for_file: use_key_in_widget_constructors, camel_case_types

// import 'dart:convert';
// import 'dart:ffi';

// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';

// class textFeild_Wid extends StatelessWidget {
//   String Label;
//   String Hint;
//   Widget? icon;
//   bool flag;

//   textFeild_Wid(
//       {required this.Label, required this.Hint, this.flag = false, this.icon});

//   @override
//   Widget build(BuildContext context) {

//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: TextFormField(
//           validator: (value) {
//             if (value == null || value.isEmpty) {
//               return 'Please enter  $Label';
//             }
//             return null;
//           },
//           obscureText: flag,
//           decoration: InputDecoration(
//             suffixIcon: icon,
//             border: OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
//             labelText: '$Label',
//             hintText: '$Hint',
//           )),
//     );
//   }
// }
