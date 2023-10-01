import 'package:flutter/material.dart';
class Emo extends StatelessWidget {
  final String emo;
  Emo(this.emo,{super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.blue,
      ),
      padding: EdgeInsets.all(16),
      child: Center(
        child: Text(
          emo,
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}
