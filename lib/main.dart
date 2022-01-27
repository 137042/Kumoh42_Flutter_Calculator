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
    
    var pressedSymbol = '';
    double firstValue = 0.0, secondValue = 0.0, result = 0.0;
    StringBuffer strBuf = StringBuffer("");
    String temp = "$firstValue";

    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
        centerTitle: true
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
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
                padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: Text(temp,
                  textAlign: TextAlign.center,
                  style: TextStyle(color: _textColor)
                )
              ),
              Row(
                children: <Widget>[
                  OutlinedButton(
                    child: Text("AC",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: _textColor)
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(wideButtonWidth, buttonHeight)
                    ),
                    onPressed: (){
                      setState((){
                        strBuf.clear();
                        firstValue = secondValue = result = 0;
                      });
                    }
                  ),
                  OutlinedButton(
                    child: Text("=",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: _textColor)
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(normalButtonWidth, buttonHeight),
                      backgroundColor: _highlightColor
                    ),
                    onPressed: (){
                      setState((){
                        secondValue = double.parse(strBuf.toString());
                        switch(pressedSymbol){
                          case '+':
                            result = firstValue + secondValue;
                            break;
                          case '-':
                            result = firstValue - secondValue;
                            break;
                          case '*':
                            result = firstValue * secondValue;
                            break;
                          case '/':
                            if(firstValue == 0){
                              result = 0;
                            }
                            else{
                              result = firstValue / secondValue;
                            }
                            break;
                        }
                        firstValue = secondValue = 0;
                        strBuf.clear();                       
                      });
                    }
                  )
                ]
              ),
              Row(
                children: <Widget>[
                  OutlinedButton(
                    child: Text("1",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: _textColor)
                    ),                      
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(normalButtonWidth, buttonHeight)
                    ),
                    onPressed: (){
                      setState((){
                        strBuf.write(1);
                      });
                    }
                  ),
                  OutlinedButton(
                    child: Text("2",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: _textColor)
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(normalButtonWidth, buttonHeight)
                    ),
                    onPressed: (){
                      setState((){
                        strBuf.write(2);
                      });
                    }
                  ),
                  OutlinedButton(
                    child: Text("3",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: _textColor)
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(normalButtonWidth, buttonHeight)
                    ),
                    onPressed: (){
                      setState((){
                        strBuf.write(3);
                      });
                    }
                  ),
                  OutlinedButton(
                    child: Text("+", textAlign: TextAlign.center, style: TextStyle(color: _textColor)),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(normalButtonWidth, buttonHeight),
                      backgroundColor: _highlightColor
                    ),
                    onPressed: (){
                      setState((){
                        firstValue = double.parse(strBuf.toString());
                        pressedSymbol = '+';
                        strBuf.clear();
                      });
                    }
                  )
                ]
              ),
              Row(
                children: <Widget>[
                  OutlinedButton(
                    child: Text("4",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: _textColor)
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(normalButtonWidth, buttonHeight)
                    ),
                    onPressed: (){
                      setState((){
                        strBuf.write(4);
                      });
                    }
                  ),
                  OutlinedButton(
                    child: Text("5",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: _textColor)
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(normalButtonWidth, buttonHeight)
                    ),
                    onPressed: (){
                      setState((){
                        strBuf.write(5);
                      });
                    }
                  ),
                  OutlinedButton(
                    child: Text("6",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: _textColor)
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(normalButtonWidth, buttonHeight)
                    ),
                    onPressed: (){
                      setState((){
                        strBuf.write(6);
                      });
                    }
                  ),
                  OutlinedButton(
                    child: Text("-",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: _textColor)
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(normalButtonWidth, buttonHeight),
                      backgroundColor: _highlightColor
                    ),
                    onPressed: (){
                      setState((){
                        firstValue = double.parse(strBuf.toString());
                        pressedSymbol = '-';
                        strBuf.clear();                        
                      });
                    }
                  )
                ]
              ),
              Row(
                children: <Widget>[
                  OutlinedButton(
                    child: Text("7",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: _textColor)
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(normalButtonWidth, buttonHeight)
                    ),
                    onPressed: (){
                      setState((){
                        strBuf.write(7);
                      });
                    }
                  ),
                  OutlinedButton(
                    child: Text("8",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: _textColor)
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(normalButtonWidth, buttonHeight)
                    ),
                    onPressed: (){
                      setState((){
                        strBuf.write(8);
                      });
                    }
                  ),
                  OutlinedButton(
                    child: Text("9",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: _textColor)
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(normalButtonWidth, buttonHeight)
                    ),
                    onPressed: (){
                      setState((){
                        strBuf.write(9);
                      });
                    }
                  ),
                  OutlinedButton(
                    child: Text("*",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: _textColor)
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(normalButtonWidth, buttonHeight),
                      backgroundColor: _highlightColor
                    ),
                    onPressed: (){
                      setState((){
                        firstValue = double.parse(strBuf.toString());
                        pressedSymbol = '*';
                        strBuf.clear();                        
                      });
                    }
                  )
                ]
              ),
              Row(
                children: <Widget>[
                  OutlinedButton(
                    child: Text("0",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: _textColor)
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(wideButtonWidth, buttonHeight)
                    ),
                    onPressed: (){
                      setState((){
                        strBuf.write(0);
                      });
                    }
                  ),
                  OutlinedButton(
                    child: Text("/",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: _textColor)
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(normalButtonWidth, buttonHeight),
                      backgroundColor: _highlightColor
                    ),
                    onPressed: (){
                      setState((){
                        firstValue = double.parse(strBuf.toString());
                        pressedSymbol = '/';
                        strBuf.clear();                        
                      });
                    }
                  )
                ]
              )
            ]
          )
        )
      ),
    );
  }
}