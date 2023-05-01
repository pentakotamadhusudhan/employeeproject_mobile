import 'package:flutter/material.dart';
import 'package:apiintegration/custom_widgets/fromfile.dart';

class QualificationScreen extends StatefulWidget {
  const QualificationScreen({Key? key}) : super(key: key);

  @override
  State<QualificationScreen> createState() => _QualificationScreenState();
}

class _QualificationScreenState extends State<QualificationScreen> {
  TextEditingController qualificationName =TextEditingController();
  TextEditingController regid =TextEditingController();
  TextEditingController fromDate =TextEditingController();
  TextEditingController toDate =TextEditingController();
  TextEditingController precentage =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body:Container(

          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage("https://marketplace.canva.com/EAEkOp3P8o0/1/0/900w/canva-yellow-pink-and-green-soft-watercolor-no-copy-phone-wallpaper-UOMNrqz1gfk.jpg")),
              boxShadow: [
                // BoxShadow(blurRadius: 20,color: Colors.red,blurStyle: BlurStyle.outer),
                BoxShadow(blurRadius: 30,color: Colors.blue,blurStyle: BlurStyle.outer)
              ],
              shape: BoxShape.rectangle,
              border: Border.all(
                style: BorderStyle.solid,
                color: Colors.blueGrey,),
              borderRadius: BorderRadius.circular(30),
              color: Colors.white
          ),

          alignment: Alignment.center,
          child:Padding(
              padding: EdgeInsets.only(left: 40,right: 40),
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(child: Text("Qualification Details",style: TextStyle(fontSize: 20),),),
                  custom_textfield(text: "Registration Id",controller: regid,),
                  custom_textfield(text: "qualification Name",controller: qualificationName),
                  custom_textfield(text: "From Date",controller: fromDate),
                  custom_textfield(text: "To Date",controller: toDate),
                  custom_textfield(text: "Percentage",controller: precentage),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, '/work');
                    print(precentage.text);
                    print(toDate.text);
                  }, child: Text("Submitt"))
                ],)),)
    );
  }
}
