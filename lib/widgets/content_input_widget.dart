import 'package:flutter/material.dart';

class ContentInputWidget extends StatelessWidget {
  ContentInputWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20),
      child: TextField(
        // obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          contentPadding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          labelText: '',
          hintText: '오늘의 할일을 적어 보세요!',
        ),
      ),
    );
  }
}
