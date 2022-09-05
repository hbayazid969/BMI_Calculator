import 'package:bmi/calculation.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isMale = true;
  int weight = 60;
  int age = 20;
  double height = 90;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff0A0E21),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xff0A0E21),
        centerTitle: true,
        title: Text(
          "BMI Calculator",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isMale = true;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(16),
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: isMale == true ? Colors.teal : Color(0xff4C4E5F),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.male,
                            size: 40,
                            color: Colors.white,
                          ),
                          Text(
                            "Male",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                  flex: 5,
                ),
                Expanded(
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        isMale = false;
                      });
                    },
                    child: Container(
                      margin: EdgeInsets.all(16),
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color:
                            isMale == false ? Colors.teal : Color(0xff4C4E5F),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.female,
                            size: 40,
                            color: Colors.white,
                          ),
                          Text(
                            "Female",
                            style:
                                TextStyle(color: Colors.white70, fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  ),
                  flex: 5,
                ),
              ],
            ),
            flex: 6,
          ),
          Expanded(
            child: Container(
              margin: EdgeInsets.all(16),
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff4C4E5F),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Height",
                    style: TextStyle(color: Colors.white70, fontSize: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    textBaseline: TextBaseline.alphabetic,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                      Text(
                        "${height.toStringAsFixed(0)}",
                        style: TextStyle(color: Colors.white, fontSize: 35),
                      ),
                      Text(
                        "CM",
                        style: TextStyle(
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                  SliderTheme(
                      data: SliderTheme.of(context).copyWith(
                          thumbShape:
                              RoundSliderThumbShape(enabledThumbRadius: 15.0),
                          overlayShape:
                              RoundSliderOverlayShape(overlayRadius: 20.0),
                          thumbColor: Colors.red,
                          overlayColor: Colors.pinkAccent,
                          activeTrackColor: Colors.white,
                          inactiveTrackColor: Colors.grey),
                      child: Slider(
                          min: 50,
                          max: 220,
                          value: height,
                          onChanged: (value) {
                            setState(() {
                              height = value;
                            });
                          }))
                ],
              ),
            ),
            flex: 6,
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(16),
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff4C4E5F),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Weight",
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                        Text(
                          "$weight",
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 35,
                              fontWeight: FontWeight.w700),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                if (weight > 0) {
                                  setState(() {
                                    weight--;
                                  });
                                }
                              },
                              child: Icon(Icons.remove),
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.white70,
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(15),
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              child: Icon(Icons.add),
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.white70,
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(15),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  flex: 5,
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(16),
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xff4C4E5F),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    padding: EdgeInsets.symmetric(vertical: 12),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Age",
                          style: TextStyle(
                            color: Colors.white70,
                          ),
                        ),
                        Text(
                          "$age",
                          style: TextStyle(
                              color: Colors.white70,
                              fontSize: 35,
                              fontWeight: FontWeight.w700),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            OutlinedButton(
                              onPressed: () {
                                if (age > 0) {
                                  setState(() {
                                    age--;
                                  });
                                }
                              },
                              child: Icon(Icons.remove),
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.white70,
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(15),
                              ),
                            ),
                            OutlinedButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              child: Icon(Icons.add),
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.white70,
                                shape: CircleBorder(),
                                padding: EdgeInsets.all(15),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  flex: 5,
                ),
              ],
            ),
            flex: 6,
          ),
          Expanded(
            child: InkWell(
              onTap: () {
                final cal =
                    Calculation(age: age, height: height, weight: weight);
                bmi = cal.getResult();

                showDialog(
                  context: context,
                  builder: (context) => new AlertDialog(
                    title: new Text('Your BMI is ${bmi.toStringAsFixed(0)}'
                        "${isMale == true ? "\n Gender : Male" : "Female"}"),
                    content: Text(bmi > 25
                        ? 'You are OverWeight'
                        : bmi > 18
                            ? "You are Normal"
                            : "You are Underweight"),
                    actions: <Widget>[
                      new FlatButton(
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true)
                              .pop(); // dismisses only the dialog and returns nothing
                        },
                        child: Container(
                            height: 30,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(child: new Text('OK'))),
                      ),
                    ],
                  ),
                );
              },
              child: Container(
                width: double.infinity,
                color: Colors.pink,
                alignment: Alignment.center,
                child: Text(
                  "Calculator",
                  style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
              ),
            ),
            flex: 2,
          ),
        ],
      ),
    );
  }

  var bmi;
}
