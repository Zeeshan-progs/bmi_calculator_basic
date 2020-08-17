import 'package:bmi_calculator/Input_Page.dart';
import 'package:bmi_calculator/formate.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultPage extends StatelessWidget {
  final String bmiReslut;
  final String resultTest;
  final String interpretation;

  ResultPage({
    @required this.bmiReslut,
    @required this.resultTest,
    @required this.interpretation,
  });

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("BMI RESULT ")),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                color: buttonColor,
              ),
              child: Center(
                child: Text('Calculated Result'),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              child: Column(
                children: [
                  Text(resultTest),
                  Text(interpretation),
                  Text(bmiReslut),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
