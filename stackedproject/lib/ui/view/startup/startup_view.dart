import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedproject/app/routes_import.gr.dart';
import 'package:stackedproject/ui/view/home/home_viewmodel.dart';
import 'package:stackedproject/ui/view/startup/startup_viewmodel.dart';


@RoutePage()
class StartupView extends StatelessWidget {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<StartupViewModel>.reactive(
        builder: (context, model, child){
          return Scaffold(
            body: Center(child:Text(model.title)),
            floatingActionButton: FloatingActionButton(onPressed: (){
              AutoRouter.of(context).push(const HomeViewRoute());},
            ),
          );
        },
        viewModelBuilder: ()=> StartupViewModel());
  }
}
