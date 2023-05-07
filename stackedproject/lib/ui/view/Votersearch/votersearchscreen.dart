import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';



class VoterSearchScreen extends StatefulWidget {
  const VoterSearchScreen({Key? key}) : super(key: key);

  @override
  State<VoterSearchScreen> createState() => _AnalyticsState();
}


String? x;

class _AnalyticsState extends State<VoterSearchScreen> {
  TextEditingController _Constituency=TextEditingController();
  TextEditingController _pollingstation=TextEditingController();
  TextEditingController _name=TextEditingController();
  int _selectedItem = 0;
  String? gender;
  bool _isLoading = true;
  String dropdownvalue = 'Madugula';
  String? dropdownvaluee;
  var constituency = ["Madugula","No data"];
  List pollingstation = ['madhu sudhan and proliar is a bad boy'];
  var items =[];


  @override
  void initState() {
    super.initState();
    _isLoading=true;

  }
  @override
  void setState(VoidCallback fn) {
    // TODO: implement setState
    _isLoading = true;
    super.setState(fn);
  }
  @override
  Widget build(BuildContext context) {
    // final authViewModel = Provider.of<AuthViewModel>(context);
    return Scaffold(

        body: ListView(
          scrollDirection: Axis.vertical,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,

                      children: [
                        const Text(
                          "Constituency ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(":",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
                        Container(
                          height: 50,
                          width: 280,
                          margin:
                          const EdgeInsets.only(top: 20, left: 17),
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                                color: Colors.grey,
                                style: BorderStyle.solid,
                                width: 1),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              elevation: 0,
                              value: dropdownvalue,
                              icon: const Icon(Icons.keyboard_arrow_down),
                              items: constituency.map((String items) {
                                return DropdownMenuItem(
                                    value: items, child: Text(items));
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "PollingStation/\n"
                              "Village ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(":",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
                        Container(
                          height: 50,
                          width: 280,
                          margin:
                          const EdgeInsets.only(top: 20, left: 17),
                          padding: const EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.0),
                            border: Border.all(
                                color: Colors.grey,
                                style: BorderStyle.solid,
                                width: 1),
                          ),
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton(
                              elevation: 0,
                              value: dropdownvaluee,
                              icon: const Icon(Icons.keyboard_arrow_down),
                              items: pollingstation.map((items) {
                                return DropdownMenuItem(
                                    value: items,
                                    child: FittedBox(child:Text(items,style: TextStyle(fontSize: 10),overflow: TextOverflow.clip,)));
                              }).toList(),
                              onChanged: (newValue) {
                                setState(() {
                                  dropdownvaluee = newValue! as String?;
                                });
                              },

                            ),
                          ),
                        ),
                      ],
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text(
                          "Gender ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(":",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),

                        Expanded(
                          child: RadioListTile(
                            title: const Text("Male"),
                            value: "MALE",
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
                            value: "FEMALE",
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
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          "Name ",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(":",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),),
                        Container(
                          height: 50,
                          width: 250,
                          margin: const EdgeInsets.all(20.0),
                          child: TextFormField(
                            controller: _name,
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
                          onPressed: () {
                            setState(() {
                              _isLoading = false;
                            });
                            print(dropdownvalue);
                            print(dropdownvaluee);
                            print(_name.text);
                            print(gender);
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateColor.resolveWith(
                                      (states) => Colors.white),
                              shape: MaterialStateProperty.all<
                                  RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                      side: const BorderSide(
                                          color: Colors.black)))),
                          child: _isLoading?Text(
                            "Search",
                            style: TextStyle(fontSize: 23, color: Colors.black),
                          ):CircularProgressIndicator(),
                        ),
                      ],
                    ),

                  ]),
            )
          ],
        ));
  }
}
