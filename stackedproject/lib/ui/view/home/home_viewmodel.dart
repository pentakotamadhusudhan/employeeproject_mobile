import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';


class HomeViewModel extends BaseViewModel {
  String _title = "Home view model";
  String get title => _title+": ${ _counter.toString()}";
  String _subtitle = "Sample text ";
  String get subtitle => _subtitle+_counter.toString();
   int _counter = 0;
   int get counter =>_counter;

   void Countermethod(){
     _counter++;

     notifyListeners();
   }
}