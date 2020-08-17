import 'package:bmi_calculator/Calculate.dart';
import 'package:bmi_calculator/Result.dart';
import 'package:bmi_calculator/formate.dart';
import 'package:flutter/material.dart';

enum Gender {
  Male,
  Female,
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender;

  int height = 180;
  double minHeight = 120;
  double maxHeight = 220;

  int weight = 60;
  int age = 28;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1D1E33).withOpacity(.8),
      appBar: AppBar(
        backgroundColor: containerColor,
        title: Center(child: Text("BMI INDIA", style: TextStyle(fontSize: 40))),
      ),
      body: Column(
        children: [
          Row(
            children: [
              ///  ****************  MALE   ***************
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = Gender.Male;
                  });
                },
                child: Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 20, top: 20),
                    decoration: BoxDecoration(
                      color: inActiveColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: selectedGender == Gender.Male
                        ? activeHeight
                        : inActiveHeight,
                    width: selectedGender == Gender.Male
                        ? activeWidth
                        : inActiveWidth,
                    child: Padding(
                      padding: EdgeInsets.only(top: 18.0),
                      child: Column(
                        children: [
                          Image.network(
                            "https://www.iconsdb.com/icons/preview/white/male-xxl.png",
                            width: 100,
                            color: selectedGender == Gender.Male
                                ? Colors.orange
                                : Colors.white,
                            height: 100,
                          ),
                          SizedBox(height: 30),
                          Text(
                            "Male",
                            style: label,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              /// *********** FEMALE
              GestureDetector(
                onTap: () {
                  setState(() {
                    selectedGender = Gender.Female;
                  });
                },
                child: Expanded(
                  child: Container(
                    margin: EdgeInsets.only(left: 20, top: 20),
                    decoration: BoxDecoration(
                      color: inActiveColor,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    height: selectedGender == Gender.Female
                        ? activeHeight
                        : inActiveHeight,
                    width: selectedGender == Gender.Female
                        ? activeWidth
                        : inActiveWidth,
                    child: Padding(
                      padding: EdgeInsets.only(top: 18.0),
                      child: Column(
                        children: [
                          Image.network(
                            "https://www.iconsdb.com/icons/preview/white/female-xxl.png",
                            height: 100,
                            width: 100,
                            color: selectedGender == Gender.Female
                                ? Colors.blue
                                : Colors.white,
                          ),
                          SizedBox(height: 30),
                          Text("Female", style: label),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),

          /// ***************   Range Slider WEIGHT
          Expanded(
            flex: 4,
            child: Container(
              margin: EdgeInsets.all(15),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              decoration: BoxDecoration(
                color: containerColor,
                borderRadius: BorderRadius.circular(10),
              ),
              width: double.infinity,
              child: Column(
                children: [
                  Text("Height", style: label),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        height.toString(),
                        style: buttonStyle,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        "cm",
                        style: label,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      activeTrackColor: Color(0xFFEB1555),
                      inactiveTrackColor: Color(0xFF8d8e98),
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x29EB1555),
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 15),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: minHeight,
                      max: maxHeight,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),

          ///******************   Age   & WEIGHT   ************************
          Row(
            children: [
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 200,
                  width: 170,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Weight", style: label),
                      Text(
                        weight.toString(),
                        style: buttonStyle,
                      ),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                weight++;
                              });
                            },
                            child: Button(
                              icons: Icon(
                                Icons.add,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                weight--;
                              });
                            },
                            child: Button(
                              icons: Icon(
                                Icons.remove,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: containerColor,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  height: 200,
                  width: 170,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Age", style: label),
                      Text(age.toString(), style: buttonStyle),
                      Row(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                age++;
                              });
                            },
                            child: Button(
                              icons: Icon(
                                Icons.add,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                age--;
                              });
                            },
                            child: Button(
                              icons: Icon(
                                Icons.remove,
                                size: 40,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),

          /// Calculate Button
          Expanded(
            child: RaisedButton(
              onPressed: () {
                Calculator calc = Calculator(height, weight);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ResultPage(
                            bmiReslut: calc.calculatorBMI(),
                            resultTest: calc.getResult(),
                            interpretation: calc.getInterpertation())));
              },
              color: buttonColor,
              child: CalculateButton(buttonText: 'Calculate'),
            ),
          ),
        ],
      ),
    );
  }
}

class Button extends StatelessWidget {
  final Icon icons;
  final Colors myColors;

  const Button({this.icons, this.myColors});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: buttonColor,
        borderRadius: BorderRadius.all(Radius.circular(150)),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.5),
            blurRadius: 10,
          ),
        ],
      ),
      child: icons,
    );
  }
}

class CalculateButton extends StatelessWidget {
  final String buttonText;

  const CalculateButton({Key key, this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Center(
        child: Text(
          buttonText,
          style: TextStyle(fontSize: 50, color: Colors.black),
        ),
      ),
    );
  }
}
