import 'package:flutter/material.dart';




PreferredSize headerappbar() {
  return PreferredSize(preferredSize: Size.fromHeight(200),

      child: Container(height: 180,
          color: Colors.yellow.shade700,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:[
                  CircleAvatar(
                    backgroundColor: Colors.yellow.shade700,
                    backgroundImage: AssetImage('assets/images/PP.png'),
                    radius: 55,
                  ),
                  SizedBox(height: 10,),
                  Text('Prasad Rao Pyla',style: TextStyle(fontWeight: FontWeight.bold),)
                ],),
              CircleAvatar(
                backgroundColor: Colors.yellow.shade700,
                backgroundImage: AssetImage('assets/images/tdp.png'),
                radius: 20,
              ),
              Text(
                'TELUGU DESAM PARTY',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              CircleAvatar(
                backgroundColor: Colors.yellow,
                backgroundImage: AssetImage("assets/images/TDPlogo.jpg"),
              ),

            ],
          ))
  );
}