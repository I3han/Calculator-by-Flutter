import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculator',
      theme: ThemeData(
          primarySwatch: Colors.orange,
          accentColor: Colors.amber,
          // errorColor: Colors.red,
          fontFamily: 'Quicksand',
          textTheme: ThemeData.light().textTheme.copyWith(
                title: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
                button: TextStyle(color: Colors.white,fontSize: 18),
              ),
          appBarTheme: AppBarTheme(
            textTheme: ThemeData.light().textTheme.copyWith(
                  title: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
          ),
          buttonTheme: ButtonThemeData(
            minWidth: 100,
            buttonColor: Colors.orange,
        splashColor:Colors.orangeAccent,   //we don't define the splashColor in ButtonThemeDaa
        height:60,
        textTheme: ButtonTextTheme.primary,
      )
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
  int tot = 0,selector=0;
  double div = 0;

  void getSum() {
    setState(() {
      tot = n1+n2;
      number.text=tot.toString();
    });
  }

  void getSub() {
    setState(() {
      tot = n1-n2;
      number.text=tot.toString();
    });
  }

  void getMul() {
    setState(() {
      tot = n1*n2;
      number.text=tot.toString();
    });
  }

  void getDiv() {
    setState(() {
      tot = (n1/n2 as int);
      number.text=tot.toString();
    });
  }

void funSelector(){
  switch (selector) {
    case 1: getSum(); break;
     case 2: getSub(); break;
      case 3: getMul(); break;
       case 4: getDiv(); break;
      
     
    default: selector =0;
  }

}
 
 var number = TextEditingController();

  int n1=0,n2=0;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
       
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            TextField(
              controller: number,
              textAlign: TextAlign.right,
              style: TextStyle(fontWeight:FontWeight.bold, fontSize: 30 ),
            ),
            
            Container(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                //  textDirection: TextDirection.rtl,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      n1=int.parse(number.text);
                      selector=1;
                      number.clear();
                    },
                    child: Text("+"),
                  ),
                  RaisedButton(
                    onPressed: () {
                       n1=int.parse(number.text);
                      selector=2;
                      number.clear();
                    },
                    child: Text("-"),
                  ),
                  
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                //  textDirection: TextDirection.rtl,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      n1=int.parse(number.text);
                      selector=3;
                      number.clear();
                    },
                    child: Text("*"),
                  ),
                  RaisedButton(
                    onPressed: () {
                      n1=int.parse(number.text);
                      selector=4;
                      number.clear();
                    },
                    child: Text("/"),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                //  textDirection: TextDirection.rtl,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                       n2=int.parse(number.text);
                       funSelector();
                    },
                    child: Text("="),
                  ),
                  RaisedButton(
                    onPressed: () {
                     
                      number.clear();

                    },
                    child: Text("Clear"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
