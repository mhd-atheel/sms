import 'package:flutter/material.dart';

class TeacherScreen extends StatelessWidget {
  const TeacherScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.yellow,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}
