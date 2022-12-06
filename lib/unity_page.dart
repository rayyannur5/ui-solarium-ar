import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class UnityPage extends StatelessWidget {
  const UnityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.transparent, elevation: 0),
      backgroundColor: const Color(0xff020239),
      body: Center(
        child: Text(
          'Place unity widget here',
          style: TextStyle(color: Colors.white, fontSize: 15),
        ),
      ),
    );
  }
}
