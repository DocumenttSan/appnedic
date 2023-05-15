import 'package:flutter/material.dart';
import 'package:appnedic/screens/quiz/finish_quiz.dart';

class LetterQuiz extends StatefulWidget {
  const LetterQuiz({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class Quiz {
  String que; //Question
  int queHasImg; //ถ้ามีรูป กด1 ถ้าไม่มี กด0
  String imageQue; //ใส่ที่อยู่ของรูป คำถาม
  List<String> ans; //ช้อยส์4ข้อ ใส่แบบนี้นะ ['1','2','3','4']
  int ansHasImg; //ถ้ามีรูป กด1 ถ้าไม่มี กด0
  List<String> imageAns; //ใส่ที่อยู่ของรูป ช้อยส์
  String rightAns; //คำตอบที่ถูกต้อง

  Quiz(this.que, this.queHasImg, this.imageQue, this.ans, this.ansHasImg,
      this.imageAns, this.rightAns);
}

var queList = [
  Quiz("", 0, '', [], 1, [], ''), //ที่ใส่คำถามแต่ละข้อ
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

  _scoreText() {
    return Text(
      'Total right Question $rightAnsScore / $_totalQue',
      style: TextStyle(fontSize: 18, color: Colors.black54),
    );
  }

  _qustionCard(question, hasimg, image) {
    if (hasimg == 0) {
      return Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                '(${_currentQue + 1}) $question',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ),
      );
    } else {
      return Card(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(
                '(${_currentQue + 1}) $question',
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.blue,
                ),
              ),
              Image.asset(
                '$image',
                width: 100,
                height: 100,
              ),
            ],
          ),
        ),
      );
    }
  }

  _ansBtn(ans, hasimg, imgans, action, rightAns) {
    if (hasimg == 0) {
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
    } else {
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
              Image.asset(
                '$imgans',
                width: 100,
                height: 100,
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
        title: Text('Animals Quiz'),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 100,
            ),
            _scoreText(),
            SizedBox(
              height: 10,
            ),
            _qustionCard(_currentQuiz.que, _currentQuiz.queHasImg,
                _currentQuiz.imageQue),
            SizedBox(
              height: 60,
            ),
            _ansBtn(_currentQuiz.ans[0], _currentQuiz.ansHasImg,
                _currentQuiz.imageAns[0], () {}, _currentQuiz.rightAns),
            _ansBtn(_currentQuiz.ans[1], _currentQuiz.ansHasImg,
                _currentQuiz.imageAns[1], () {}, _currentQuiz.rightAns),
            _ansBtn(_currentQuiz.ans[2], _currentQuiz.ansHasImg,
                _currentQuiz.imageAns[2], () {}, _currentQuiz.rightAns),
            _ansBtn(_currentQuiz.ans[3], _currentQuiz.ansHasImg,
                _currentQuiz.imageAns[3], () {}, _currentQuiz.rightAns),
            Spacer(),
            Row(
              children: [
                _changeButton(),
              ],
            )
          ],
        ),
      ),
    );
  }
}
