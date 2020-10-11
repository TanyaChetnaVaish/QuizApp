import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;
  final Function resethandler;
  Result(this.result,this.resethandler);
  String get resultPhrase{
    var resulttext='You did it!';
    if(result<=8){
      resulttext='You are awsome and inoncent!';
    }
    else if(result<=12)
    {
      resulttext="Pretty likable!";

    }
    else if(result<=16){
      resulttext="You are...strange!";
    }
    else{
      resulttext="You are bad!";
    }
    return resulttext;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(resultPhrase,style:TextStyle(fontSize: 36,fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
          ),
          FlatButton(child: Text('Restart Quiz'),onPressed: resethandler,)
        ],
      ),
    );
  }
}
