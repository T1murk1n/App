import 'package:flutter/material.dart';
import 'package:medicine/pages/styles.dart';


class MenuLatin extends StatefulWidget {
  const MenuLatin({super.key});

  @override
  State<MenuLatin> createState() => _MenuLatinState();
}

class _MenuLatinState extends State<MenuLatin> {
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
        title: Text('Латинский'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: IconButton(
              onPressed: () {

              },
              icon: Icon(Icons.favorite_border, size: 30),
            ),
          ),
          Padding(
              padding: const EdgeInsets.all(12.0),
              child: IconButton(
                onPressed: () {

                },
                icon: Icon(Icons.search_rounded, size: 30,),
              )
          )
        ],
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 58.0),
            child: Column(
              children: [
                Wrap(
                  runSpacing: 16,
                  spacing: 16,
                  alignment: WrapAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 233, 213, 255),
                            ),
                          onPressed: () {
                            Navigator.pushNamed(context, '/cards');
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width / 3,
                            height: 68,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [Text('Карточки', style: TextStyle(color: Colors.black, fontSize: 18),),]
                                ),
                                SizedBox(height: 20,)
                              ],
                            ),
                          )
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 251, 207, 232),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/check_yourself');
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width / 3,
                              height: 68,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [Text('Проверь себя', style: TextStyle(color: Colors.black, fontSize: 18),),]
                                  ),
                                  SizedBox(height: 20,)
                                ],
                              ),
                            )
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 224, 231, 255),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/quiz2');
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width / 3,
                              height: 68,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [Text('Лат → Рус', style: TextStyle(color: Colors.black, fontSize: 18),),]
                                  ),
                                  SizedBox(height: 20,)
                                ],
                              ),
                            )
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Color.fromARGB(255, 199, 210, 254),
                            ),
                            onPressed: () {
                              Navigator.pushNamed(context, '/quiz2');
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width / 3,
                              height: 68,
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [Text('Рус → Лат', style: TextStyle(color: Colors.black, fontSize: 18),)]
                                  ),
                                  SizedBox(height: 20,)
                                ],
                              ),
                            )
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          ),
      ),
    );
  }
}
