import 'package:flutter/material.dart';

class myappbar extends StatelessWidget {
  const myappbar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("title"),
      centerTitle: true,
    );
  }
}
