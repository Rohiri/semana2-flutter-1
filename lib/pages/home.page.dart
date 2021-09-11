
import 'package:flutter/material.dart';
import 'package:semanda2flutter1/widgets/button.dart';
//import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator"),),
      body: Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              child: Row(
                children: [
                  Text("Zona Resultaods"),
                ],
              ),
              color: Colors.white10,
              height: 300,
          ),),
          Expanded(
            flex: 1,
            child: Container(
              child: Row(
                children: [
                  Text("Zona Resultaods"),
                ],
              ),
              color: Colors.white10,
          ),),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                    button(text: Text("9"), method: (){}, color: Colors.black54),
                    button(text: Text("8"), method: (){}, color: Colors.black54),
                    button(text: Text("7"), method: (){}, color: Colors.black54),
                    button(text: Text("÷"), method: (){}, color: Colors.black54),
                    button(text: Icon(Icons.arrow_back_outlined), method: (){}, color: Colors.black54),
                    button(text: Text("C"), method: (){}, color: Colors.black54),
                  ]),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                    button(text: Text("4"), method: (){}, color: Colors.black54),
                    button(text: Text("5"), method: (){}, color: Colors.black54),
                    button(text: Text("6"), method: (){}, color: Colors.black54),
                    button(text: Text("x"), method: (){}, color: Colors.black54),
                    button(text: Text("("), method: (){}, color: Colors.black54),
                    button(text: Text(")"), method: (){}, color: Colors.black54),
                  ]),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                    button(text: Text("3"), method: (){}, color: Colors.black54),
                    button(text: Text("2"), method: (){}, color: Colors.black54),
                    button(text: Text("1"), method: (){}, color: Colors.black54),
                    button(text: Text("-"), method: (){}, color: Colors.black54),
                    button(text: Text("sqrt"), method: (){}, color: Colors.black54),
                    button(text: Text("√"), method: (){}, color: Colors.black54),
                  ]),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                    button(text: Text("0"), method: (){}, color: Colors.black54),
                    button(text: Text("1"), method: (){}, color: Colors.black54),
                    button(text: Text("2"), method: (){}, color: Colors.black54),
                    button(text: Text("+"), method: (){}, color: Colors.black54),
                    button(text: Text("="), method: (){}, flexValue:2 ,color: Colors.green),
                  ]),
                ],
              ),
              color: Colors.white10,
          ),),
        ]
      )
    );
  }
}

