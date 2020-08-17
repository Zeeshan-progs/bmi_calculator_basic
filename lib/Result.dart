import 'package:bmi_calculator/Input_Page.dart';
import 'package:bmi_calculator/formate.dart';
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
    if (resultTest == 'UNDERWEIGHT') {
      return UnderWeight();
    } else if (resultTest == 'NORMAL') {
      return Normal();
    } else {
      Overweight();
    }
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

class Overweight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          width: double.infinity,
//          color: Colors.cyanAccent[400],
          child: Column(
            children: [
              Image.asset("assets/overweight.png"),
//              ResultPage(),
              RaisedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: CalculateButton(
                  buttonText: ' Re - Calculate ',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UnderWeight extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
//          color: Colors.cyanAccent[400],
              child: Column(
                children: [
                  Image.asset("assets/under.png"),
                  RaisedButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: CalculateButton(
                      buttonText: ' Re - Calculate ',
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class Normal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Expanded(
          child: Container(
            width: double.infinity,
//            color: Colors.cyanAccent[400],
            child: Column(
              children: [
                Image.asset("assets/normal.png"),
                RaisedButton(
                  color: buttonColor,
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: CalculateButton(
                    buttonText: ' Re - Calculate ',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
