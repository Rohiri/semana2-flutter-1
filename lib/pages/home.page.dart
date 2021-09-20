
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:semanda2flutter1/widgets/button.dart';
//import 'package:flutter/cupertino.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String inputCalculator = '';
  String history = '';

  buttonClick(String text) {
    setState(() => inputCalculator += text);
  }

  void allClear(String text) {
    setState(() {
      history = '';
      inputCalculator = '';
    });
  }

  void clear(String text) {
    setState(() {
      inputCalculator = '';
    });
  }

  void evaluate(String text) {
    Parser p = Parser();
    Expression exp = p.parse(inputCalculator);
    ContextModel cm = ContextModel();

    setState(() {
      history = inputCalculator;
      inputCalculator = exp.evaluate(EvaluationType.REAL, cm).toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Calculator"),),
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
              color: Colors.grey,
              child: Text(
                history,
              ),
              //color: Colors.blue,
            )),
          Expanded(
            flex: 1,
            child: Container(
              alignment: Alignment.centerRight,
              color: Colors.black54,
              padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
              child: Column(
                children: [
                  Text(
                    inputCalculator,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: inputCalculator.length > 15 ? 20 : 38,
                    ),
                  ),
                ],
              ),
              //color: Colors.red,
            )),
          Expanded(
            flex: 2,
            child: Container(
              child: Column(
                children: [
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                    button(text: Text("9"), method: (){this.buttonClick('9');}, color: Colors.black54),
                    button(text: Text("8"), method: (){this.buttonClick('8');}, color: Colors.black54),
                    button(text: Text("7"), method: (){this.buttonClick('7');}, color: Colors.black54),
                    button(text: Text("÷"), method: (){this.buttonClick('%');}, color: Colors.black54),
                    button(text: Icon(Icons.arrow_back_outlined), method: (){}, color: Colors.black54),
                    button(text: Text("C"), method: (){this.clear('%');}, color: Colors.black54),
                  ]),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                    button(text: Text("4"), method: (){this.buttonClick('4');}, color: Colors.black54),
                    button(text: Text("5"), method: (){this.buttonClick('5');}, color: Colors.black54),
                    button(text: Text("6"), method: (){this.buttonClick('6');}, color: Colors.black54),
                    button(text: Text("x"), method: (){this.buttonClick('*');}, color: Colors.black54),
                    button(text: Text("("), method: (){this.buttonClick('(');}, color: Colors.black54),
                    button(text: Text(")"), method: (){this.buttonClick(')');}, color: Colors.black54),
                  ]),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                    button(text: Text("3"), method: (){this.buttonClick('3');}, color: Colors.black54),
                    button(text: Text("2"), method: (){this.buttonClick('2');}, color: Colors.black54),
                    button(text: Text("1"), method: (){this.buttonClick('1');}, color: Colors.black54),
                    button(text: Text("-"), method: (){this.buttonClick('-');}, color: Colors.black54),
                    button(text: Text("pow"), method: (){this.buttonClick('^');}, color: Colors.black54),
                    button(text: Text("√"), method: (){this.buttonClick('sqrt');}, color: Colors.black54),
                  ]),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
                    button(text: Text("0"), method: (){this.buttonClick('0');}, color: Colors.black54),
                    button(text: Text("1"), method: (){this.buttonClick('1');}, color: Colors.black54),
                    button(text: Text("2"), method: (){this.buttonClick('2');}, color: Colors.black54),
                    button(text: Text("+"), method: (){this.buttonClick('+');}, color: Colors.black54),
                    button(text: Text("="), method: (){this.evaluate('=');}, flexValue:2 ,color: Colors.green),
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

