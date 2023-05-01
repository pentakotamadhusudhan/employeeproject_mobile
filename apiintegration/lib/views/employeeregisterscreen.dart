import 'dart:convert';
import 'dart:io';

import 'package:image_picker/image_picker.dart';
import 'package:apiintegration/viewmodels/authviewmodels.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:apiintegration/custom_widgets/fromfile.dart';

class EmployeeRegisterScreen extends StatefulWidget {
  const EmployeeRegisterScreen({Key? key}) : super(key: key);

  @override
  State<EmployeeRegisterScreen> createState() => _EmployeeRegisterScreenState();
}

class _EmployeeRegisterScreenState extends State<EmployeeRegisterScreen> {
  XFile? image;
  final ImagePicker picker = ImagePicker();
  TextEditingController name =TextEditingController();
  TextEditingController email =TextEditingController();
  TextEditingController mobile =TextEditingController();
  TextEditingController address =TextEditingController();
  TextEditingController age =TextEditingController();
  TextEditingController gender =TextEditingController();
  TextEditingController house =TextEditingController();
  TextEditingController street =TextEditingController();
  TextEditingController city =TextEditingController();
  TextEditingController state =TextEditingController();
  TextEditingController photo =TextEditingController();

  Future getImage(ImageSource media) async {
    var img = await picker.pickImage(source: media);

    setState(() {
      image = img;
    });
  }

  void myAlert() {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
            title: Text('Please choose media to select'),
            content: Container(
              height: MediaQuery.of(context).size.height / 6,
              child: Column(
                children: [
                  ElevatedButton(
                    //if user click this button, user can upload image from gallery
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.gallery);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.image),
                        Text('From Gallery'),
                      ],
                    ),
                  ),
                  ElevatedButton(
                    //if user click this button. user can upload image from camera
                    onPressed: () {
                      Navigator.pop(context);
                      getImage(ImageSource.camera);
                    },
                    child: Row(
                      children: [
                        Icon(Icons.camera),
                        Text('From Camera'),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        });
  }


  @override
  Widget build(BuildContext context) {
    final authviewmodels = Provider.of<AuthViewModels>(context);

    return Scaffold(
      body:Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          image: DecorationImage(image: NetworkImage('https://marketplace.canva.com/EAEkOp3P8o0/1/0/900w/canva-yellow-pink-and-green-soft-watercolor-no-copy-phone-wallpaper-UOMNrqz1gfk.jpg')),
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
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(child: Text("Personal Details",style: TextStyle(fontSize: 20),),),
          custom_textfield(text: "Employee Name",controller: name,),
          custom_textfield(text: "Email",controller: email),
          custom_textfield(text: "Age",controller: age),
          custom_textfield(text: "Gender",controller: gender),
          custom_textfield(text: "Phone No",controller: mobile),
          custom_textfield(text: "Address ",controller: address),
          custom_textfield(text: "House No",controller: house),
          custom_textfield(text: "Street",controller: street),
          custom_textfield(text: "City ",controller: city),
          custom_textfield(text: "State ",controller: state),
          custom_textfield(text: "Photo ",controller: photo),
          Row(
              children:[

                ElevatedButton(
                  onPressed: () {
                    myAlert();
                  },
                  child: Text('Upload Photo'),
                ),
                SizedBox(
                  height: 10,
                ),
                //if image not null show the image
                //if image null show text
                image != null
                    ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Image.file(
                      //to show image, you type like this.
                      File(image!.path),
                      fit: BoxFit.cover,
                      width: MediaQuery.of(context).size.width,
                      height: 300,
                    ),
                  ),
                )
                    : Text(
                  "No Image",
                  style: TextStyle(fontSize: 20),
                ),

                ElevatedButton(onPressed: (){
            Navigator.pushNamed(context, '/project');
            final data =jsonEncode({
              "Name": name.text,
              "Email": email.text,
              "Age": age.text,
              "Gender": gender.text,
              "PhoneNo": mobile.text,
              "AddressDetails": address.text,
              "HouseNo": house.text,
              "Street": street.text,
              "City": city.text,
              "State": state.text,
              "Photo":photo.text
            });
            print(data);
            authviewmodels.postreg(data, context);

          }, child: Text("Submitt"))])
      ],)),)
    );
  }
}


