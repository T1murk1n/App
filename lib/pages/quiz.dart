import 'package:flutter/material.dart';
import 'dart:math';

class Question {
  final String text;
  final List<Option> options;
  bool isLocked;
  Option? selectedOption;

  Question({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedOption,
  });
}

class Option {
  final String text;
  final bool isCorrect;

  Option({
    required this.text,
    required this.isCorrect,
  });
}

List<Question> _questions = [
  Question(
      text: "Отличительной особенностью шейных позвонков является?",
      options: [
        Option(text: 'малое тело', isCorrect: true),
        Option(text: 'раздвоенный остистый отросток', isCorrect: false),
        Option(text: 'отверстие поперечного отростка', isCorrect: false),
        Option(text: 'широкое позвоночное отверстие', isCorrect: false),
      ]
  ),
  Question(
      text: "The capital of Germany?",
      options: [
        Option(text: 'Moscow', isCorrect: false),
        Option(text: 'London', isCorrect: false),
        Option(text: 'Berlin', isCorrect: true),
        Option(text: 'Oslo', isCorrect: false),
      ]
  ),
  Question(
      text: "The capital of England?",
      options: [
        Option(text: 'Moscow', isCorrect: false),
        Option(text: 'London', isCorrect: true),
        Option(text: 'Berlin', isCorrect: false),
        Option(text: 'Oslo', isCorrect: false),
      ]
  ),
];

List<Question> shuffle(List<Question> items) {
  var random = new Random();

  for (var i = items.length - 1; i > 0; i--) {
    var n = random.nextInt(i + 1);
    var temp = items[i];
    items[i] = items[n];
    items[n] = temp;
  }
  return items;
}


final questions = shuffle(_questions);


class OptionsWidget extends StatelessWidget {
  final Question question;
  final ValueChanged<Option> onClickedOption;
  const OptionsWidget({
    Key ? key,
    required this.question,
    required this.onClickedOption,
  }) :  super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: question.options.map((option) => buildOption(context, option)).toList(),
    );
  }
  Widget buildOption(BuildContext context, Option option) {
    final color = getColorForOption(option, question);
    final backColor = getBackColorForOption(option, question);

    return GestureDetector(
      onTap: () => onClickedOption(option),
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            color: backColor,
            border: Border.all(width: 2, color: color),
            borderRadius: BorderRadius.circular(24.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(14.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Text(
                    option.text,
                    style: TextStyle(fontSize: 20, fontFamily: 'Roboto', color: color),
                  ),
                ),
                getIconForOption(option, question)
              ],
            ),
          ),
        ),
      ),
    );
  }
  Color getBackColorForOption(Option option, Question question) {
    final isSelected = option == question.selectedOption;
    if(question.isLocked) {
      if(isSelected) {
        return option.isCorrect ? Color.fromARGB(35, 28, 169, 80) : Color.fromARGB(35, 239, 68, 68);
      } else if (option.isCorrect) {
        return Color.fromARGB(35, 28, 169, 80);
      }
    }
    return Colors.transparent;
  }

  Color getColorForOption(Option option, Question question) {
    final isSelected = option == question.selectedOption;
    if(question.isLocked) {
      if(isSelected) {
        return option.isCorrect ? Colors.green : Colors.red;
      } else if (option.isCorrect) {
        return Colors.green;
      }
    }
    return Colors.grey.shade500;
  }

  Widget getIconForOption(Option option, Question question) {
    final isSelected = option == question.selectedOption;
    if(question.isLocked) {
      if(isSelected) {
        return option.isCorrect ? Icon(Icons.check_circle, color: Colors.green) : Icon(Icons.cancel, color: Colors.red);
      } else if (option.isCorrect) {
        return Icon(Icons.check_circle, color: Colors.green);
      }
    }
    return Icon(Icons.circle_outlined, color: Colors.grey);
  }



}

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key, required this.score}) : super(key: key);

  final int score;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          if(index == 0) {
            Navigator.pushNamed(context, '/');
          }
          if(index == 1) {
            Navigator.pushNamed(context, '/splash');
          }
          if(index == 2) {
            Navigator.pushNamed(context, '/splash');
          }
        },
        indicatorColor: Colors.transparent,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.cast_for_education)),
            label: 'Моё обучение',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
        ],
      ),
      appBar: AppBar(
        title: Text('Ваш результат'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                SizedBox(
                  height: 250,
                  width: 250,
                  child: CircularProgressIndicator(
                    strokeWidth: 16,
                    value: score/questions.length,
                    color: Colors.green,
                    backgroundColor: Colors.transparent,
                    ),

                ),
                Text('${((score/questions.length)*100).toStringAsFixed(2)}%', style: TextStyle(fontFamily: 'Roboto', fontSize: 32, fontWeight: FontWeight.w600),),
              ],
            ),

            SizedBox(height: 34,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Верных ответов ', style: TextStyle(fontSize: 18),),
                Text('${score}', style: TextStyle(color: Colors.green, fontSize: 18),),
                SizedBox(width: 24,),
                Text('Ошибок ', style: TextStyle(fontSize: 18),),
                Text('${questions.length - score}', style: TextStyle(color: Colors.red, fontSize: 18),),
              ],
            ),
            // ElevatedButton(
            //     onPressed: () {
            //       Navigator.pushNamed(context, '/quiz');
            //
            //     },
            //     child: Text("Repeat")
            // )
          ],
        ),
      ),
    );
  }

}



class QuestionWidget extends StatefulWidget {
  const QuestionWidget({super.key});

  @override
  State<QuestionWidget> createState() => _QuestionWidgetState();
}

class _QuestionWidgetState extends State<QuestionWidget> {
  late PageController _controller;
  int _questionNumber = 1;
  int _score = 0;
  bool _isLocked = false;

  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage:0);
  }



  @override
    Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text('Вопрос $_questionNumber/${questions.length}', style: TextStyle(fontFamily: 'Roboto', fontSize: 20, fontWeight: FontWeight.w600),),
          Divider(thickness: 1, color: Colors.grey,),
          Expanded(
              child: PageView.builder(
                itemCount: questions.length,
                controller: _controller,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  final _question = questions[index];
                  return buildQuestion(_question);
                }
              ),
          ),
          //_isLocked ? buildElevatedButton() : const SizedBox.shrink(),
          buildElevatedButton(),
          SizedBox(height: 20,),
        ],
      ),
    );
  }






  Column buildQuestion(Question question) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 12,),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Text(
                question.text,
                style: TextStyle(fontSize: 25),
              ),
          ),
        SizedBox(height: 12,),
        Expanded(
            child: OptionsWidget(
              question: question,
              onClickedOption: (option) {
                if(question.isLocked) {
                  return;
                } else {
                  setState(() {
                    question.isLocked = true;
                    question.selectedOption = option;
                  });
                  _isLocked = question.isLocked;
                  if(question.selectedOption!.isCorrect) {
                    _score++;
                  }
                }
              },
            )
        )
      ],
    );
  }

  ElevatedButton buildElevatedButton() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(

          primary: Color.fromARGB(255, 234, 88, 12),
          minimumSize: const Size.fromHeight(50),
        ),
        onPressed: () {
          if(_questionNumber < questions.length) {
            _controller.nextPage(
              duration: const Duration(milliseconds: 250),
              curve: Curves.easeInExpo,
            );

            setState(() {
              _questionNumber++;
              _isLocked = false;
            });
          } else {
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => ResultPage(score: _score)),
            );
          }
        },
        child: Text(_questionNumber < questions.length ? 'Далее' : 'Завершить', style: TextStyle(fontFamily: 'Roboto', fontSize: 16, color: Colors.white),)
    );
  }
}


//
class Quiz extends StatefulWidget {
  const Quiz({super.key});

  @override
  State<Quiz> createState() => _QuizState();
}

class _QuizState extends State<Quiz> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          if(index == 0) {
            Navigator.pushNamed(context, '/');
          }
          if(index == 1) {
            Navigator.pushNamed(context, '/splash');
          }
          if(index == 2) {
            Navigator.pushNamed(context, '/splash');
          }
        },
        indicatorColor: Colors.transparent,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.home),
            label: 'Главная',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.cast_for_education)),
            label: 'Моё обучение',
          ),
          NavigationDestination(
            icon: Icon(Icons.person),
            label: 'Профиль',
          ),
        ],
      ),
      appBar: AppBar(),
      body: SafeArea(
          child: QuestionWidget()
      ),
    );
  }
}
