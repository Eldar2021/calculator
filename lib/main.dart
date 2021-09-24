import 'package:calculator/buttons.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late double san1;
  late double san2;
  late String azyrkySan = '';
  late String otkonSan = '';
  late String joop = '';
  late String islem = '';

  // кнопка функциясы
  void eld(String value) {
    print(value);
    if (value == "AC") {
      azyrkySan = '';
      joop = '';
      san1 = 0;
      san2 = 0;
      otkonSan = '';
      islem = '';
    } else if (value == "C") {
      azyrkySan = '';
      joop = '';
    } else if (value == "Back") {
      azyrkySan = azyrkySan.substring(0,azyrkySan.length-1);
    } else if (value == "+/-") {
      if(azyrkySan[0]!="-"){
        azyrkySan= "-"+azyrkySan;
      }else if(azyrkySan[0]=="-"){
        azyrkySan = azyrkySan.substring(1);
      }
    } else if (value == "/") {
      if (azyrkySan == "") {
        azyrkySan = double.parse(joop).toString();
      }
      san1 = double.parse(azyrkySan);
      azyrkySan = '';
      islem = value;
    } else if (value == "X") {
      if (azyrkySan == "") {
        azyrkySan = double.parse(joop).toString();
      }
      san1 = double.parse(azyrkySan);
      azyrkySan = '';
      islem = value;
    } else if (value == "---") {
      if (azyrkySan == "") {
        azyrkySan = double.parse(joop).toString();
      }
      san1 = double.parse(azyrkySan);
      azyrkySan = '';
      islem = value;
    } else if (value == "+") {
      if (azyrkySan == "") {
        azyrkySan = double.parse(joop).toString();
      }
      san1 = double.parse(azyrkySan);
      azyrkySan = '';
      islem = value;
    }
    //барабар
    else if (value == "=") {
      san2 = double.parse(azyrkySan);
      print(san1);
      print(san2);
      print(islem);
      azyrkySan = '';
      if (islem == "+") {
        joop = (san1 + san2).toString();
      } else if (islem == "---") {
        joop = (san1 - san2).toString();
      } else if (islem == "/") {
        joop = (san1 / san2).toString();
      } else if (islem == "X") {
        joop = (san1 * san2).toString();
      }
      otkonSan = "$otkonSan|$san1 $islem $san2";
    }
    // sandar menen
    else {
      azyrkySan = azyrkySan + value;
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Container(
            alignment: Alignment(1.0, 1.0),
            child: Padding(
              padding: const EdgeInsets.only(right: 15.0),
              child: Text(
                otkonSan,
                style: GoogleFonts.italianno(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black54,
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment(1.0, 1.0),
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Text(
                joop,
                style: GoogleFonts.tomorrow(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Container(
            alignment: Alignment(1.0, 1.0),
            child: Padding(
              padding: const EdgeInsets.only(right: 10.0),
              child: Text(
                azyrkySan,
                style: GoogleFonts.tomorrow(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonCalculator(
                sizeButton: 70.0,
                bgButton: Colors.blue,
                value: "AC",
                valueColor: Colors.white,
                valueSize: 24.0,
                atkar: eld,
              ),
              ButtonCalculator(
                sizeButton: 70.0,
                bgButton: Colors.blue,
                value: "C",
                valueColor: Colors.white,
                valueSize: 24.0,
                atkar: eld,
              ),
              ButtonCalculator(
                sizeButton: 70.0,
                bgButton: Colors.blue,
                value: "Back",
                valueColor: Colors.white,
                valueSize: 17.0,
                atkar: eld,
              ),
              ButtonCalculator(
                sizeButton: 70.0,
                bgButton: Colors.deepOrange,
                value: "/",
                valueColor: Colors.white,
                valueSize: 30.0,
                atkar: eld,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonCalculator(
                sizeButton: 70.0,
                bgButton: Colors.deepPurple,
                value: "7",
                valueColor: Colors.white,
                valueSize: 24.0,
                atkar: eld,
              ),
              ButtonCalculator(
                sizeButton: 70.0,
                bgButton: Colors.deepPurple,
                value: "8",
                valueColor: Colors.white,
                valueSize: 24.0,
                atkar: eld,
              ),
              ButtonCalculator(
                sizeButton: 70.0,
                bgButton: Colors.deepPurple,
                value: "9",
                valueColor: Colors.white,
                valueSize: 24.0,
                atkar: eld,
              ),
              ButtonCalculator(
                sizeButton: 70.0,
                bgButton: Colors.deepOrange,
                value: "X",
                valueColor: Colors.white,
                valueSize: 30.0,
                atkar: eld,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonCalculator(
                sizeButton: 70.0,
                bgButton: Colors.deepPurple,
                value: "4",
                valueColor: Colors.white,
                valueSize: 24.0,
                atkar: eld,
              ),
              ButtonCalculator(
                sizeButton: 70.0,
                bgButton: Colors.deepPurple,
                value: "5",
                valueColor: Colors.white,
                valueSize: 24.0,
                atkar: eld,
              ),
              ButtonCalculator(
                sizeButton: 70.0,
                bgButton: Colors.deepPurple,
                value: "6",
                valueColor: Colors.white,
                valueSize: 24.0,
                atkar: eld,
              ),
              ButtonCalculator(
                sizeButton: 70.0,
                bgButton: Colors.deepOrange,
                value: "---",
                valueColor: Colors.white,
                valueSize: 37.0,
                atkar: eld,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonCalculator(
                sizeButton: 70.0,
                bgButton: Colors.deepPurple,
                value: "1",
                valueColor: Colors.white,
                valueSize: 24.0,
                atkar: eld,
              ),
              ButtonCalculator(
                sizeButton: 70.0,
                bgButton: Colors.deepPurple,
                value: "2",
                valueColor: Colors.white,
                valueSize: 24.0,
                atkar: eld,
              ),
              ButtonCalculator(
                sizeButton: 70.0,
                bgButton: Colors.deepPurple,
                value: "3",
                valueColor: Colors.white,
                valueSize: 24.0,
                atkar: eld,
              ),
              ButtonCalculator(
                sizeButton: 70.0,
                bgButton: Colors.deepOrange,
                value: "+",
                valueColor: Colors.white,
                valueSize: 30.0,
                atkar: eld,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ButtonCalculator(
                sizeButton: 70.0,
                bgButton: Colors.red,
                value: "+/-",
                valueColor: Colors.white,
                valueSize: 30.0,
                atkar: eld,
              ),
              ButtonCalculator(
                sizeButton: 70.0,
                bgButton: Colors.deepPurple,
                value: "0",
                valueColor: Colors.white,
                valueSize: 24.0,
                atkar: eld,
              ),
              ButtonCalculator(
                sizeButton: 70.0,
                bgButton: Colors.blue,
                value: "00",
                valueColor: Colors.white,
                valueSize: 24.0,
                atkar: eld,
              ),
              ButtonCalculator(
                sizeButton: 70.0,
                bgButton: Colors.green,
                value: "=",
                valueColor: Colors.white,
                valueSize: 40.0,
                atkar: eld,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
