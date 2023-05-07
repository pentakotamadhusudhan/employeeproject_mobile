import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stackedproject/app/routes_import.gr.dart';
import 'package:stackedproject/ui/view/Votersearch/votersearch_viewmodel.dart';
import 'package:stackedproject/ui/view/Votersearch/votersearchscreen.dart';
import 'package:stackedproject/ui/view/home/home_viewmodel.dart';
import 'package:stackedproject/ui/view/startup/startup_viewmodel.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import '../../../custom_widgets/headerappbar.dart';


@RoutePage()
class VoterSearchView extends StatelessWidget {
  const VoterSearchView({Key? key,
    // this.selectedValue,
  }) : super(key: key);

  // final String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<VoterViewModel>.reactive(
        builder: (context, model, child){
          model.getapi;

          return Scaffold(
            appBar: headerappbar(),
            body:Center(child: SingleChildScrollView(scrollDirection: Axis.horizontal,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                Text("Consitutency",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                SizedBox(height: 20,),
                DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    hint: Text(
                      'Select the Consitutency',
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).hintColor,
                      ),
                    ),
                    items: model.voter.result
                        ?.map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: FittedBox(
                        child:Text(
                        item,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),)
                    ))
                        .toList(),
                    value: model.consitutencyselection,

                    onChanged: (value) {
                      print(value);

                      model.consitutencyselection =value;
                      model.getsection;
                    },
                    buttonStyleData: const ButtonStyleData(
                      height: 40,
                      width: 280,
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 80,
                    ),
                  ),
                ),
                  SizedBox(height: 20,),
                  Text("Polling Station ",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  SizedBox(height: 20,),
                DropdownButtonHideUnderline(
                  child: DropdownButton2(
                    hint: Text(
                      'Select the PolingStation',
                      style: TextStyle(
                        fontSize: 14,
                        color: Theme.of(context).hintColor,
                      ),
                    ),
                    items: model.section.result
                        ?.map((item) => DropdownMenuItem<String>(
                      value: item,
                      child: FittedBox(child:Text(
                        item,
                        overflow: TextOverflow.ellipsis,
                        maxLines: 4,
                        style: const TextStyle(
                          fontSize: 14,
                        ),
                      ),)
                    ))
                        .toList(),
                    value: model.pollingstationselection,
                    onChanged: (value) {
                      print(value);
                      model.pollingstationselection = value;

                    },
                    buttonStyleData: const ButtonStyleData(
                      height: 40,
                      width: 280,
                    ),
                    menuItemStyleData: const MenuItemStyleData(
                      height: 80,
                    ),
                  ),
                ),
                  SizedBox(height: 20,),
                  Text("Section No and Name",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                  SizedBox(height: 20,),
                  DropdownButtonHideUnderline(
                    child: DropdownButton2(
                      hint: Text(
                        'Select the section',
                        style: TextStyle(
                          fontSize: 14,
                          color: Theme.of(context).hintColor,
                        ),
                      ),
                      items: model.section.result
                          ?.map((item) => DropdownMenuItem<String>(
                          value: item,
                          child: FittedBox(child:Text(
                            item,
                            overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                            style: const TextStyle(
                              fontSize: 14,
                            ),
                          ),)
                      ))
                          .toList(),
                      value: model.sectionselection,
                      onChanged: (value) {
                        print(value);
                        model.sectionselection = value;

                      },
                      buttonStyleData: const ButtonStyleData(
                        height: 40,
                        width: 280,
                      ),
                      menuItemStyleData: const MenuItemStyleData(
                        height: 80,
                      ),
                    ),
                  ),
              ],)
            ),),
            floatingActionButton: FloatingActionButton(onPressed: (){
              AutoRouter.of(context).push(const HomeViewRoute());},
            ),
          );
        },
        viewModelBuilder: ()=> VoterViewModel());
  }
}
