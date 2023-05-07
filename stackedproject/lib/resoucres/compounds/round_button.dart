import 'package:flutter/material.dart';

import 'color.dart';


class RoundButton extends StatelessWidget {


  final String title ;
  final bool loading ;
  final VoidCallback onPress ;


  const RoundButton({Key? key,
  required this.title,
  this.loading=true,
  required this.onPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return InkWell(
      onTap: onPress,
      child: Container(
        height: 30,
        width: 100,
        decoration: BoxDecoration(
          color: AppColors.whitecolor,
          borderRadius: BorderRadius.circular(20)
        ),
        child: Center(child:loading?  Text(title): CircularProgressIndicator(color: AppColors.Blackcolor,strokeWidth: 2.0,) ),
      ),
    );
  }
}

