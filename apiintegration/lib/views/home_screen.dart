import 'package:apiintegration/custom_widgets/myapp_bar.dart';
import 'package:apiintegration/repositiry/auth_repositry.dart';
import 'package:apiintegration/viewmodels/authviewmodels.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final authViewModel = Provider.of<AuthViewModels>(context);
    var x=(authViewModel.getApicall(context));

    

    return Scaffold(
      appBar:AppBar(
        title: Text("title"),
        centerTitle: true,
      ),
      body: Center(child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context,index){
            return AlertDialog(content:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [

                Text("df"),

              ],)
            );
          }),),
    );
  }
}
