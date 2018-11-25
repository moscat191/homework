import 'package:flutter/material.dart';
import './model/activity_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'dart:io';


class AddPage extends StatelessWidget {

  String textWhat = "";

  void _handleSubmission(String text){
      textWhat = text;
  }

  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: <Widget>[
          TextField(
              decoration: InputDecoration(
              hintText: 'Please enter a search term'
            ),
            onSubmitted:  _handleSubmission,
          ),
          Center(
            child: Text(textWhat),
          )
        ],
      )
      
    );
  }
}
