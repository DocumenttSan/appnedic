import 'package:flutter/material.dart';
import 'package:appnedic/screens/quiz/finish_quiz.dart';
import 'package:appnedic/screens/quiz/animal_qiz_model.dart';

class LetterQuiz extends StatefulWidget {
  const LetterQuiz({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class Quiz {
  String que;
  List<String> ans;
  String rightAns;

  Quiz(this.que, this.ans, this.rightAns);
}

var queList = [
  Quiz("What is 2 + 2?", ['4', '6', '2', '3'], '4'),
  Quiz("Flutter use for conding?",
      ['Web Apps', 'Mobile Apps', 'Desktop', 'All of Above'], 'All of Above'),
  Quiz('Dart used with ?', ['Java', 'PHP', 'Flutter', 'Pyhton'], 'Flutter')
];

class _HomeState extends State<LetterQuiz> {
  int _totalQue = 0;
  int _currentQue = 0;
  bool isClicked = false;
  bool nextisClick = false;

  int rightAnsScore = 0;

  late Quiz _currentQuiz;

  String img_tick = 'assets/images/check.png';
  String img_worng = 'assets/images/close.png';

  _title() {
    return Text(
      'Welcom to Quiz Game',
      style: TextStyle(
        fontSize: 22,
      ),
    );
  }

  _scoreText() {
    return Text(
      'Total right Question $rightAnsScore / $_totalQue',
      style: TextStyle(fontSize: 18, color: Colors.black54),
    );
  }

  _qustionCard(qustion) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          '(${_currentQue + 1}) $qustion',
          style: TextStyle(
            fontSize: 28,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }

  _ansBtn(ans, action, rightAns) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
      ),
      onPressed: isClicked
          ? null
          : nextisClick
              ? null
              : () {
                  setState(() {
                    isClicked = true;
                    nextisClick = false;
                  });
                  if (ans == rightAns) {
                    rightAnsScore++;
                  }
                },
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          children: [
            Text(
              '$ans',
              style: TextStyle(
                fontSize: 20,
                color: Colors.black,
              ),
            ),
            Spacer(),
            isClicked
                ? Container(
                    height: 20,
                    width: 20,
                    child: rightAns == ans
                        ? Image.asset(
                            img_tick,
                          )
                        : Image.asset(
                            img_worng,
                          ),
                  )
                : Container(),
          ],
        ),
      ),
    );
  }

  _changeQue() {
    if (_currentQue == _totalQue - 1) {
      print('Game Over');
    } else {
      isClicked = false;
      nextisClick = false;
      _currentQue++;
      _currentQuiz = queList[_currentQue];
      setState(() {});
    }
  }

  _changePrevQue() {
    if (_currentQue == 0) {
    } else {
      isClicked = true;
      nextisClick = true;
      _currentQue--;
      _currentQuiz = queList[_currentQue];
      setState(() {});
    }
  }

  _changeButton() {
    if (_currentQue == _totalQue - 1) {
      return ElevatedButton(
        onPressed: () {
          Navigator.pushReplacement(
              context, MaterialPageRoute(builder: (context) => FinishQuiz()));
        },
        child: Text('Finish'),
      );
    } else {
      return ElevatedButton(
        onPressed: () {
          if (nextisClick) {
            _changeQue();
            nextisClick = true;
          } else {
            _changeQue();
          }
        },
        child: Text('Next Question'),
      );
    }
  }

  _previousBtn() {
    return TextButton(
      onPressed: () {
        _changePrevQue();
      },
      child: Text('Previous Question'),
    );
  }

  @override
  void initState() {
    _totalQue = queList.length;
    _currentQue = 0;
    _currentQuiz = queList[_currentQue];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Simple Quiz Game'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _title(),
            SizedBox(
              height: 100,
            ),
            _scoreText(),
            SizedBox(
              height: 10,
            ),
            _qustionCard(_currentQuiz.que),
            SizedBox(
              height: 60,
            ),
            _ansBtn(_currentQuiz.ans[0], () {}, _currentQuiz.rightAns),
            _ansBtn(_currentQuiz.ans[1], () {}, _currentQuiz.rightAns),
            _ansBtn(_currentQuiz.ans[2], () {}, _currentQuiz.rightAns),
            _ansBtn(_currentQuiz.ans[3], () {}, _currentQuiz.rightAns),
            Spacer(),
            Row(
              children: [
                _changeButton(),
                _previousBtn(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
