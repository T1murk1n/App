import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

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
        indicatorColor: Colors.indigo.shade100,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
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

        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(18),
              child: Column(
                children: [
                  TextField(
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
                  SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text('По разделам', style: TextStyle(fontFamily: 'Roboto', fontSize: 18, fontWeight: FontWeight.bold, decoration: TextDecoration.underline,),),
                      Text('По инструментам', style: TextStyle(fontFamily: 'Roboto', fontSize: 18, fontWeight: FontWeight.bold, color: Colors.grey),)
                    ],
                  ),
                  SizedBox(height: 25),
                  Wrap(
                    runSpacing: 10,
                    spacing: 10,
                    children: [
                      Container(
                        width: 160,
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
                              child: Image(image: AssetImage('assets/books.jpg'), fit: BoxFit.cover),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Советы по изучению анатомии', style: TextStyle(fontSize: 12, fontFamily: 'Roboto')),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 160,
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
                              child: Text('Советы по изучению анатомии', style: TextStyle(fontSize: 12, fontFamily: 'Roboto')),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 160,
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
                              child: Text('Советы по изучению анатомии', style: TextStyle(fontSize: 12, fontFamily: 'Roboto')),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 160,
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
                              child: Text('Советы по изучению анатомии', style: TextStyle(fontSize: 12, fontFamily: 'Roboto')),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 160,
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
                              child: Text('Советы по изучению анатомии', style: TextStyle(fontSize: 12, fontFamily: 'Roboto')),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 160,
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
                              child: Image(image: AssetImage('assets/heart.png'), fit: BoxFit.cover),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text('Советы по изучению анатомии', style: TextStyle(fontSize: 12, fontFamily: 'Roboto')),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 160,
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
                              child: Text('Советы по изучению анатомии', style: TextStyle(fontSize: 12, fontFamily: 'Roboto')),
                            ),
                          ],
                        ),
                      ),


                      Container(
                        width: 160,
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
                              child: TextButton(
                                onPressed: () {
                                    Navigator.pushNamed(context, '/card');
                                  },
                                child: Text('Советы по изучению анатомии', style: TextStyle(fontSize: 12, fontFamily: 'Roboto')),
                              )
                            ),
                          ],
                        ),
                      ),


                      Container(
                        width: 160,
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
                              child: Text('Советы по изучению анатомии', style: TextStyle(fontSize: 12, fontFamily: 'Roboto')),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 160,
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
                              child: Text('Советы по изучению анатомии', style: TextStyle(fontSize: 12, fontFamily: 'Roboto')),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 160,
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
                              child: Text('Советы по изучению анатомии', style: TextStyle(fontSize: 12, fontFamily: 'Roboto')),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 160,
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
                              child: Text('Советы по изучению анатомии', style: TextStyle(fontSize: 12, fontFamily: 'Roboto')),
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
    );
  }

}
// ElevatedButton(onPressed: () {
// Navigator.pushNamed(context, '/todo');
// }, child: Text('Позвоночник', style: TextStyle(color: Colors.black, fontSize: 22),)
// )