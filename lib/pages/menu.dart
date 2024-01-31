import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override

  Widget build(BuildContext context) {

    final titleText = TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
        fontFamily: 'Roboto'
    );
    final style = ButtonStyle(
        padding: MaterialStateProperty.all(EdgeInsets.all(0)),
        minimumSize: MaterialStateProperty.all(Size(160, 160)),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20)
            )
        )
    );
    final text = TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w300,
        fontFamily: 'Roboto',
        color: Colors.black
    );

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
        title: Text('Позвоночник'),
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                Wrap(
                  runSpacing: 16,
                  spacing: 16,
                  alignment: WrapAlignment.spaceBetween,
                  children: [

                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/notes');
                      },
                      style: style,
                      child: Container(
                        width: 170,
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 249, 250, 251),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(0),
                              ),
                              child: Image(image: AssetImage('assets/theory.png'), fit: BoxFit.cover),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Теория', style: text),
                            ),
                          ],
                        ),
                      ),

                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/cards');
                      },
                      style: style,
                      child: Container(
                        width: 170,
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 249, 250, 251),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(0),
                              ),
                              child: Image(image: AssetImage('assets/latin.png'), fit: BoxFit.cover),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Латинский', style: text),
                            ),
                          ],
                        ),
                      ),

                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/quiz');
                      },
                      style: style,
                      child: Container(
                        width: 170,
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 249, 250, 251),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(0),
                              ),
                              child: Image(image: AssetImage('assets/tests.png'), fit: BoxFit.cover),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Тесты', style: text),
                            ),
                          ],
                        ),
                      ),

                    ),
                    ElevatedButton(
                      onPressed: () {

                      },
                      style: style,
                      child: Container(
                        width: 170,
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 249, 250, 251),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(0),
                              ),
                              child: Image(image: AssetImage('assets/sit.png'), fit: BoxFit.cover),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Ситуационные задачи', style: text),
                            ),
                          ],
                        ),
                      ),

                    ),
                    ElevatedButton(
                      onPressed: () {

                      },
                      style: style,
                      child: Container(
                        width: 170,
                        height: 160,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: const Color.fromARGB(255, 249, 250, 251),
                        ),
                        child: Column(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(0),
                                bottomRight: Radius.circular(0),
                              ),
                              child: Image(image: AssetImage('assets/video.png'), fit: BoxFit.cover),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Видео', style: text),
                            ),
                          ],
                        ),
                      ),

                    ),

                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
