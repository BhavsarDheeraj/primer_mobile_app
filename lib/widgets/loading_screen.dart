import 'package:flutter/material.dart';

class LoadingScreen extends StatelessWidget {
  final String message;

  LoadingScreen({@required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircularProgressIndicator(),
            SizedBox(height: 16,),
            Text(message, style: TextStyle(color: Colors.grey),),
          ],
        ),
      ),
    );
  }
}