import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/icon_content.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/components/round_icon_bittom.dart';
import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:bmi_calculator/utils/calculate_bmi.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';


enum Gender {
  Male,
  Female,
  Default,
}

class CalculatorScreen extends StatefulWidget {
  @override
  CalculatorScreenState createState() => CalculatorScreenState();
}



class CalculatorScreenState extends State<CalculatorScreen> {
  Gender selectedGender= Gender.Default;
  int height = 180;
  int weight = 60;
  int age = 20;


@override 
Widget build(BuildContext context) {
  return Scaffold(
    appBar: AppBar(
     title: Text('BMI CALCULATOR'),
  ),
  body: Column(
    crossAxisAlignment: CrossAxisAlignment.stretch,
    children: <Widget>[
      Expanded(child: Row(children: <Widget>[
        Expanded(child: ReusableCard(onPress: () {
          setState(() {
            selectedGender = Gender.Male;
          });
        },
        colour: selectedGender == Gender.Male
        ? kActiveCardColour
        : kInactiveCardColour,
        cardChild: IconContent (
          icon: Icons.male,
          label: 'MALE',
          ),
        ),
        ),
        Expanded(child: ReusableCard(onPress: () {
          setState(() {
            selectedGender = Gender.Female;
          });
        },
        colour: selectedGender == Gender.Female
        ? kActiveCardColour
        : kInactiveCardColour,
        cardChild: IconContent (
          icon: Icons.female,
          label: 'FEMALE',
          ),
        ),
        ),
      ],
      ),),
      Expanded(child: ReusableCard(
      colour: kActiveCardColour,
      cardChild: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'HEIGHT',
            style: klabelTextStyle,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: <Widget>[
              Text(
                height.toString(),
                style: kNumberTextStyle,
              )
            ],
          ),
          SliderTheme(data: SliderTheme.of(context).copyWith(
            inactiveTrackColor: Colors.white,
            thumbColor: Color(0XFF8D8E98),
            overlayColor: Color(0x29EB1555),
            thumbShape: 
            RoundSliderThumbShape(enabledThumbRadius: 15.0),
            overlayShape: 
            RoundSliderOverlayShape(overlayRadius: 30.0),
            ), 
            child: Slider(
              value: height.toDouble(),
              min: 120.0,
              max: 220.0,
              onChanged: (double newValue){
                setState(() {
                  height = newValue.round();
                });
              },
            ),
           ),
        ],
      ),),
      ),
      Expanded(child: Row(
        children: <Widget>[
        Expanded(child: ReusableCard(
          colour: kActiveCardColour,
        cardChild: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('WEIGHT',
          style: klabelTextStyle,
          ),
          Text(weight.toString(),
          style: klabelTextStyle,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RoundIconButton(icon: Icons.minimize_rounded,
              onPressed: (){
                setState((){
                  weight--;
                });
              },
              ),
              SizedBox(
                width: 10.0,
                
              ),
              RoundIconButton(icon: Icons.add,
              onPressed: (){
                setState(() {
                  weight++;
                });
              },)
            ],
          )
        ],),
        ),),
        Expanded(child: ReusableCard(
          colour: kActiveCardColour,
        cardChild: Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('AGE',
          style: klabelTextStyle,
          ),
          Text(age.toString(),
          style: klabelTextStyle,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              RoundIconButton(icon: Icons.minimize_rounded,
              onPressed: (){
                setState((){
                  age--;
                });
              },
              ),
              SizedBox(
                width: 10.0,
                
              ),
              RoundIconButton(icon: Icons.add,
              onPressed: (){
                setState(() {
                  age++;
                });
              },)
            ],
          )
        ],),
        ),),
      ],)),
      BottomButton(buttonTitle: 'CALCULATE',
    onTap: (){
      BmiLogic calc =
      BmiLogic(height: height, weight: weight);
      Navigator.push(context,
      MaterialPageRoute(
        builder: (context) => ResultsPage(
        bmiResult:calc.calculateBMI(),
        resultText: calc.getResut(),
        interpretation: calc.getInterpretation(),
      ),
      ),
      );
    },
    ),
    ],
  ),

  );
}



}