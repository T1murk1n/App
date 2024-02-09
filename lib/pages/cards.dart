import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:medicine/pages/styles.dart';

class Cards extends StatefulWidget {
  const Cards({super.key});

  @override
  State<Cards> createState() => _CardsState();
}

dynamic arrLatin = [['Vertebrae thoracicae','Грудной отдел'], ['Hjhgjdhfgjdhgjdhgjdhg', 'Херня какая-то'], ['Vertebra', 'Позвонок'],
  ['Corpus vertebrae', 'Тело позвонка']];

class _CardsState extends State<Cards> {
  final controller = CarouselController();
  int i=1;
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
        title: Text('Карточки'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: CarouselSlider.builder(
                    itemCount: arrLatin.length,
                    itemBuilder: (context, index, realIndex) {
                      return buildImage(index);
                    },
                    carouselController: controller,
                    options: CarouselOptions(
                      viewportFraction: 0.8,
                      height: 390,
                      initialPage: 0,
                      enableInfiniteScroll: false,
                      enlargeCenterPage: true,
                    )
                ),
              ),
              SizedBox(height: 18,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Нажмите, чтобы перевернуть', style: text,)
                ],
              ),
              SizedBox(height: 18,),
              buildButtons(i),
            ],
          ),
        ),
      ),

    );
  }
  Widget buildImage(int index) => FlipCard(
    fill: Fill.fillBack, // Fill the back side of the card to make in the same size as the front.
    direction: FlipDirection.HORIZONTAL, // nitially display.
    front: Container(
      height: 250,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey.shade100,
      ),
      child: Center(child: Text(arrLatin[index][0], style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, fontFamily: 'Roboto'),)),

    ),
    back: Container(
      height: 250,
      width: 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(50),
        color: Colors.grey.shade100,
      ),
      child: Center(child: Text(arrLatin[index][1], style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500, fontFamily: 'Roboto'),)),
    ),
  );

  Widget buildButtons(int index) => Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Ink(
          decoration: const ShapeDecoration(
            color: Colors.deepOrangeAccent,
            shape: CircleBorder(),
          ),
          child:IconButton(
            onPressed: previous,
            iconSize: 32,
            color: Colors.white,
            icon: Icon(Icons.arrow_back_ios_rounded),

          )
      ),
      Text('$i/${arrLatin.length}', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
      Ink(
        decoration: const ShapeDecoration(
          color: Colors.deepOrangeAccent,
          shape: CircleBorder(),
        ),
        child: IconButton(
          onPressed: next,
          iconSize: 32,
          color: Colors.white,
          icon: Icon(Icons.arrow_forward_ios_rounded),

        )
      ),


    ],
  );
  void next() {
    controller.nextPage();
    setState(() {
      if(i < arrLatin.length) {
        i++;
      }
    });
  }
  void previous() {
    controller.previousPage();
    setState(() {
      if(i>1) {
        i--;
      }
    });
  }

}
