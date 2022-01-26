import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget
{
  final String _title = "Calculator";
  final MaterialColor _backgroundColor = Colors.teal;

  Widget build(BuildContext context){
    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: _backgroundColor,
      ),
      home: MyCalculator(),
    );
  }
}

class MyCalculator extends StatefulWidget
{
  State<StatefulWidget> createState(){
    return _MyCalculator();
  }
}

class _MyCalculator extends State<MyCalculator>
{
  final Color _highlightColor = Colors.teal.shade200;
  final Color _textColor = Colors.black;

  Widget build(BuildContext context)
  {
    var buttonHeight = MediaQuery.of(context).size.height / 8 - 20;
    var normalButtonWidth = (MediaQuery.of(context).size.width - 20) / 4;
    var wideButtonWidth = normalButtonWidth * 3;

    double firstValue = 0.0, secondValue = 0.0, result = 0.0;
    StringBuffer strBuf;
    String temp = "$firstValue";

    return Scaffold(
      appBar: AppBar(title: Text("Calculator"), centerTitle: true),
      body: Container(
        child: Center(
          child: Padding(
            padding: EdgeInsets.fromLTRB(10,20,10,20),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 20),
                  child: Text("Result : $result",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: _textColor,
                      fontSize: 36.0,
                      fontWeight: FontWeight.bold
                    )
                  )
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 20),
                  child: Text("$temp", textAlign: TextAlign.center),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                  child: Row(
                    children: <Widget>[
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          fixedSize: Size(wideButtonWidth, buttonHeight)
                        ),
                        onPressed: (){

                        },
                        child: Text("AC", textAlign: TextAlign.center, style: TextStyle(color: _textColor))
                      ),
                      OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          fixedSize: Size(normalButtonWidth, buttonHeight),
                          backgroundColor: _highlightColor
                        ),
                        onPressed: (){

                        },
                        child: Text("/", textAlign: TextAlign.center, style: TextStyle(color: _textColor))
                      )
                    ],
                  )
                ),                
              ]
            )
          )
        )
      ),
    );
  }
}