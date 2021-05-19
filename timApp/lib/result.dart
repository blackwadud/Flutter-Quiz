import 'package:flutter/material.dart';
class result extends StatelessWidget {

  int resultScore;
  Function resetQuiz;
  result(int resultScore , Function resetQuiz)
  {
    this.resultScore = resultScore;
    this.resetQuiz = resetQuiz;
  }

  String get resultPhrase{
    String resultText;
    if(resultScore<=8)
      {
        resultText = "Naso you sabi book jare";
      }else if(resultScore <=20)
        {
          resultText = "Agbagba feriyoyo";
        }else if (resultScore >20)
          {
            resultText = "oya drop out go do masters";
          }else
            {
              resultText = "Shey you never fail like this";
            }
    return resultText;
  }
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Container(
          padding: EdgeInsets.all(10),
            width: double.infinity,
            child: Center(
              child: Text(resultPhrase,
                style: TextStyle(fontSize: 30),
              ),
            )
        ),
        FlatButton(onPressed:resetQuiz,
            child: Text("Reset Quiz!",style: TextStyle(fontSize: 20),))
      ],
    );
}
}
