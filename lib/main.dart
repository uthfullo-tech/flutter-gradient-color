import 'package:flutter/material.dart';
import 'package:test_app/ParentWidget.dart';

void main(){
  runApp(new MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){

    return new MaterialApp(

      title: 'Title',
      home: new ParentWidget(),
    );
  }
}






