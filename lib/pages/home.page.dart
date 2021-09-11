
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
                    button(text: "9", method: (){}, color: Colors.black54),
                    button(text: "8", method: (){}, color: Colors.black54),
                    button(text: "7", method: (){}, color: Colors.black54),
                    button(text: "÷", method: (){}, color: Colors.black54),
                    ElevatedButton(
                      onPressed: (){},
                      child: Icon(Icons.arrow_back_outlined),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black54),
                      ),
                    ),
                    button(text: "C", method: (){}, color: Colors.black54),
                  ]),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                    button(text: "4", method: (){}, color: Colors.black54),
                    button(text: "5", method: (){}, color: Colors.black54),
                    button(text: "6", method: (){}, color: Colors.black54),
                    button(text: "x", method: (){}, color: Colors.black54),
                    button(text: "(", method: (){}, color: Colors.black54),
                    button(text: ")", method: (){}, color: Colors.black54),
                  ]),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                    button(text: "3", method: (){}, color: Colors.black54),
                    button(text: "2", method: (){}, color: Colors.black54),
                    button(text: "1", method: (){}, color: Colors.black54),
                    button(text: "-", method: (){}, color: Colors.black54),
                    button(text: "sqrt", method: (){}, color: Colors.black54),
                    button(text: "√", method: (){}, color: Colors.black54),
                  ]),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                    button(text: "0", method: (){}, color: Colors.black54),
                    button(text: "1", method: (){}, color: Colors.black54),
                    button(text: "2", method: (){}, color: Colors.black54),
                    button(text: "+", method: (){}, color: Colors.black54),
                    button(text: "=", method: (){}, flexValue:2 ,color: Colors.black54),
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

