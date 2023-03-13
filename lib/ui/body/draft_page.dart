import 'package:flutter/material.dart';

class DraftPage extends StatelessWidget {
  const DraftPage({
    super.key,
    this.backgroundColor = Colors.pink,
    required this.body,
  });
  final Color backgroundColor;

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pumpkin_smash'),
        backgroundColor: backgroundColor,
      ),
      body: body,
    );
  }
}
