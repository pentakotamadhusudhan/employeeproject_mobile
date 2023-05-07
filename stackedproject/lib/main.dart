import 'package:flutter/material.dart';
import 'package:stackedproject/app/routes_import.dart';
import 'package:stackedproject/ui/view/home/home_view.dart';
// import 'package:stackedproject/app/router.dart';
void main()=>runApp( MyApp());

class MyApp extends StatelessWidget {
   MyApp({Key? key}) : super(key: key);
  final _approuter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return
      MaterialApp.router(
      routerConfig: _approuter.config(),

    );
  }
}
