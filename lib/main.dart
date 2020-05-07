import 'package:flutter/material.dart';
import 'quiz.dart';
void main(){
  runApp(
    new MaterialApp(
      home: new IconQuiz(),
    )
  );
}
class IconQuiz extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new IconQuizState();

  }
}
class IconQuizState extends State<IconQuiz>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Icon Quiz"),
        backgroundColor: Colors.amberAccent,

      ),
      body: new Container(
        margin: const EdgeInsets.all(15.0),
        child: new Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new MaterialButton(
                height: 50.0,
                color: Colors.amberAccent,
                onPressed: null,
                child: new Text("Quiz",
                style: new TextStyle(
                  fontSize: 18.0,
                  color: Colors.white
                ),),
            )
          ],
        ),
      )
    );
  }
// yaye this is the method to start quiz :)
void startQuiz(){
    setState(() {
      Navigator.push(context,new MaterialPageRoute(builder: (context)=> new Quiz);
    });
}

}