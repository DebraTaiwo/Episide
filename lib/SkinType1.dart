import 'package:flutter/material.dart';
import 'package:epidise/SkinType2.dart';

const activeCardColor = Colors.grey;
const inactiveCardColor = Colors.tealAccent;

enum Answer {
  Answer1, Answer2, Answer3, Answer4, Answer5
}

class SkinType1 extends StatefulWidget {
  const SkinType1({super.key});

  @override
  State<SkinType1> createState() => _SkinType1State();
}

class _SkinType1State extends State<SkinType1> {
  Color Answer1 = inactiveCardColor;
  Color Answer2 = inactiveCardColor;
  Color Answer3 = inactiveCardColor;
  Color Answer4 = inactiveCardColor;
  Color Answer5 = inactiveCardColor;

  void updateColor(Answer selectedAnswer) {
    if (selectedAnswer == Answer.Answer1) {
      if (Answer1 == inactiveCardColor) {
        Answer1 = activeCardColor;
      } else {
        Answer1 = inactiveCardColor;
      }
    }
    if (selectedAnswer == Answer.Answer2) {
      if (Answer2 == inactiveCardColor) {
        Answer2 = activeCardColor;
      } else {
        Answer2 = inactiveCardColor;
      }
    }
    if (selectedAnswer == Answer.Answer3) {
      if (Answer3 == inactiveCardColor) {
        Answer3 = activeCardColor;
      } else {
        Answer3 = inactiveCardColor;
      }
    }
    if (selectedAnswer == Answer.Answer4) {
      if (Answer4 == inactiveCardColor) {
        Answer4 = activeCardColor;
      } else {
        Answer4 = inactiveCardColor;
      }
    }
    if (selectedAnswer == Answer.Answer5) {
      if (Answer5 == inactiveCardColor) {
        Answer5 = activeCardColor;
      } else {
        Answer5 = inactiveCardColor;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        leading: MaterialButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios, color: Colors.black)),
        backgroundColor: Colors.grey[100],
        elevation: 0.0,
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'How would you describe your skin type?',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 5),
            Text('You can select multiple options as well',
                style: TextStyle(fontSize: 15)),
            SizedBox(height: 20),
            ReusableCard(
                labelText: 'OILY',
                onpress: () {
                  setState(() {
                    updateColor(Answer.Answer1);
                  });
                },
                colour: Answer1),
            SizedBox(height: 20),
            ReusableCard(labelText: 'DRY', onpress: () {
              setState(() {
                updateColor(Answer.Answer2);
              });
            }, colour: Answer2),
            SizedBox(height: 20),
            ReusableCard(
                labelText: 'COMBINATION', onpress: () {
                  setState(() {
                    updateColor(Answer.Answer3);
                  });
            }, colour: Answer3),
            SizedBox(height: 20),
            ReusableCard(
                labelText: 'SENSITIVE', onpress: () {
                  setState(() {
                    updateColor(Answer.Answer4);
                  });
            }, colour: Answer4),
            SizedBox(height: 20),
            ReusableCard(
                labelText: 'NOT SURE', onpress: () {
                  setState(() {
                    updateColor(Answer.Answer5);
                  });
            }, colour: Answer5),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 50),
              child: ReusableCard(
                  labelText: 'NEXT',
                  onpress: () {
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => SkinType2()));
                  },
                  colour: Colors.teal),
            ),
          ],
        ),
      ),
    );
  }
}

class ReusableCard extends StatelessWidget {
  ReusableCard(
      {required this.labelText, required this.onpress, required this.colour});

  final String labelText;
  final Function() onpress;
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Center(
            child: MaterialButton(
                color: colour,
                height: 40,
                minWidth: 300,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15))),
                child: Text(labelText),
                onPressed: onpress),
          ),
        ],
      ),
    );
  }
}
