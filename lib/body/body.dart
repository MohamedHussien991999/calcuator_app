import 'package:flutter/material.dart';

class BodyScreen extends StatefulWidget {
  const BodyScreen({super.key});

  @override
  State<BodyScreen> createState() => _BodyScreenState();
}

List<String>? stringListOperation = [""];
List<String>? stringListResult = ["0"];

class _BodyScreenState extends State<BodyScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              color: Colors.black,
            ),
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.04,
                        vertical: MediaQuery.of(context).size.height * 0.06),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Text(
                            stringListOperation != null
                                ? stringListOperation!.join('')
                                : "",
                            overflow: TextOverflow.ellipsis,
                            maxLines: 4,
                            style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.09,
                        vertical: MediaQuery.of(context).size.height * 0.00009),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Text("=",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 50,
                                fontWeight: FontWeight.bold)),
                        const SizedBox(
                          width: 10,
                        ),
                        Flexible(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              stringListResult!.isNotEmpty
                                  ? stringListResult!.join('')
                                  : "0",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: calculateFontSize(stringListResult),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.02,
                        vertical: MediaQuery.of(context).size.height * 0.02),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        OutlinedButton(
                            style: TextButton.styleFrom(
                              backgroundColor: const Color(0xFFB4B4B4),
                              shape: const CircleBorder(),
                              fixedSize: const Size(70, 70),
                            ),
                            onPressed: () {
                              setState(() {
                                stringListOperation!.clear();
                                stringListResult!.clear();
                                stringListResult!.add('0');
                              });
                            },
                            child: const Text('AC',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))),
                        OutlinedButton(
                            style: TextButton.styleFrom(
                              backgroundColor: const Color(0xFFB4B4B4),
                              shape: const CircleBorder(),
                              fixedSize: const Size(70, 70),
                            ),
                            onPressed: () {
                              setState(() {
                                if (stringListOperation!.isNotEmpty) {
                                  stringListOperation!.removeLast();
                                }
                              });
                            },
                            child: const Text('CE',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold))),
                        OutlinedButton(
                            style: TextButton.styleFrom(
                              backgroundColor: const Color(0xFFB4B4B4),
                              shape: const CircleBorder(),
                              fixedSize: const Size(70, 70),
                            ),
                            onPressed: () {
                              setState(() {
                                stringListOperation!.add('%');
                              });
                            },
                            child: const Text('%',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold))),
                        OutlinedButton(
                            style: TextButton.styleFrom(
                              backgroundColor: const Color(0xFFf79624),
                              shape: const CircleBorder(),
                              fixedSize: const Size(70, 70),
                            ),
                            onPressed: () {
                              setState(() {
                                stringListOperation!.add('/');
                              });
                            },
                            child: const Text('/',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold))),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.02,
                        vertical: MediaQuery.of(context).size.height * 0.02),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          OutlinedButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.grey[900],
                                shape: const CircleBorder(),
                                fixedSize: const Size(70, 70),
                              ),
                              onPressed: () {
                                setState(() {
                                  stringListOperation!.add('1');
                                });
                              },
                              child: const Text('1',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold))),
                          OutlinedButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.grey[900],
                                shape: const CircleBorder(),
                                fixedSize: const Size(70, 70),
                              ),
                              onPressed: () {
                                setState(() {
                                  stringListOperation!.add('2');
                                });
                              },
                              child: const Text('2',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold))),
                          OutlinedButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.grey[900],
                                shape: const CircleBorder(),
                                fixedSize: const Size(70, 70),
                              ),
                              onPressed: () {
                                setState(() {
                                  stringListOperation!.add('3');
                                });
                              },
                              child: const Text('3',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold))),
                          OutlinedButton(
                              style: TextButton.styleFrom(
                                backgroundColor: const Color(0xFFf79624),
                                shape: const CircleBorder(),
                                fixedSize: const Size(70, 70),
                              ),
                              onPressed: () {
                                setState(() {
                                  stringListOperation!.add('*');
                                });
                              },
                              child: const Text('*',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold))),
                        ]),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.02,
                        vertical: MediaQuery.of(context).size.height * 0.02),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          OutlinedButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.grey[900],
                                shape: const CircleBorder(),
                                fixedSize: const Size(70, 70),
                              ),
                              onPressed: () {
                                setState(() {
                                  stringListOperation!.add('4');
                                });
                              },
                              child: const Text('4',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold))),
                          OutlinedButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.grey[900],
                                shape: const CircleBorder(),
                                fixedSize: const Size(70, 70),
                              ),
                              onPressed: () {
                                setState(() {
                                  stringListOperation!.add('5');
                                });
                              },
                              child: const Text('5',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold))),
                          OutlinedButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.grey[900],
                                shape: const CircleBorder(),
                                fixedSize: const Size(70, 70),
                              ),
                              onPressed: () {
                                setState(() {
                                  stringListOperation!.add('6');
                                });
                              },
                              child: const Text('6',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold))),
                          OutlinedButton(
                              style: TextButton.styleFrom(
                                backgroundColor: const Color(0xFFf79624),
                                shape: const CircleBorder(),
                                fixedSize: const Size(70, 70),
                              ),
                              onPressed: () {
                                setState(() {
                                  stringListOperation!.add('-');
                                });
                              },
                              child: const Text('-',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold))),
                        ]),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.02,
                        vertical: MediaQuery.of(context).size.height * 0.02),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          OutlinedButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.grey[900],
                                shape: const CircleBorder(),
                                fixedSize: const Size(70, 70),
                              ),
                              onPressed: () {
                                setState(() {
                                  stringListOperation!.add('7');
                                });
                              },
                              child: const Text('7',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold))),
                          OutlinedButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.grey[900],
                                shape: const CircleBorder(),
                                fixedSize: const Size(70, 70),
                              ),
                              onPressed: () {
                                setState(() {
                                  stringListOperation!.add('8');
                                });
                              },
                              child: const Text('8',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold))),
                          OutlinedButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.grey[900],
                                shape: const CircleBorder(),
                                fixedSize: const Size(70, 70),
                              ),
                              onPressed: () {
                                setState(() {
                                  stringListOperation!.add('9');
                                });
                              },
                              child: const Text('9',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold))),
                          OutlinedButton(
                              style: TextButton.styleFrom(
                                backgroundColor: const Color(0xFFf79624),
                                shape: const CircleBorder(),
                                fixedSize: const Size(70, 70),
                              ),
                              onPressed: () {
                                setState(() {
                                  stringListOperation!.add('+');
                                });
                              },
                              child: const Text('+',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold))),
                        ]),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuery.of(context).size.width * 0.02,
                        vertical: MediaQuery.of(context).size.height * 0.04),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          OutlinedButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.grey[900],
                                shape: const CircleBorder(),
                                fixedSize: const Size(70, 70),
                              ),
                              onPressed: () {
                                setState(() {
                                  stringListOperation!.add('0');
                                });
                              },
                              child: const Text('0',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold))),
                          OutlinedButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.grey[900],
                                shape: const CircleBorder(),
                                fixedSize: const Size(70, 70),
                              ),
                              onPressed: () {
                                setState(() {
                                  stringListOperation!.add('00');
                                });
                              },
                              child: const Text('00',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold))),
                          OutlinedButton(
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.grey[900],
                                shape: const CircleBorder(),
                                fixedSize: const Size(70, 70),
                              ),
                              onPressed: () {
                                setState(() {
                                  stringListOperation!.add('.');
                                });
                              },
                              child: const Text('.',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold))),
                          OutlinedButton(
                              style: TextButton.styleFrom(
                                backgroundColor: const Color(0xFFf79624),
                                shape: const CircleBorder(),
                                fixedSize: const Size(70, 70),
                              ),
                              onPressed: () {
                                setState(() {
                                  stringListResult!.clear();
                                  stringListResult!.add(evaluateExpression(
                                      stringListOperation!.join(' ')));
                                });
                              },
                              child: const Text('=',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 30,
                                      fontWeight: FontWeight.bold))),
                        ]),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.02,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  String evaluateExpression(String expression) {
    // Remove all spaces from the expression
    expression = expression.replaceAll(' ', '');

    List<String> operators = [];
    List<double> operands = [];
    int currentIndex = 0;

    while (currentIndex < expression.length) {
      if (expression[currentIndex] == '+' ||
          expression[currentIndex] == '-' ||
          expression[currentIndex] == '*' ||
          expression[currentIndex] == '/') {
        operators.add(expression[currentIndex]);
        currentIndex++;
      } else if (expression[currentIndex] == '%') {
        // Calculate the percentage of the previous operand
        double percentage = operands[operands.length - 1] / 100;
        operands[operands.length - 1] = percentage;
        currentIndex++;
      } else if (isDigit(expression[currentIndex])) {
        // Extract the entire number (including decimals)
        String numberStr = '';
        while (currentIndex < expression.length &&
            (expression[currentIndex] == '.' ||
                isDigit(expression[currentIndex]))) {
          numberStr += expression[currentIndex];
          currentIndex++;
        }
        double number = double.parse(numberStr);
        operands.add(number);
      }
    }

    // Apply multiplication, division, addition, and subtraction operations
    double result = operands[0];
    for (int i = 0; i < operators.length; i++) {
      if (operators[i] == '+') {
        result += operands[i + 1];
      } else if (operators[i] == '-') {
        result -= operands[i + 1];
      } else if (operators[i] == '*') {
        result *= operands[i + 1];
      } else if (operators[i] == '/') {
        result /= operands[i + 1];
      }
    }
    String resultString = result.toString();
    if (result == result.toInt()) {
      resultString = result.toInt().toString();
    }

    return resultString;
  }

  bool isDigit(String s) {
    return double.tryParse(s) != null;
  }

  double calculateFontSize(List<String>? stringListResult) {
    if (stringListResult != null) {
      // Calculate the desired font size based on your logic
      int totalCharacters = stringListResult.join('').length;
      double baseFontSize = 50; // Default base font size

      if (totalCharacters > 10) {
        return baseFontSize - 5; // Decrease font size for longer results
      } else {
        return baseFontSize;
      }
    }

    return 10; // Default font size if result is null
  }
}
