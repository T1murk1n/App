import 'package:flutter/material.dart';
import 'dart:math';
import 'package:medicine/pages/styles.dart';

class QuizzScreen extends StatefulWidget {
  const QuizzScreen({Key? key}) : super(key: key);

  @override
  _QuizzScreenState createState() => _QuizzScreenState();
}
Widget getBackColorForOption(btnPressed, index, i) {
  return btnPressed
      ? questions[index].answers!.values.toList()[i]
      ? Icon(Icons.check_circle, color: Colors.green)
      : Icon(Icons.cancel, color: Colors.red)
      : Icon(Icons.circle_outlined, color: Colors.grey);
}

class _QuizzScreenState extends State<QuizzScreen> {
  int question_pos = 0;
  int score = 0;
  bool btnPressed = false;
  PageController? _controller;
  String btnText = "Далее";
  bool answered = false;
  @override
  void initState() {
    super.initState();
    _controller = PageController(initialPage: 0);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            if(index == 0) {
              Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
            }
            if(index == 1) {
              Navigator.pushNamedAndRemoveUntil(context, '/splash', (route) => false);
            }
            if(index == 2) {
              Navigator.pushNamedAndRemoveUntil(context, '/splash', (route) => false);
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
        appBar:AppBar(
          title: Text('Позвоночник'),
          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: IconButton(
                onPressed: () {

                },
                icon: Icon(Icons.favorite_border, size: 30),
              ),
            ),
            Padding(
                padding: const EdgeInsets.only(left: 12.0, right: 12.0),
                child: IconButton(
                  onPressed: () {

                  },
                  icon: Icon(Icons.search_rounded, size: 30,),
                )
            )
          ],
        ),
      body: Padding(
          padding: const EdgeInsets.all(18.0),
          child: PageView.builder(
            controller: _controller!,
            onPageChanged: (page) {
              if (page == questions.length - 1) {
                setState(() {
                  btnText = "Завершить";
                });
              }
              setState(() {
                answered = false;
              });
            },
            physics: new NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: Text(
                        "Вопрос ${index + 1}/${_questions.length}",
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 26.0,
                        ),
                      ),
                    ),
                    SizedBox(height: 10,),
                    SizedBox(
                      width: double.infinity,
                      height: 100.0,
                      child: Text(
                        "${questions[index].question}",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                    for (int i = 0; i < questions[index].answers!.length; i++)
                      Container(
                        width: double.infinity,
                        height: 80.0,
                        margin: EdgeInsets.only(
                            bottom: 20.0),
                        child: RawMaterialButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(28.0),
                            side: BorderSide(color: btnPressed
                                ? questions[index].answers!.values.toList()[i]
                                ? Colors.green
                                : Colors.red
                                : Colors.grey)
                          ),
                          fillColor: btnPressed
                              ? questions[index].answers!.values.toList()[i]
                              ? AppColor.greenColor
                              : AppColor.redColor
                              : AppColor.transparentColor,
                          onPressed: !answered
                              ? () {
                            if (questions[index]
                                .answers!
                                .values
                                .toList()[i]) {
                              score++;
                            }
                            setState(() {
                              btnPressed = true;
                              answered = true;
                            });
                          }
                              : null,
                          child: Padding(
                            padding: const EdgeInsets.only(left: 22.0, right: 22),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Flexible(
                                  child: Text(questions[index].answers!.keys.toList()[i],
                                      style: TextStyle(
                                        color: btnPressed
                                            ? questions[index].answers!.values.toList()[i]
                                            ? Colors.green
                                            : Colors.red
                                            : Colors.grey,
                                        fontSize: 18.0,
                                      )),
                                ),
                                getBackColorForOption(btnPressed, index, i)
                                  //  Icon(Icons.circle_outlined, color: Colors.grey)
                              ],
                            ),
                          ),
                        ),
                      ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      width: double.infinity,
                      child: RawMaterialButton(
                        onPressed: () {
                          if (_controller!.page?.toInt() == questions.length - 1) {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ResultScreen(score)));
                          } else {
                            _controller!.nextPage(
                                duration: const Duration(milliseconds: 250),
                                curve: Curves.easeInExpo);

                            setState(() {
                              btnPressed = false;
                            });
                          }
                        },
                        shape: StadiumBorder(),
                        fillColor: Colors.deepOrangeAccent,
                        padding: const EdgeInsets.all(18.0),
                        child: Text(
                          btnText,
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    )
                  ],
                ),
              );
            },
            itemCount: questions.length,
          )),
    );
  }
}

class ResultScreen extends StatefulWidget {
  int score;
  ResultScreen(this.score, {Key? key}) : super(key: key);

  @override
  _ResultScreenState createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
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
      body: Column(
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
                  value: widget.score/questions.length,
                  color: Colors.green,
                  backgroundColor: Colors.transparent,
                ),

              ),
              Text('${((widget.score/questions.length)*100).toStringAsFixed(2)}%', style: TextStyle(fontFamily: 'Roboto', fontSize: 32, fontWeight: FontWeight.w600),),
            ],
          ),
          SizedBox(height: 34,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Верных ответов: ', style: TextStyle(fontSize: 18),),
              Text('${widget.score}', style: TextStyle(color: Colors.green, fontSize: 18),),
              SizedBox(width: 24,),
              Text('Ошибок: ', style: TextStyle(fontSize: 18),),
              Text('${questions.length - widget.score}', style: TextStyle(color: Colors.red, fontSize: 18),),
            ],
          ),
          SizedBox(height: 34,),
          Container(
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepOrangeAccent
                ),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => QuizzScreen(),
                      ));
                },
                child: Padding(
                  padding: const EdgeInsets.all(14.0),
                  child: Text(
                    "Пройти тест заново",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class QuestionModel {
  String? question;
  Map<String, bool>? answers;
  QuestionModel(this.question, this.answers);
}
List<QuestionModel> _questions = [
  QuestionModel(
    "Отличительной особенностью шейных позвонков является:",
    {
      "малое тело": false,
      "раздвоенный остистый отросток": false,
      "отверстие поперечного отростка": true,
      "широкое позвоночное отверстие": false,
    },
  ),
  QuestionModel("Fovea dentis характерна для:", {
    "Atlas": true,
    "Axis": false,
    "6-го шейного позвонка": false,
    "7-го шейного позвонка": false,
  }),
  QuestionModel("Axis отличается:", {
    "отсутствием тела": false,
    "длинным остистым отростком": false,
    "отсутствием отверстия поперечного отростка": false,
    "наличием зуба": true,
  }),
  QuestionModel("Сонный бугорок является:", {
    "задним бугорком дуги атланта": false,
    "передним бугорком поперечного отростка 6-го шейного позвонка": true,
    "задним бугорком поперечного отростка 6-го шейного позвонка": false,
    "передним бугорком поперечного отростка 7-го шейного позвонка": false,
  }),
  QuestionModel("Характерной особенность 7-го шейного позвонка является:", {
    "наличие сонного бугорка": false,
    "наличие зуба": false,
    "наличие борозды позвоночной артерии": false,
    "наличие длинного остистого отростка": true,
  }),
  QuestionModel("Отличительной особенностью грудных позвонков являются:", {
    "длинные, наклоненные вниз остистые отростки": true,
    "позвоночное отверстие небольших размеров": false,
    "добавочные отростки": false,
    "все позвонки имеют реберные ямки": false,
  }),
  QuestionModel("Сакрализацией называют:", {
    "увеличение размеров крестца": false,
    "увеличение числа крестцовых позвонков": true,
    "увеличение числа поясничных позвонков": false,
    "уменьшение числа крестцовых позвонков": false,
  }),
  QuestionModel("Люмбализацией называют:", {
    "увеличение числа грудных позвонков": false,
    "увеличение числа крестцовых позвонков": false,
    "увеличение числа поясничных позвонков": true,
    "уменьшение числа поясничных позвонков": false,
  }),
  QuestionModel("Промежуточный крестцовый гребень формируется вследствие срастания:", {
        "тел позвонков": false,
        "остистых отростков": false,
        "поперечных отростков": true,
        "суставных отростков": false,
      }),
  QuestionModel("Реберные хрящи ложных ребер соединяются:", {
    "с хрящами вышележащих ребер": true,
    "с телами грудных позвонков": false,
    "с грудиной": false,
    "заканчиваются в мышцах брюшной стенки": false,
  }),
];

List<QuestionModel> shuffle(List<QuestionModel> items) {
  var random = new Random();

  for (var i = items.length - 1; i > 0; i--) {
    var n = random.nextInt(i + 1);
    var temp = items[i];
    items[i] = items[n];
    items[n] = temp;
  }
  return items;
}
List<QuestionModel> questions = shuffle(_questions);
