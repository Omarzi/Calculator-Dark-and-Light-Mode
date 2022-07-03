// import 'package:flutter/material.dart';
// import 'package:math_expressions/math_expressions.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Calculator Neumorphism',
//       home: CalculatorNeuApp(),
//     );
//   }
// }

// const Color colorDark = Color(0xFF374352);
// const Color colorLight = Color(0xFFe6eeff);

// class CalculatorNeuApp extends StatefulWidget {
//   @override
//   _CalculatorNeuAppState createState() => _CalculatorNeuAppState();
// }

// class _CalculatorNeuAppState extends State<CalculatorNeuApp> {
//   bool darkMode = false;
//   var useQuestion = '';
//   var userAnswer = '';

//   final List<String> buttons = [
//     'C',
//     'DEL',
//     '%',
//     '/',
//     '9',
//     '8',
//     '7',
//     'x',
//     '6',
//     '5',
//     '4',
//     '-',
//     '3',
//     '2',
//     '1',
//     '+',
//     '0',
//     '.',
//     'ANS',
//     '=',
//   ];
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: darkMode ? colorDark : colorLight,
//       body: SafeArea(
//         child: Padding(
//           padding: const EdgeInsets.all(18),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.spaceBetween,
//             children: [
//               Container(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     GestureDetector(
//                         onTap: () {
//                           setState(() {
//                             darkMode ? darkMode = false : darkMode = true;
//                           });
//                         },
//                         child: _switchMode()),
//                     const SizedBox(height: 80),
//                     Align(
//                       alignment: Alignment.centerRight,
//                       child: Text(
//                         useQuestion,
//                         style: TextStyle(
//                             fontSize: 55,
//                             fontWeight: FontWeight.bold,
//                             color: darkMode ? Colors.white : Colors.red),
//                       ),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                       children: [
//                         Text(
//                           '=',
//                           style: TextStyle(
//                               fontSize: 35,
//                               color: darkMode ? Colors.green : Colors.grey),
//                         ),
//                         Text(
//                           userAnswer,
//                           style: TextStyle(
//                               fontSize: 20,
//                               color: darkMode ? Colors.green : Colors.grey),
//                         )
//                       ],
//                     ),
//                     const SizedBox(
//                       height: 10,
//                     )
//                   ],
//                 ),
//               ),
//               // ignore: avoid_unnecessary_containers
//               Container(
//                 child: Column(children: [
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       _buttonOval(title: 'sin', onTap: () {}),
//                       _buttonOval(title: 'cos', onTap: () {}),
//                       _buttonOval(title: 'tan', onTap: () {}),
//                       _buttonOval(title: '%', onTap: () {})
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       _buttonRounded(
//                         title: buttons[0],
//                         textColor: darkMode ? Colors.green : Colors.redAccent,
//                         onTap: () {
//                           setState(() {
//                             useQuestion = '';
//                           });
//                         },
//                       ),
//                       _buttonRounded(title: '(', onTap: () {}),
//                       _buttonRounded(title: ')', onTap: () {}),
//                       _buttonRounded(
//                           title: buttons[3],
//                           textColor: darkMode ? Colors.green : Colors.redAccent,
//                           onTap: () {
//                             ;
//                           })
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       _buttonRounded(title: '7'),
//                       _buttonRounded(title: '8'),
//                       _buttonRounded(title: '9'),
//                       _buttonRounded(
//                           title: 'x',
//                           textColor: darkMode ? Colors.green : Colors.redAccent)
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       _buttonRounded(title: '4'),
//                       _buttonRounded(title: '5'),
//                       _buttonRounded(title: '6'),
//                       _buttonRounded(
//                           title: '-',
//                           textColor: darkMode ? Colors.green : Colors.redAccent)
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       _buttonRounded(title: '1'),
//                       _buttonRounded(title: '2'),
//                       _buttonRounded(title: '3'),
//                       _buttonRounded(
//                           title: '+',
//                           textColor: darkMode ? Colors.green : Colors.redAccent)
//                     ],
//                   ),
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       _buttonRounded(title: '0'),
//                       _buttonRounded(title: ','),
//                       _buttonRounded(
//                           icon: Icons.backspace_outlined,
//                           iconColor:
//                               darkMode ? Colors.green : Colors.redAccent),
//                       _buttonRounded(
//                           title: '=',
//                           textColor: darkMode ? Colors.green : Colors.redAccent)
//                     ],
//                   )
//                 ]),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }

//   bool isOperator(String x) {
//     if (x == '%' || x == '/' || x == 'x' || x == '-' || x == '+' || x == '=') {
//       return true;
//     }
//     return false;
//   }

//   void equalPressed() {
//     String finalQuestion = useQuestion;
//     finalQuestion = finalQuestion.replaceAll('x', '*');

//     Parser p = Parser();
//     Expression exp = p.parse(finalQuestion);
//     ContextModel cm = ContextModel();
//     double eval = exp.evaluate(EvaluationType.REAL, cm);

//     userAnswer = eval.toString();
//   }

  // Widget _buttonRounded({
  //   String? title,
  //   double padding = 17,
  //   IconData? icon,
  //   Color? iconColor,
  //   Color? textColor,
  //   required void Function() onTap,
  // }) {
  //   return GestureDetector(
  //     onTap: onTap,
  //     child: Padding(
  //       padding: const EdgeInsets.all(4),
  //       child: NeuContainer(
  //         darkMode: darkMode,
  //         borderRadius: BorderRadius.circular(40),
  //         padding: EdgeInsets.all(padding),
  //         child: Container(
  //           width: padding * 2,
  //           height: padding * 2,
  //           child: Center(
  //               child: title != null
  //                   ? Text(
  //                       '$title',
  //                       style: TextStyle(
  //                           color: textColor != null
  //                               ? textColor
  //                               : darkMode
  //                                   ? Colors.white
  //                                   : Colors.black,
  //                           fontSize: 30),
  //                     )
  //                   : Icon(
  //                       icon,
  //                       color: iconColor,
  //                       size: 30,
  //                     )),
  //         ),
  //       ),
  //     ),
  //   );
//   }

//   Widget _buttonOval(
//       {String? title, double padding = 17, required void Function() onTap}) {
//     return GestureDetector(
//       onTap: onTap,
//       child: Padding(
//         padding: const EdgeInsets.all(6),
//         child: NeuContainer(
//           darkMode: darkMode,
//           borderRadius: BorderRadius.circular(50),
//           padding:
//               EdgeInsets.symmetric(horizontal: padding, vertical: padding / 2),
//           child: Container(
//             width: padding * 2,
//             child: Center(
//               child: Text(
//                 '$title',
//                 style: TextStyle(
//                     color: darkMode ? Colors.white : Colors.black,
//                     fontSize: 15,
//                     fontWeight: FontWeight.bold),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _switchMode() {
//     return NeuContainer(
//       darkMode: darkMode,
//       padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
//       borderRadius: BorderRadius.circular(40),
//       child: Container(
//         width: 70,
//         child:
//             Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
//           Icon(
//             Icons.wb_sunny,
//             color: darkMode ? Colors.grey : Colors.redAccent,
//           ),
//           Icon(
//             Icons.nightlight_round,
//             color: darkMode ? Colors.green : Colors.grey,
//           ),
//         ]),
//       ),
//     );
//   }
// }

// class NeuContainer extends StatefulWidget {
//   final bool? darkMode;
//   final Widget? child;
//   final BorderRadius? borderRadius;
//   final EdgeInsetsGeometry? padding;

//   NeuContainer(
//       {this.darkMode = false, this.child, this.borderRadius, this.padding});

//   @override
//   _NeuContainerState createState() => _NeuContainerState();
// }

// class _NeuContainerState extends State<NeuContainer> {
//   bool _isPressed = false;

//   void _onPointerDown(PointerDownEvent event) {
//     setState(() {
//       _isPressed = true;
//     });
//   }

//   void _onPointerUp(PointerUpEvent event) {
//     setState(() {
//       _isPressed = false;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     bool? darkMode = widget.darkMode;
//     return Listener(
//       onPointerDown: _onPointerDown,
//       onPointerUp: _onPointerUp,
//       child: Container(
//         padding: widget.padding,
//         decoration: BoxDecoration(
//             color: darkMode! ? colorDark : colorLight,
//             borderRadius: widget.borderRadius,
//             boxShadow: _isPressed
//                 ? null
//                 : [
//                     BoxShadow(
//                       color:
//                           darkMode ? Colors.black54 : Colors.blueGrey.shade200,
//                       offset: Offset(4.0, 4.0),
//                       blurRadius: 15.0,
//                       spreadRadius: 1.0,
//                     ),
//                     BoxShadow(
//                         color:
//                             darkMode ? Colors.blueGrey.shade700 : Colors.white,
//                         offset: Offset(-4.0, -4.0),
//                         blurRadius: 15.0,
//                         spreadRadius: 1.0)
//                   ]),
//         child: widget.child,
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:calculator_ui_professional/buttons';
import 'package:math_expressions/math_expressions.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

const Color colorDark = Color(0xFF374352);
const Color colorLight = Color(0xFFe6eeff);

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var useQuestion = '';
  var userAnswer = '';

  bool darkMode = false;

  final List<String> buttons = [
    'C',
    'DEL',
    '%',
    '/',
    '9',
    '8',
    '7',
    'x',
    '6',
    '5',
    '4',
    '-',
    '3',
    '2',
    '1',
    '+',
    '0',
    '.',
    'ANS',
    '=',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: darkMode ? colorDark : colorLight,
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Expanded(
            // ignore: avoid_unnecessary_containers
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  GestureDetector(
                      onTap: () {
                        setState(() {
                          darkMode ? darkMode = false : darkMode = true;
                        });
                      },
                      child: _switchMode()),
                  const SizedBox(
                    height: 50,
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    alignment: Alignment.centerLeft,
                    child: Text(
                      useQuestion,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(20),
                    alignment: Alignment.centerRight,
                    child: Text(
                      userAnswer,
                      style: const TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemCount: buttons.length,
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0) {
                      return MyButton(
                        buttonTapped: () {
                          setState(() {
                            useQuestion = '';
                          });
                        },
                        buttonText: buttons[index],
                        color: Colors.deepPurple[400],
                        textColor: Colors.white,
                      );
                    } else if (index == 1) {
                      return MyButton(
                        buttonTapped: () {
                          setState(() {
                            useQuestion = useQuestion.substring(
                                0, useQuestion.length - 1,);
                          });
                        },
                        buttonText: buttons[index],
                        color: Colors.grey[600],
                        textColor: Colors.white,
                      );
                    } else if (index == buttons.length - 1) {
                      return MyButton(
                        buttonTapped: () {
                          setState(() {
                            equalPressed();
                          });
                        },
                        buttonText: buttons[index],
                        color: Colors.deepPurple[400],
                        textColor: Colors.white,
                      );
                    } else {
                      return MyButton(
                        buttonTapped: () {
                          setState(() {
                            useQuestion += buttons[index];
                          });
                        },
                        buttonText: buttons[index],
                        color: isOperator(buttons[index])
                            ? Colors.black45
                            : Colors.black12,
                        textColor: isOperator(buttons[index])
                            ? Colors.white
                            : Colors.deepPurple,
                      );
                    }
                  }),
            ),
          )
        ],
      ),
    );
  }

  bool isOperator(String x) {
    if (x == '%' || x == '/' || x == 'x' || x == '-' || x == '+' || x == '=') {
      return true;
    }
    return false;
  }

  void equalPressed() {
    String finalQuestion = useQuestion;
    finalQuestion = finalQuestion.replaceAll('x', '*');

    Parser p = Parser();
    Expression exp = p.parse(finalQuestion);
    ContextModel cm = ContextModel();
    double eval = exp.evaluate(EvaluationType.REAL, cm);

    userAnswer = eval.toString();
  }

  Widget _switchMode() {
    return NeuContainer(
      darkMode: darkMode,
      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
      borderRadius: BorderRadius.circular(40),
      child: Container(
        width: 70,
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Icon(
            Icons.wb_sunny,
            color: darkMode ? Colors.grey : Colors.redAccent,
          ),
          Icon(
            Icons.nightlight_round,
            color: darkMode ? Colors.green : Colors.grey,
          ),
        ]),
      ),
    );
  }
}

class NeuContainer extends StatefulWidget {
  final bool? darkMode;
  final Widget? child;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? padding;

  NeuContainer(
      {this.darkMode = false, this.child, this.borderRadius, this.padding});

  @override
  _NeuContainerState createState() => _NeuContainerState();
}

class _NeuContainerState extends State<NeuContainer> {
  bool _isPressed = false;

  void _onPointerDown(PointerDownEvent event) {
    setState(() {
      _isPressed = true;
    });
  }

  void _onPointerUp(PointerUpEvent event) {
    setState(() {
      _isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool? darkMode = widget.darkMode;
    return Listener(
      onPointerDown: _onPointerDown,
      onPointerUp: _onPointerUp,
      child: Container(
        padding: widget.padding,
        decoration: BoxDecoration(
            color: darkMode! ? colorDark : colorLight,
            borderRadius: widget.borderRadius,
            boxShadow: _isPressed
                ? null
                : [
                    BoxShadow(
                      color:
                          darkMode ? Colors.black54 : Colors.blueGrey.shade200,
                      offset: Offset(4.0, 4.0),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                    BoxShadow(
                        color:
                            darkMode ? Colors.blueGrey.shade700 : Colors.white,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0)
                  ]),
        child: widget.child,
      ),
    );
  }
}
