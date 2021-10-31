import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Máy tính trên điện thoại'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   Widget buildButton(String buttonText, double buitonHight, Color buttonColor) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.1 * buitonHight,
        color: buttonColor,
        child: FlatButton(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0.0),
              side: BorderSide(
                  color: Colors.white, width: 1, style: BorderStyle.solid)),
          onPressed: () => buttonPressed(buttonText),
          child: Text(
            buttonText,
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.normal,
                color: Colors.white),
          ),
        ));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Text(
              equation,
              style: TextStyle(fontSize: equationFontSize),
            ),
          ),
          Container(
            alignment: Alignment.centerRight,
            padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: Text(
              result,
              style: TextStyle(fontSize: resultFontSize),
            ),
          ),
          Expanded(
            child: Divider(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * .75,
                child: Table(
                  children: [

                    TableRow(children: [
                      buildButton("C", 1, Colors.redAccent),
                      buildButton("X", 1, Colors.black),
                      buildButton("+", 1, Colors.blue),
                    ]),
                    TableRow(children: [  buildButton("7", 1, Colors.blue),
                      buildButton("8", 1, Colors.blue),
                      buildButton("9", 1, Colors.blue),
                      ]),
                    TableRow(children: [
                       buildButton("4", 1, Colors.blue),
                      buildButton("5", 1, Colors.blue),
                      buildButton("6", 1, Colors.blue),
                      ]),
                    TableRow(children: [
                       buildButton("1", 1, Colors.blue),
                      buildButton("2", 1, Colors.blue),
                      buildButton("3", 1, Colors.blue),
                    ]),
                    TableRow(children: [
                      buildButton(".", 1, Colors.blue),
                      buildButton("0", 1, Colors.blue),
                      buildButton("00", 1, Colors.blue),
                    ]),

                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                child: Table(
                  children: [

                    TableRow(children: [
                      buildButton("×", 1, Colors.blue),
                    ]),
                    TableRow(children: [
                      buildButton("-", 1, Colors.blue),
                    ]),
                    TableRow(children: [
                       buildButton("÷", 1, Colors.blue),
                    ]),
                    TableRow(children: [
                      buildButton("=", 2, Colors.redAccent),
                    ]),

                  ],
                ),
              ),
            ],
          ),
        ],

      ),

    );
  }
}
