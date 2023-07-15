import 'package:bmi_calci/bottomButton.dart';
import 'package:bmi_calci/constants.dart';
import 'package:flutter/material.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {
ResultsPage({required this.resultText, required this.bmi, required this.resultInterpretation});
   String resultText='';
   String bmi='';
   String resultInterpretation='';


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xFF0F0F1E),
        appBar: AppBar(
          title: Text('BMI CALCULATOR', style: TextStyle(color: Colors.white)),
          centerTitle: true,
          backgroundColor: Color(0xFF0D0D1E),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Container(padding: EdgeInsets.only(left: 20),
                alignment: Alignment.bottomLeft,
                child: Text(
                  'Your Result',
                  style: kResultPageHeading,
                ),
              ),
            ),
            Expanded(flex: 5,
              child: Container(
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(10),
                color: kActiveCardColor,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      resultText.toUpperCase(),
                      // textAlign: TextAlign.center,
                      style: kStatusWord,
                    ),
                    Text(
                      bmi,
                      style: kStatisticResult,
                    ),
                    Text(
                      textAlign: TextAlign.center,
                      resultInterpretation,
                      style: kDescription,
                    ),
                  ],
                ),
              ),
            ),
            BottomButton(
              buttonTitle: ('RE-CALCULATE'),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => InputPage()));
              },
            )
          ],
        ),
      ),
    );
  }
}
