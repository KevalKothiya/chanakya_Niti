import 'dart:convert';

import 'package:departure/modal/globals.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Shloka_Provider extends ChangeNotifier{
  String? data;
  List<Shloka_Model> shloka = [];


  Future<void> Initialization() async {
    data = await rootBundle.loadString("assests/json/chanakya_niti.json");
    List decoded =  jsonDecode(data!);
    shloka = decoded.map((e) => Shloka_Model.niti(data: e)).toList();
    notifyListeners();
  }
}