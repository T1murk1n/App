import 'package:flutter/material.dart';
import 'package:medicine/pages/styles.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {



    return DefaultTabController(
        length: 2,
        child: Scaffold(
          bottomNavigationBar: NavigationBar(
            onDestinationSelected: (int index) {
              if(index == 0) {
                Navigator.pushReplacementNamed(context, '/');
              }
              if(index == 1) {
                Navigator.pushReplacementNamed(context, '/splash');
              }
              if(index == 2) {
                Navigator.pushReplacementNamed(context, '/splash');
              }
            },
            indicatorColor: Colors.indigo.shade100,
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
            toolbarHeight:100,
            title: Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Я ищу...',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  filled: true,
                  fillColor: Colors.grey.shade100,
                  suffixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.search,
                    ),
                  ),
                ),
              ),
            ),
            bottom: const TabBar(
              unselectedLabelColor: Colors.blueGrey,
              labelColor: Colors.black,
              dividerColor: Colors.transparent,
              indicatorColor: Colors.black,
              tabs: <Widget> [
                Tab(
                  text: 'По разделам',
                ),
                Tab(
                  text: 'По инструментам',
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              SingleChildScrollView(
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(18),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Wrap(
                          runSpacing: 10,
                          spacing: 10,
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width / 2.4,
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
                                    child: Image(image: AssetImage('assets/books.jpg'), fit: BoxFit.cover),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Советы по изучению анатомии', style: text),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2.4,
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
                                    child: Image(image: AssetImage('assets/anat.png'), fit: BoxFit.cover),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Введение в анатомию', style: text),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2.4,
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
                                    child: Image(image: AssetImage('assets/his.png'), fit: BoxFit.cover),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('История анатомии', style: text),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2.4,
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
                                    child: Image(image: AssetImage('assets/endocr.png'), fit: BoxFit.cover),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Эндокринная система', style: text),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2.4,
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
                                    child: Image(image: AssetImage('assets/respiratory.png'), fit: BoxFit.cover),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Дыхательная система', style: text),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2.4,
                              //height: 160,
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
                                    child: Image(image: AssetImage('assets/heart.png'), fit: BoxFit.cover),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Сердечно-сосудистая система', style: text),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2.4,
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
                                    child: Image(image: AssetImage('assets/nerves.png'), fit: BoxFit.cover),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Нервная система', style: text),
                                  ),
                                ],
                              ),
                            ),




                            ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/menu');
                              },
                              style: style,
                              child: Container(
                                width: MediaQuery.of(context).size.width / 2.4,
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
                                      child: Image(image: AssetImage('assets/osteology.png'), fit: BoxFit.cover),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text('Остеология', style: text),
                                    ),
                                  ],
                                ),
                              ),

                            ),


                            Container(
                              width: MediaQuery.of(context).size.width / 2.4,
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
                                    child: Image(image: AssetImage('assets/arthrology.png'), fit: BoxFit.cover),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Артрология', style: text),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2.4,
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
                                    child: Image(image: AssetImage('assets/myology.png'), fit: BoxFit.cover),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Миология', style: text),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2.4,
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
                                    child: Image(image: AssetImage('assets/food.png'), fit: BoxFit.cover),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Пищеварительная система', style: text),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width / 2.4,
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
                                    child: Image(image: AssetImage('assets/urinary.png'), fit: BoxFit.cover),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text('Мочевая система', style: text),
                                  ),
                                ],
                              ),
                            ),

                          ],
                        )
                      ],
                    ),
                  ),
                ),
              ),

              SingleChildScrollView(
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.all(18),
                    child: Column(
                      children: [
                        Text('Что-то будет')
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        )
    );
  }

}