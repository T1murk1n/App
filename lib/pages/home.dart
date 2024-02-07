import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List todoList = [];

  @override
  void initState() {
    super.initState();

    //initFirebase();

    todoList.addAll(['1.	Позвонок  - vertebra', '2.	Тело позвонка - corpus vertebrae', '3.	Дуга позвонка -  arcus vertebrae',
      '4.	Ножки дуги позвонка - pedunculi arcus vertebrae', '5.	Позвоночное отверстие -  foramen vertebrale', '6.	Позвоночный канал - canalis vertebralis',
      '7.	Остистый отросток - processus spinosus', '8.	Поперечные отростки - processus transversus', '9.	Верхние суставные отростки - processus articulares superiores ',
      '10.	Нижние суставные отростки - processus articulares inferiores', '11.	Верхнюю позвоночная вырезка - incisurae vertebrales superiores ',
      '12.	Нижняя позвоночная вырезка -  incisurae vertebrales inferiores)', '13.	Шейные позвонки - vertebrae cervicales',
      '14.	Отверстие поперечного отростка - foramen processus transversus', '15.	Атлант - atlas', '16.	Передняя дуга позвонка -arcus anterior vertebralis ',
      '17.	Нижняя дуга позвонка - arcus anterior posterior', '18. Латеральные массы - massae laterales', '19. Передний бугорок - tuberculum anterior',]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      appBar: AppBar(
        title: Text('Medicine'),
        centerTitle: true,
      ),
      body:ListView.builder(
          itemCount: todoList .length,
          itemBuilder: (BuildContext context, int index) {
            return Dismissible(
              key: Key(todoList[index]),
              child: Card(
                child: ListTile(
                  title: Text(todoList[index]),
                  trailing:  IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Colors.deepOrangeAccent,
                      ),
                      onPressed: () {
                        showDialog(context: context, builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text(todoList[index]),
                          );
                        });
                      }
                  ),
                ),
              ),
              onDismissed: (direction) {
                setState(() {
                  todoList.removeAt(index);
                });
              },
            );

          }
      ),
    );
  }
}

