import 'package:flutter/material.dart';


class Answer extends StatelessWidget{
final number1st;
final number2nd;

Answer(this.number1st,this.number2nd);

  void getSum() {
    print(int.parse(number1st) + int.parse(number2nd));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(),
    );
  }
}
