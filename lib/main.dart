import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.teal,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void Dicee (){
   setState(() {
                 leftDiceNumber= Random().nextInt(6)+1;
                 rightDiceNumber= Random().nextInt(6)+1;
               });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
      children: <Widget>[
       Expanded(
         child:  Padding(
           padding: const EdgeInsets.all(16.0),
           child: FlatButton(
             onPressed: (){
              Dicee();
             },
             child: Image.asset('images/dice$leftDiceNumber.png'),
           ),
         ),
        ),
       Expanded(
        child:  Padding(
          padding: const EdgeInsets.all(16.0),
          child: FlatButton(
            onPressed:  (){
              Dicee();
             },
            child: Image.asset('images/dice$rightDiceNumber.png'),
          ),
        ),
        ),
      ],
     ),
    );
  }
}


