import 'package:flutter/material.dart';
import 'package:apiintegration/custom_widgets/fromfile.dart';


class ProjectScreen extends StatefulWidget {
  const ProjectScreen({Key? key}) : super(key: key);

  @override
  State<ProjectScreen> createState() => _ProjectScreenState();
}

class _ProjectScreenState extends State<ProjectScreen> {
  TextEditingController name =TextEditingController();
  TextEditingController email =TextEditingController();
  TextEditingController desc =TextEditingController();
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
                  Center(child: Text("Personal Details",style: TextStyle(fontSize: 20),),),
                  custom_textfield(text: "Registration Id",controller: name,),
                  custom_textfield(text: "Title",controller: email),
                  custom_textfield(text: "Description",controller: desc),
                  SizedBox(height: 20,),
                  ElevatedButton(onPressed: (){
                    Navigator.pushNamed(context, '/qualification');
                    print(email.text);
                    print(name.text);
                  }, child: Text("Submitt"))
                ],)),)
    );
  }
}
