import 'package:apiintegration/viewmodels/authviewmodels.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../repositiry/auth_repositry.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModels>(context);
    return Scaffold(
      body: Text(authViewModel.toString()),
    );
  }
}
