import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../app/routes_import.gr.dart';
import '../resoucres/compounds/color.dart';
import 'headerappbar.dart';


class Analytics extends StatefulWidget {
  const Analytics({Key? key}) : super(key: key);

  @override
  State<Analytics> createState() => _AnalyticsState();
}

class _AnalyticsState extends State<Analytics> {
  int _selectedItem = 0;
  String? gender;

  @override
  void initState() {

    // TODO: implement initState
    super.initState();

  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.red,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                label: "Home",
                icon: GestureDetector(
                    onTap: () {
      AutoRouter.of(context).push(const StartupViewRoute());
                      // AutoRouter.Navigator.pushNamed(context, '/start');
                    },
                    child: Icon(Icons.home, color: AppColors.Blackcolor))),
            BottomNavigationBarItem(
                label: "Analytics",
                icon: Icon(
                  Icons.analytics,
                  color: AppColors.redColor,
                )),
            BottomNavigationBarItem(
                label: "LOGOUT",
                icon: Icon(
                  Icons.logout,
                  color: AppColors.redColor,
                )),
          ],
          currentIndex: _selectedItem,
          onTap: (setvalue) {
            setState(() {
              _selectedItem = setvalue;
            });
          },
        ),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            headerappbar(),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "Constituency :",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 50,
                          width: 200,
                          margin: const EdgeInsets.all(20.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                hintText: "Constituency"),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "PollingStation/\n"
                              "Village :",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 50,
                          width: 200,
                          margin: const EdgeInsets.only(left: 14),
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                hintText: "PollingStation/Village"),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text(
                          "Gender :",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Expanded(
                          child: RadioListTile(
                            title: const Text("Male"),
                            value: "male",
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value.toString();
                              });
                            },
                          ),
                        ),
                        Expanded(
                          child: RadioListTile(
                            title: const Text("Female"),
                            value: "female",
                            groupValue: gender,
                            onChanged: (value) {
                              setState(() {
                                gender = value.toString();
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "Name :",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Container(
                          height: 50,
                          width: 250,
                          margin: const EdgeInsets.all(20.0),
                          child: TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                hintText: "Name"),
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                              overlayColor:
                              MaterialStateProperty.resolveWith<Color?>(
                                    (Set<MaterialState> states) {
                                  if (states.contains(MaterialState.pressed)) {}
                                  return null;
                                },
                              ),
                              backgroundColor: MaterialStateColor.resolveWith(
                                      (states) => Colors.white),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                      side: const BorderSide(
                                          color: Colors.black)))),
                          child: const Text(
                            "Search",
                            style: TextStyle(fontSize: 23, color: Colors.black),
                          ),
                        ),
                      ],
                    )
                  ]),
            )
          ],
        ));
  }
}