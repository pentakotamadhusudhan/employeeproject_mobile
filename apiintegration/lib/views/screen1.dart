import 'package:apiintegration/viewmodels/authviewmodels.dart';
import 'package:apiintegration/views/home_screen.dart';
import 'package:apiintegration/views/secondscreen.dart';
import 'package:flutter/material.dart';
import 'package:apiintegration/custom_widgets/myapp_bar.dart';
// import 'package:provider/provider.dart'
import 'package:apiintegration/repositiry/auth_repositry.dart';
import 'package:provider/provider.dart';

class myapp extends StatefulWidget {
  const myapp({Key? key}) : super(key: key);

  @override
  State<myapp> createState() => _myappState();
}

class _myappState extends State<myapp> {
  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModels>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("title"),
        centerTitle: true,
      ),
      body: Center(child: ElevatedButton(onPressed: (){
        // authViewModel.getApicall(context);
        // Navigator.push(context, MaterialPageRoute(builder: (context) => SecondScreen()));
        Navigator.pushNamed(context, '/employeeregister');
        print("object");},child: Text("button"),),),
    );
  }
}
