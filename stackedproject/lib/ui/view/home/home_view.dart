

import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedproject/app/routes_import.gr.dart';
import 'package:stackedproject/ui/view/home/home_viewmodel.dart';
import 'package:stackedproject/ui/view/startup/startup_view.dart';

@RoutePage()
class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
        builder: (context, model, child){
          return Scaffold(
            body:
          Center(child: Column(children: [
              Text(model.title),
              SizedBox(height: 100,),
              Text(model.subtitle),
              ElevatedButton(
                  onPressed: (){
                    model.Countermethod();
                  },
                  child: Text("button1")),
            ElevatedButton(
                onPressed: (){
                  print("object");
                  AutoRouter.of(context).push(const VoterSearchViewRoute());
                },
                child: Text("button2")),

            ],),),
            floatingActionButton: FloatingActionButton(
                onPressed:() async{
                  // model.Countermethod();
                 await AutoRouter.of(context).push(const StartupViewRoute());
                }
            ),
          );
        },
        viewModelBuilder: ()=> HomeViewModel());
  }
}
