import 'package:flutter/material.dart';

class SecodnPage extends StatelessWidget {

  const SecodnPage({super.key });

  @override
  Widget build(BuildContext context) {
    final surname = ModalRoute.of(context)!.settings.arguments ;
    return Scaffold(
      appBar: AppBar(title: Text("Welcome , Mr. $surname"),),
    );
  }
}