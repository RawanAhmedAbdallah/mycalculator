import 'package:flutter/material.dart';
import 'package:mycalculator/widgets/calc_btn.dart';

void main() {
  runApp(const CalculatorApp());
}

class CalculatorApp extends StatefulWidget {
  const CalculatorApp({Key? key}) : super(key: key);

  @override
  State<CalculatorApp> createState() => _CalculatorAppState();
}

class _CalculatorAppState extends State<CalculatorApp> {
  int first = 0 ;
  int second = 0;
  String textToDisplay = '';
  String opp = '';
  String result = '';

  void buildbutton(String btnText) {
    if (btnText == 'AC') {
      result = '';
      textToDisplay = '';
      first = 0;
      second = 0;
    } else if (
    btnText == '+'
        || btnText == '-'
        || btnText == 'x'
        || btnText == '/') {
      first = int.parse(textToDisplay);
      result = '';
      opp = btnText;
    } else if (btnText == '=') {
      second = int.parse(textToDisplay);
      if (opp == '+') {
        result = (first + second).toString();
      }
      if (opp == '-') {
        result = (first - second).toString();
      }
      if (opp == 'x') {
        result = (first * second).toString();
      }
      if (opp == '/') {
        result = (first / second).toString();
      }
    } else {
      result= int.parse(textToDisplay + btnText).toString();
    }
    setState((){
      textToDisplay = result;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MyCalculator',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Calculator' ,
            style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),),
          centerTitle: true,
          backgroundColor: const Color(0xFFEC255A),
        ),

        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
          //Container(
          //  padding: const EdgeInsets.only(right: 12),
          //  child: const Text(
          //    '0',
          //    style: TextStyle(
          //      fontSize: 20,
          //      color: Color(0xFF45526C),
          //    ),
          //  ),
          //),
            Expanded(
              flex: 3,
              child: Container(
                alignment: const Alignment(1.0,1.0),
                child:  Padding(
                  padding: const EdgeInsets.all(12),
                  child: Text(
                    textToDisplay,
                    style: const TextStyle(
                      fontSize: 40,
                      color:  Color(0xFF292C6D)
                    ),
                  ),
                ),
              ),
            ),

            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children:  [
                  Calc_Btn(text: '9', fColor: 0xFFFAEDF0, textColor: 0xFF292C6D, textSize: 20, callback:buildbutton),
                  Calc_Btn(text: '8', fColor: 0xFFFAEDF0, textColor: 0xFF292C6D, textSize: 20, callback:buildbutton),
                  Calc_Btn(text: '7', fColor: 0xFFFAEDF0, textColor: 0xFF292C6D, textSize: 20, callback:buildbutton),
                  Calc_Btn(text: '+', fColor: 0xFF292C6D, textColor: 0xFFFAEDF0, textSize: 20, callback:buildbutton),
                ],
              ),
            ),

            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Calc_Btn(text: '6', fColor: 0xFFFAEDF0, textColor: 0xFF292C6D, textSize: 20, callback:buildbutton),
                  Calc_Btn(text: '5', fColor: 0xFFFAEDF0, textColor: 0xFF292C6D, textSize: 20, callback:buildbutton),
                  Calc_Btn(text: '4', fColor: 0xFFFAEDF0, textColor: 0xFF292C6D, textSize: 20, callback:buildbutton),
                  Calc_Btn(text: '-', fColor: 0xFF292C6D, textColor: 0xFFFAEDF0, textSize: 20, callback:buildbutton),
                ],
              ),
            ),

            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Calc_Btn(text: '3', fColor: 0xFFFAEDF0, textColor: 0xFF292C6D, textSize: 20, callback:buildbutton),
                  Calc_Btn(text: '2', fColor: 0xFFFAEDF0, textColor: 0xFF292C6D, textSize: 20, callback:buildbutton),
                  Calc_Btn(text: '1', fColor: 0xFFFAEDF0, textColor: 0xFF292C6D, textSize: 20, callback:buildbutton),
                  Calc_Btn(text: 'x', fColor: 0xFF292C6D, textColor: 0xFFFAEDF0, textSize: 20, callback:buildbutton),
                ],
              ),
            ),

            Expanded(
              flex: 1,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Calc_Btn(text: '0', fColor: 0xFFFAEDF0, textColor: 0xFF292C6D, textSize: 20, callback:buildbutton),
                  Calc_Btn(text: 'AC', fColor: 0xFF292C6D, textColor: 0xFFFAEDF0,textSize: 20, callback:buildbutton),
                  Calc_Btn(text: '=', fColor: 0xFF292C6D, textColor: 0xFFFAEDF0, textSize: 20, callback:buildbutton),
                  Calc_Btn(text: '/', fColor: 0xFF292C6D, textColor: 0xFFFAEDF0, textSize: 20, callback:buildbutton),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}




