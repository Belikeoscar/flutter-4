import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class IconQuiz{
  var images = [
    "github", "gmail", "google", "googleplus", "insta", "link", "play", "skype", "slack", "twitter"
  ];

  var questions = [
    "This icon belongs to a version control system.",
    "Owned by a company as a messaging system.",
    "A search engine",
    "an extention to the search engine.",
    "Best imaging social system.",
    "Best professional/freelancer Network.",
    "The best app store.",
    "one of these is the words best telepresence system.",
    "A function specific social network.",
    "the Blue bird."
  ];

  var choices = [
    ["bitbucket", "Oracle", "kittycon", "github"],
    ["gmail", "yahoomail", "messenger", "whatsapp"],
    ["Google", "wikipedia", "gokaka", "whatsapp"],
    ["Google", "googleplus", "youtube", "github"],
    ["Facebook", "instagram", "Twitter", "likee"],
    ["messenger", "wikipedia", "youtube", "linkedin"],
    ["verison", "wakidi", "playstore", "waptrick"],
    ["Facebook", "tiktok", "skype", "zoom"],
    ["Bitbucket", "konami", "android", "slack"],
    ["eagle", "twitter", "fly", "kik"]
  ];

  var correctAnswers = [
    "github", "gmail", "Google", "googleplus", "instagram", "linkedin", "playstore", "skype", "slack", "twitter"
  ];
}
var finalScore = 0;
var questionNumber = 0;
var quiz = new IconQuiz();


class   Quiz extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new QuizState();
  }
}
class   QuizState extends State<Quiz>{
  @override
  Widget build(BuildContext context){
    return new WillPopScope(
        onWillPop: ()async => false,
        child: Scaffold(
          body: new Container(
            margin: const EdgeInsets.all(10.0),
            alignment: Alignment.topCenter,
            child: new Column(
              children: <Widget>[
                new Padding(padding: EdgeInsets.all(20.0)),
                new Container(
                  alignment: Alignment.centerRight,
                  child: new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      new Text("Question ${questionNumber + 1} of ${quiz.questions.length}",
                      style: new TextStyle(
                        fontSize: 22.0
                      ),)
                      new Text("Score: $finalScore",
                      style: new TextStyle(
                        fontSize: 22.0
                      ),)
                    ],
                  )
                )
                new Padding(padding: EdgeInsets.all(10.0)),
                new Image.asset(
                  "images/${quiz.images[questionNumber]}.png"
                ),
                new Padding(padding: EdgeInsets.all(10.0)),
                new Text(quiz.questions[questionNumber],
                style: new TextStyle(
                  fontSize: 20.0,
                ),),
                new Padding(padding: EdgeInsets.all(10.0)),
                new Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    new MaterialButton(
                        minWidth: 120.0,
                        color: Colors.amberAccent
                        onPressed: (){
                          if(quiz.choices[questionNumber][0] == quiz.correctAnswers[questionNumber]){
                            debugPrint("CORRECT");
                            finalScore++;

                          }else{
                            debugPrint("wrong");
                          }
                          updateQuestion();
                          },
                      child: new Text(quiz.choices[questionNumber][0],
                      style: new TextStyle(
                        fontSize: 20.0,
                        color: Colors.green
                      ),),

                    )
                  ],
                ),
                      new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                         new Text("Question ${questionNumber + 1} of ${quiz.questions.length}",
                          style: new TextStyle(
                          fontSize: 22.0
                       ),)
                         new Text("Score: $finalScore",
                          style: new TextStyle(
                          fontSize: 22.0
                        ),)
                       ],
                    )
              new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                new MaterialButton(
                  minWidth: 120.0,
                  color: Colors.amberAccent
                  onPressed: (){
                    if(quiz.choices[questionNumber][0] == quiz.correctAnswers[questionNumber]){
                    debugPrint("CORRECT");
                    finalScore++;

                    }else{
                     debugPrint("wrong");
                     }
                   updateQuestion();
                   },
                  child: new Text(quiz.choices[questionNumber][0],
                  style: new TextStyle(
                  fontSize: 20.0,
                  color: Colors.green
                  ),),

              )
              ],
            ),
              ],
            ),
          ),
        ),
    );
  }
  void updateQuestion(){
    setState((){
      if (questionNumber == quiz.questions.length - 1){
        Navigator.push(context, new MaterialPageRoute(builder: (context)=new Summary(score: finalScore)));
      }else{
        questionNumber++;
      }
    });
  }
}
class Summary extends StatelessWidget{
  final int score;
  Summary({Key key, @required this.score}) : super(key : key);

  @override
  Widget build(BuildContext context){
    return new WillPopScope(
        onWillPop: ()async => false,
        child: Scaffold(
          body: new Text("hi"),
        ),
    );
  }

}