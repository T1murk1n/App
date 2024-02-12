import 'package:flutter/material.dart';
import 'package:medicine/pages/styles.dart';


dynamic arrTitles = ['Позвоночник', 'Ребра', 'Грудина', 'Грудная клетка'];

class SecondSubMenu extends StatefulWidget {
  const SecondSubMenu({super.key});

  @override
  State<SecondSubMenu> createState() => _SecondSubMenuState();
}

class _SecondSubMenuState extends State<SecondSubMenu> {
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
        title: Text('Кости туловища'),
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
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
              itemCount: arrTitles.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                    padding: const EdgeInsets.only(top: 18.0),
                    child:

                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: const Color.fromARGB(255, 255, 247, 237),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, '/menu');
                      },
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(arrTitles[index], style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.w400, fontFamily: 'Roboto'),),
                              Icon(Icons.arrow_forward_ios_rounded, color: const Color.fromARGB(255, 253, 186, 116),)
                            ],
                          ),
                        ),
                      ),
                    )
                );
              }
          ),
        ),
      ),

    );
  }
}