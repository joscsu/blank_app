import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final String message;

  Result({@required this.message});
  @override
  Widget build(BuildContext context) {
    return  Center(child: Text(this.message),);
  }
}