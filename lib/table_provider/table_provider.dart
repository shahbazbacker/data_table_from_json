import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';

import '../models/table_model.dart';

class TableProvider extends ChangeNotifier{

  List<TableModel>? tableDataParsed;

  List<TableModel> getData(){
   final List<Map<String, dynamic>> tableData = [

      {

        "name":"your name1",

        "age":"Your age",

        "gender": "your Gender",

      },

      {

        "name":"your name2",

        "age":"Your age",

        "gender": "your Gender",

      },

      {

        "name":"your name3",

        "age":"Your age",

        "gender": "your Gender",

      }
    ];
  return  tableDataParsed = tableModelFromJson(json.encode(tableData));

  }


}