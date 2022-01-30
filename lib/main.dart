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
    var buttonHeight = MediaQuery.of(context).size.height / 12;
    var normalButtonWidth = MediaQuery.of(context).size.width / 6;
    var wideButtonWidth = normalButtonWidth * 3;
    
    var pressedSymbol = '';
    double firstValue = 0.0, secondValue = 0.0, result = 0.0;
    StringBuffer strBuf = new StringBuffer();
    String temp = "0", lastCalc = "";

    double calculate(double firstValue, double secondValue, var symbol)
    {
      switch(symbol)
      {
        case '+':
          firstValue = firstValue + secondValue;
          break;
        case '-':
          firstValue = firstValue - secondValue;
          break;
        case '*':
          firstValue = firstValue * secondValue;
          break;
        case '/':
          if(firstValue != 0){
            firstValue = firstValue / secondValue;
          }
          else{
            firstValue = 0;
          }
          break;
      }
      return firstValue;
    }

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
                child: Text(temp,
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
                        lastCalc = strBuf.toString();
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
                        calculate(firstValue, secondValue, pressedSymbol);                  
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
                        temp = strBuf.toString();
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
                        temp = strBuf.toString();
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
                        temp = strBuf.toString();
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
                        temp = strBuf.toString();
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
                        temp = strBuf.toString();
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
                        temp = strBuf.toString();
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
                        temp = strBuf.toString();
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
                        temp = strBuf.toString();
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
                        temp = strBuf.toString();
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