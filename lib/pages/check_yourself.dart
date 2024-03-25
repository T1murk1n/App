import 'package:flutter/material.dart';
import 'package:medicine/pages/styles.dart';


dynamic arrCheckColumn1 = [['Vertebrae sacrales', 1],['Os coccygis', 2],['Vertebrae lumbales', 3],['Os sacrum', 4],['Vertebrae thoracicae', 5]];
dynamic arrCheckColumn2 = [['Крестцовые позвонки', 1], ['Грудные позвонки', 5],['Крестец', 4],['Поясничные позвонки', 3],['Копчик', 2],];

class CheckYourself extends StatefulWidget {
  const CheckYourself({super.key});

  @override
  State<CheckYourself> createState() => _CheckYourselfState();
}

class _CheckYourselfState extends State<CheckYourself> {
  bool isPressed1 = false;
  bool isPressed2 = false;
  bool isPressed3 = false;
  bool isPressed4 = false;
  bool isPressed5 = false;
  int answer = 99;
  bool correctAnswer1 = false;
  bool correctAnswer2 = false;
  bool correctAnswer3 = false;
  bool correctAnswer4 = false;
  bool correctAnswer5 = false;
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
      appBar: AppBar(
        title: Text('Проверь себя'),
        actions: [
          Padding(
            padding: const EdgeInsets.only(left: 12.0, right: 12.0),
            child: IconButton(
              onPressed: () {

              },
              icon: Icon(Icons.favorite_border, size: 30),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const SizedBox(height: 50,),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isPressed1 = false;
                            isPressed2 = false;
                            isPressed3 = false;
                            isPressed4 = false;
                            isPressed5 = false;
                            answer = arrCheckColumn1[0][1];
                            correctAnswer1 = false;
                            correctAnswer2 = false;
                            correctAnswer3 = false;
                            correctAnswer4 = false;
                            correctAnswer5 = false;
                          });

                        },
                      style: paddingStyle,
                      child: Container(
                          width: MediaQuery.of(context).size.width / 3.5,
                          height: 80,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 22.0),
                              child: Text(arrCheckColumn1[0][0], style: TextStyle(color: Colors.black),),
                            ),
                          )
                      ),
                    ),
                    const SizedBox(height: 18,),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isPressed1 = false;
                            isPressed2 = false;
                            isPressed3 = false;
                            isPressed4 = false;
                            isPressed5 = false;
                            answer = arrCheckColumn1[1][1];
                            correctAnswer1 = false;
                            correctAnswer2 = false;
                            correctAnswer3 = false;
                            correctAnswer4 = false;
                            correctAnswer5 = false;
                          });

                        },
                      style: paddingStyle,
                      child: Container(
                          width: MediaQuery.of(context).size.width / 3.5,
                          height: 80,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 0.0),
                              child: Text(arrCheckColumn1[1][0], style: TextStyle(color: Colors.black),),
                            ),
                          )
                      ),
                    ),
                    const SizedBox(height: 18,),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isPressed1 = false;
                            isPressed2 = false;
                            isPressed3 = false;
                            isPressed4 = false;
                            isPressed5 = false;
                            answer = arrCheckColumn1[2][1];
                            correctAnswer1 = false;
                            correctAnswer2 = false;
                            correctAnswer3 = false;
                            correctAnswer4 = false;
                            correctAnswer5 = false;
                          });

                        },
                      style: paddingStyle,
                      child: Container(
                          width: MediaQuery.of(context).size.width / 3.5,
                          height: 80,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 22.0),
                              child: Text(arrCheckColumn1[2][0], style: TextStyle(color: Colors.black),),
                            ),
                          )
                      ),
                    ),
                    const SizedBox(height: 18,),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isPressed1 = false;
                            isPressed2 = false;
                            isPressed3 = false;
                            isPressed4 = false;
                            isPressed5 = false;
                            answer = arrCheckColumn1[3][1];
                            correctAnswer1 = false;
                            correctAnswer2 = false;
                            correctAnswer3 = false;
                            correctAnswer4 = false;
                            correctAnswer5 = false;
                          });

                        },
                      style: paddingStyle,
                      child: Container(
                          width: MediaQuery.of(context).size.width / 3.5,
                          height: 80,
                          child: Center(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 0.0),
                              child: Text(arrCheckColumn1[3][0], style: TextStyle(color: Colors.black),),
                            ),
                          )
                      ),
                    ),
                    const SizedBox(height: 18,),
                    ElevatedButton(
                      onPressed: () {
                        setState(() {
                          isPressed1 = false;
                          isPressed2 = false;
                          isPressed3 = false;
                          isPressed4 = false;
                          isPressed5 = false;
                          answer = arrCheckColumn1[4][1];
                          correctAnswer1 = false;
                          correctAnswer2 = false;
                          correctAnswer3 = false;
                          correctAnswer4 = false;
                          correctAnswer5 = false;
                        });
                      },
                      style: paddingStyle,
                      child: Container(
                        width: MediaQuery.of(context).size.width / 3.5,
                        height: 80,
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.only(left: 22.0),
                            child: Text(arrCheckColumn1[4][0], style: TextStyle(color: Colors.black),),
                          ),
                        )
                      ),

                    ),
                  ],
                ),
                Column(
                  children: [
                    const SizedBox(height: 50,),
                    ElevatedButton(
                        onPressed: () {
                          if(answer == arrCheckColumn2[0][1]) {
                              setState(() {
                                isPressed1 = true;
                                correctAnswer1 = true;
                              });
                          } else {
                            setState(() {
                              isPressed1 = true;
                            });
                          }
                        },
                        style: paddingStyle,
                        child: Container(
                            width: MediaQuery.of(context).size.width / 3.5,
                            height: 80,
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.only(left: 22.0),
                                  child: Text(arrCheckColumn2[0][0], style: TextStyle(color: isPressed1 ? correctAnswer1 ? Colors.green : Colors.red : Colors.black),)
                              ),
                            )
                        ),
                    ),
                    const SizedBox(height: 18,),
                    ElevatedButton(
                        onPressed: () {
                          if(answer == arrCheckColumn2[1][1]) {
                            setState(() {
                              isPressed2 = true;
                              correctAnswer2 = true;
                            });
                          }else {
                            setState(() {
                              isPressed2 = true;
                            });
                          }
                        },
                        style: paddingStyle,
                        child: Container(
                            width: MediaQuery.of(context).size.width / 3.5,
                            height: 80,
                            child: Center(
                              child: Padding(
                                  padding: const EdgeInsets.only(left: 22.0),
                                  child: Text(arrCheckColumn2[1][0], style: TextStyle(color: isPressed2 ? correctAnswer2 ? Colors.green : Colors.red : Colors.black),)
                              ),
                            )
                        ),
                    ),
                    const SizedBox(height: 18,),
                    ElevatedButton(
                        onPressed: () {
                          if(answer == arrCheckColumn2[2][1]) {
                            setState(() {
                              isPressed3 = true;
                              correctAnswer3 = true;
                            });
                          }else {
                            setState(() {
                              isPressed3 = true;
                            });
                          }
                        },
                      style: paddingStyle,
                        child: Container(
                            width: MediaQuery.of(context).size.width / 3.5,
                            height: 80,
                            child: Center(
                              child: Padding(
                                  padding: const EdgeInsets.only(left: 0.0),
                                  child: Text(arrCheckColumn2[2][0], style: TextStyle(color: isPressed3 ? correctAnswer3 ? Colors.green : Colors.red : Colors.black),)
                              ),
                            )
                        ),
                    ),
                    const SizedBox(height: 18,),
                    ElevatedButton(
                        onPressed: () {
                          if(answer == arrCheckColumn2[3][1]) {
                            setState(() {
                              isPressed4 = true;
                              correctAnswer4 = true;
                            });
                          }else {
                            setState(() {
                              isPressed4 = true;
                            });
                          }
                        },
                        style: paddingStyle,
                        child: Container(
                            width: MediaQuery.of(context).size.width / 3.5,
                            height: 80,
                            child: Center(
                              child: Padding(
                                  padding: const EdgeInsets.only(left: 16.0),
                                  child: Flexible(child: Text(arrCheckColumn2[3][0], style: TextStyle(color: isPressed4 ? correctAnswer4 ? Colors.green : Colors.red : Colors.black),))
                              ),
                            )
                        ),
                    ),
                    const SizedBox(height: 18,),
                    ElevatedButton(
                        onPressed: () {
                          if(answer == arrCheckColumn2[4][1]) {
                            setState(() {
                              isPressed5 = true;
                              correctAnswer5 = true;
                            });
                          }else {
                            setState(() {
                              isPressed5 = true;
                            });
                          }
                        },
                        style: paddingStyle,
                        child: Container(
                            width: MediaQuery.of(context).size.width / 3.5,
                            height: 80,
                            child: Center(
                              child: Padding(
                                  padding: const EdgeInsets.only(left: 0.0),
                                  child: Flexible(child: Text(arrCheckColumn2[4][0], style: TextStyle(color: isPressed5 ? correctAnswer5 ? Colors.green : Colors.red : Colors.black),))
                              ),
                            )
                        ),
                    ),
                  ],
                ),
              ],
                ),
          ),
          ),
        ),
    );
  }
}
