import 'package:flutter/material.dart';



class HomeProvider extends ChangeNotifier {
 
bool loginEnabled=false;

login(){
  loginEnabled=!loginEnabled;
  notifyListeners();
}

}
