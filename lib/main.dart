import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MaterialApp(
      home: MyCalculator(),
    );
  }
}

class MyCalculator extends StatefulWidget {
  @override
  _MyCalculatorState createState() => _MyCalculatorState();
}

class _MyCalculatorState extends State<MyCalculator> {
  final _textEditingControllerFirstNumber = TextEditingController();
  final _textEditingControllerSecondNumber = TextEditingController();
  final _textEditingControllerAddition = TextEditingController();
  final _textEditingControllerSubtraction = TextEditingController();
  final _textEditingControllerMultiplication = TextEditingController();
  final _textEditingControllerDivision = TextEditingController();
  num firstNumber, secondNumber, addition, subtration, multiplication, division;

  @override
  void initState() {
    super.initState();
    print("initState");
  }

  @override
  void dispose() {
    print("dispose");
    super.dispose();
  }

  @override
  Widget build(BuildContext buildContext) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(1.0),
            ),
            TextField(
              controller: _textEditingControllerFirstNumber,
              decoration: InputDecoration(labelText: "Enter the first number."),
              style: TextStyle(fontSize: 16),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                // Fetching the numbers
                firstNumber =
                    num.tryParse(_textEditingControllerFirstNumber.text);
                secondNumber =
                    num.tryParse(_textEditingControllerSecondNumber.text);

                // Calculating
                addition = firstNumber + secondNumber;
                subtration = firstNumber - secondNumber;
                multiplication = firstNumber * secondNumber;
                division = firstNumber / secondNumber;

                // Assigning
                _textEditingControllerAddition.text = addition.toString();
                _textEditingControllerSubtraction.text = subtration.toString();
                _textEditingControllerMultiplication.text =
                    multiplication.toString();
                _textEditingControllerDivision.text = division.toString();
              },
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
            ),
            TextField(
              controller: _textEditingControllerSecondNumber,
              decoration:
                  InputDecoration(labelText: "Enter the second number."),
              style: TextStyle(fontSize: 16),
              keyboardType: TextInputType.number,
              onChanged: (value) {
                // Fetching the numbers
                firstNumber =
                    num.tryParse(_textEditingControllerFirstNumber.text);
                secondNumber =
                    num.tryParse(_textEditingControllerSecondNumber.text);

                // Calculating
                addition = firstNumber + secondNumber;
                subtration = firstNumber - secondNumber;
                multiplication = firstNumber * secondNumber;
                division = firstNumber / secondNumber;

                // Assigning
                _textEditingControllerAddition.text = addition.toString();
                _textEditingControllerSubtraction.text = subtration.toString();
                _textEditingControllerMultiplication.text =
                    multiplication.toString();
                _textEditingControllerDivision.text = division.toString();
              },
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
            ),
            TextField(
              controller: _textEditingControllerAddition,
              decoration: InputDecoration(labelText: "Addition"),
              style: TextStyle(fontSize: 16),
              readOnly: true,
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
            ),
            TextField(
              controller: _textEditingControllerSubtraction,
              decoration: InputDecoration(labelText: "Subtraction"),
              style: TextStyle(fontSize: 16),
              readOnly: true,
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
            ),
            TextField(
              controller: _textEditingControllerMultiplication,
              decoration: InputDecoration(labelText: "Multiplication"),
              style: TextStyle(fontSize: 16),
              readOnly: true,
            ),
            Padding(
              padding: const EdgeInsets.all(1.0),
            ),
            TextField(
              controller: _textEditingControllerDivision,
              decoration: InputDecoration(labelText: "Division"),
              style: TextStyle(fontSize: 16),
              readOnly: true,
            ),
          ],
        ),
      ),
    );
  }
}
