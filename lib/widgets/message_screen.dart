import 'package:flutter/material.dart';

class MessageScreen extends StatelessWidget {
  final String message;

  MessageScreen({@required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(message, style: TextStyle(color: Colors.grey, fontSize: 20, fontWeight: FontWeight.w500),),
      ),
    );
  }
}