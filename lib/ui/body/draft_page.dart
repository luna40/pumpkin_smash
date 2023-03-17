import 'package:flutter/material.dart';

class DraftPage extends StatelessWidget {
  const DraftPage({
    super.key,
    required this.body,
  });

  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: body,
    );
  }
}
