import 'package:flutter/material.dart';

class Student extends StatelessWidget {
  const Student({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.green,
        height: MediaQuery.of(context).size.height,
      ),
    );
  }
}
