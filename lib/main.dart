import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
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

class MyCalculator extends StatefulWidget{
  State<StatefulWidget> createState(){
    return _MyCalculator();
  }
}

class _MyCalculator extends State<MyCalculator>{
  final Color _highlightColor = Colors.teal.shade200;
  final Color _textColor = Colors.black;

  var pressedSymbol = '';
  double result = 0.0, value = 0.0;
  StringBuffer strBuf = new StringBuffer();
  String temp = "0";

  Widget build(BuildContext context){
    var buttonHeight = MediaQuery.of(context).size.height / 12;
    var normalButtonWidth = MediaQuery.of(context).size.width / 6;
    var wideButtonWidth = normalButtonWidth * 3;

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
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold
                  )
                )
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 40),
                child: Text("Input : " + strBuf.toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(color: _textColor)
                )
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,             
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
                        result = value = 0.0;
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
                        value = double.parse(strBuf.toString());
                        strBuf.clear();
                        if(pressedSymbol == "+"){
                          result += value;
                        }
                        if(pressedSymbol == "-"){
                          result -= value;
                        }
                        if(pressedSymbol == "*"){
                          result *= value;
                        }
                        if(result != 0 && pressedSymbol == "/"){
                          result /= value;
                        }
                      });
                    }
                  )
                ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
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
                        strBuf.write("1");
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
                    child: Text("+",
                      textAlign: TextAlign.center,
                      style: TextStyle(color: _textColor)
                    ),
                    style: OutlinedButton.styleFrom(
                      fixedSize: Size(normalButtonWidth, buttonHeight),
                      backgroundColor: _highlightColor
                    ),
                    onPressed: (){
                      setState((){
                        value = double.parse(strBuf.toString());
                        result += value;
                        strBuf.clear();
                        pressedSymbol = "+";
                      });
                    }
                  )
                ]
              ),
              Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,              
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
                        value = double.parse(strBuf.toString());
                        result -= value;
                        strBuf.clear();
                        pressedSymbol = "-";                  
                      });
                    }
                  )
                ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,            
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
                        value = double.parse(strBuf.toString());
                        result *= value;
                        strBuf.clear();
                        pressedSymbol = "*";                       
                      });
                    }
                  )
                ]
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
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
                        if(result != 0)
                        {
                          value = double.parse(strBuf.toString());
                          result /= value;
                          pressedSymbol = "/";                            
                        }
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