import 'package:flutter/material.dart';
import 'dart:math';
import 'package:medicine/pages/styles.dart';

class TestRusLat extends StatefulWidget {
  const TestRusLat({Key? key}) : super(key: key);

  @override
  _TestRusLatState createState() => _TestRusLatState();
}
Widget getBackColorForOption(btnPressed, index, i) {
  return btnPressed
      ? questions[index].answers!.values.toList()[i]
      ? Icon(Icons.check_circle, color: Colors.green)
      : Icon(Icons.cancel, color: Colors.red)
      : Icon(Icons.circle_outlined, color: Colors.grey);
}

class _TestRusLatState extends State<TestRusLat> {
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
        title: Text('Рус->Лат'),
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
                        builder: (context) => TestRusLat(),
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
    "Копчик",
    {
      "caput costae": false,
      "hiatus sacralis": false,
      "os ciccygis": true,
      "tuberositas sacralis": false,
    },
  ),
  QuestionModel("Атлант", {
    "atlas": true,
    "processus spinosus": false,
    "vertebra": false,
    "arcus vertebrae": false,
  }),
  QuestionModel("Позвонок", {
    "axis": false,
    "fovea dentis": false,
    "massae laterales": false,
    "vertebra": true,
  }),
  QuestionModel("Крестец", {
    "promontorium": false,
    "os sacгum": true,
    "facies dorsalis": false,
    "facies articulares inferiores": false,
  }),
  QuestionModel("Дорсальные крестцовые отверстия", {
    "crista sacralis lateralis": false,
    "crista sacralis intermedia": false,
    "costa sacralis mediana": false,
    "foramina sacralia posteriora": true,
  }),
  QuestionModel("Тело грудины", {
    "corpus sterni": true,
    "angulus sterni": false,
    "processus xiphoideus": false,
    "incisura clavicularis": false,
  }),
  QuestionModel("Грудина", {
    "sulcus venae subclaviae": false,
    "sternum": true,
    "angulus sterni": false,
    "manubrium sterni": false,
  }),
  QuestionModel("Головка ребра", {
    "costae verae": false,
    "costae spuriae": false,
    "caput costae": true,
    "sulcus costae": false,
  }),
  QuestionModel("Копчиковые рога", {
    "hiatus sacralis": false,
    "costae verae": false,
    "cornua coccygea": true,
    "cartilago costalis": false,
  }),
  QuestionModel("Мыс крестца", {
    "promontorium": true,
    "facies dorsalis": false,
    "basis ossis sacri": false,
    "os sacгum": false,
  }),

  QuestionModel("Зуб осевого позвонка", {
    "fovea dentis": false,
    "sulcus аrteriae vertebralis": false,
    "dens axis": true,
    "axis": false,
  }),
  QuestionModel("Позвоночный канал", {
    "processus transversus": false,
    "processus spinosus": false,
    "canalis vertebralis": true,
    "arcus vertebrae": false,
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
