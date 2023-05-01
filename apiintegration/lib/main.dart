import 'package:apiintegration/repositiry/auth_repositry.dart';
import 'package:apiintegration/views/qualificationscreen.dart';
import 'package:apiintegration/views/workexper.dart';
import "package:flutter/material.dart";
import 'package:provider/provider.dart';
import 'package:apiintegration/views/screen1.dart';
import 'package:apiintegration/views/home_screen.dart';
import 'package:apiintegration/utils/routes.dart';
import 'package:apiintegration/viewmodels/authviewmodels.dart';
import 'views/employeeregisterscreen.dart';
import 'views/projectscreen.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(providers: [
      ChangeNotifierProvider(create: (_)=> AuthViewModels())
    ],
        child: MaterialApp(
      routes: {
        myroutes.homepage:(context){return HomeScreen();},
        myroutes.register:(context){return EmployeeRegisterScreen();},
        myroutes.project:(context){return ProjectScreen();},
        myroutes.qualificaton:(context){return QualificationScreen();},
        myroutes.work:(context){return WorkScreen();},

      },
      home: myapp(),
    ),
    );
  }
}
