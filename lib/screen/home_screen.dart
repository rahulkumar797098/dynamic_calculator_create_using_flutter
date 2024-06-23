import 'package:dynamic_calculator_flutter/button.dart';
import 'package:dynamic_calculator_flutter/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var userInput = "";
  var answer = " ";
  bool isEqualPress = false;

  // Here we create function when click on button , show in input box //
  void buttonClick(String btnText) {
    setState(() {
      isEqualPress = false;
      if (btnText == "=") {
        equalPressOperation();
      } else if (btnText == "C") {
        userInput = " ";
        answer = " ";
      } else if (btnText == "D") {
        if (userInput.isNotEmpty) {
          userInput = userInput.substring(0, userInput.length - 1);
        } else if (userInput.isEmpty) {
          answer = " ";
        }
      } else if ("+-/.x%".contains(btnText)) {
        if (userInput.isNotEmpty &&
            "+-/.x%".contains(userInput[userInput.length - 1])) {
          userInput = userInput.substring(0, userInput.length - 1) + btnText;
        } else {
          userInput += btnText;
        }
      } else {
        userInput += btnText;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ...................... App Bar .......................//
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(
              Icons.menu,
              size: 40,
            ),
            // .............. Calculator Text .....................//
            Text(
              "Calculator",
              style: TextStyle(
                  fontSize: 30, color: appTitle, fontWeight: FontWeight.bold),
            ),

            //...............Setting icon .....................//
            Icon(
              Icons.settings,
              size: 40,
            )
          ],
        ),
        centerTitle: true,
      ),

      //   .....................BODY PART ...................................//
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // .............Input Box ...............//
                Container(
                  margin: EdgeInsets.only(right: 10),
                  alignment: Alignment.centerRight,
                  child: Text(
                    "$userInput",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: isEqualPress ? 30 : 50,
                        color: isEqualPress ? Colors.black54 : Colors.black),
                  ),
                ),

                // ............. Answer Box .................//
                Container(
                  margin: EdgeInsets.only(right: 10),
                  alignment: Alignment.centerRight,
                  child: Text("$answer",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: isEqualPress ? 50 : 30,
                          color: isEqualPress ? Colors.black : Colors.black54)),
                ),
              ],
            ),
          ),

          // ............  Calculator Button .................//
          // ................ Here we Call Button Widgets.....//

          Expanded(
              flex: 5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CalButton(
                        buttonText: "C",
                        buttonColor: appButtonDark,
                        buttonTap: () {
                          setState(() {
                            buttonClick("C");
                            equalPressOperation();
                          });
                        },
                      ),
                      CalButton(
                        buttonText: "D",
                        buttonColor: appButton,
                        buttonTap: () {
                          setState(() {
                            buttonClick("D");
                            equalPressOperation();
                          });
                        },
                      ),
                      CalButton(
                        buttonText: "%",
                        buttonColor: appButton,
                        buttonTap: () {
                          setState(() {
                            buttonClick("%");
                            equalPressOperation();
                          });
                        },
                      ),
                      CalButton(
                        buttonText: "/",
                        buttonColor: appButton,
                        buttonTap: () {
                          setState(() {
                            buttonClick("/");
                            equalPressOperation();
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CalButton(
                        buttonText: "7",
                        buttonColor: appButtonLight,
                        buttonTap: () {
                          setState(() {
                            buttonClick("7");
                            equalPressOperation();
                          });
                        },
                      ),
                      CalButton(
                        buttonText: "8",
                        buttonColor: appButtonLight,
                        buttonTap: () {
                          setState(() {
                            buttonClick("8");
                            equalPressOperation();
                          });
                        },
                      ),
                      CalButton(
                        buttonText: "9",
                        buttonColor: appButtonLight,
                        buttonTap: () {
                          setState(() {
                            buttonClick("9");
                            equalPressOperation();
                          });
                        },
                      ),
                      CalButton(
                        buttonText: "x",
                        buttonColor: appButton,
                        buttonTap: () {
                          setState(() {
                            buttonClick("x");
                            equalPressOperation();
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CalButton(
                        buttonText: "4",
                        buttonColor: appButtonLight,
                        buttonTap: () {
                          setState(() {
                            buttonClick("4");
                            equalPressOperation();
                          });
                        },
                      ),
                      CalButton(
                        buttonText: "5",
                        buttonColor: appButtonLight,
                        buttonTap: () {
                          setState(() {
                            buttonClick("5");
                            equalPressOperation();
                          });
                        },
                      ),
                      CalButton(
                        buttonText: "6",
                        buttonColor: appButtonLight,
                        buttonTap: () {
                          setState(() {
                            buttonClick("6");
                            equalPressOperation();
                          });
                        },
                      ),
                      CalButton(
                        buttonText: "-",
                        buttonColor: appButton,
                        buttonTap: () {
                          setState(() {
                            buttonClick("-");
                            equalPressOperation();
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CalButton(
                        buttonText: "1",
                        buttonColor: appButtonLight,
                        buttonTap: () {
                          setState(() {
                            buttonClick("1");
                            equalPressOperation();
                          });
                        },
                      ),
                      CalButton(
                        buttonText: "2",
                        buttonColor: appButtonLight,
                        buttonTap: () {
                          setState(() {
                            buttonClick("2");
                            equalPressOperation();
                          });
                        },
                      ),
                      CalButton(
                        buttonText: "3",
                        buttonColor: appButtonLight,
                        buttonTap: () {
                          setState(() {
                            buttonClick("3");
                            equalPressOperation();
                          });
                        },
                      ),
                      CalButton(
                        buttonText: "+",
                        buttonColor: appButton,
                        buttonTap: () {
                          setState(() {
                            buttonClick("+");
                            equalPressOperation();
                          });
                        },
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      CalButton(
                        buttonText: "0",
                        buttonColor: appButtonLight,
                        buttonTap: () {
                          setState(() {
                            buttonClick("0");
                            equalPressOperation();
                          });
                        },
                      ),
                      CalButton(
                        buttonText: "00",
                        buttonColor: appButtonLight,
                        buttonTap: () {
                          setState(() {
                            buttonClick("00");
                            equalPressOperation();
                          });
                        },
                      ),
                      CalButton(
                        buttonText: ".",
                        buttonColor: appButtonLight,
                        buttonTap: () {
                          setState(() {
                            buttonClick(".");
                            equalPressOperation();
                          });
                        },
                      ),
                      CalButton(
                        buttonText: "=",
                        buttonColor: appButtonDark,
                        buttonTap: () {
                          setState(() {
                            buttonClick("=");
                            equalPressOperation();
                            isEqualPress = true;
                          });
                        },
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  )
                ],
              ))
        ],
      ),
    );
  }

//   .....................................FUNCTION ....................................//
// Here we create function for calculate the mathematical operation //
// This Function is call when click on Equal button

  void equalPressOperation() {
    String finalUserInput = userInput;
    finalUserInput = userInput.replaceAll("x", "*").replaceAll("%", "/100");

    // Calculate the operation
    Parser p = Parser();
    Expression expression = p.parse(finalUserInput);
    ContextModel contextModel = ContextModel();
    double eval = expression.evaluate(EvaluationType.REAL, contextModel);
    answer = eval.toString();
  }
}

// UI Part => Done
// Now Apply Logic Part => for mathematical operation we use math expression package //
