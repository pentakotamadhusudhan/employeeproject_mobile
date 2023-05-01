import 'package:flutter/cupertino.dart';
import 'package:apiintegration/repositiry/auth_repositry.dart';
import 'package:flutter/foundation.dart';

import '../models/Projectgetmodel.dart';


class AuthViewModels extends ChangeNotifier {
  final _myrepo = Authrespository();
  Projectgetmodel datamodel = Projectgetmodel();
  Future<void>getApicall(BuildContext context) async{
  _myrepo.gatapicall(context).then((value) {
    if(kDebugMode){
      print("get call view model: ${value.toString()}");
      datamodel = Projectgetmodel.fromJson(value);
    }
  }
  );
  }

  Future<dynamic> postreg(data,BuildContext context) async{
    _myrepo.getpostcall(data, context).then((value){
      if(kDebugMode){
        print("post call response ${value.toString()}");
      }
    });


  }
}