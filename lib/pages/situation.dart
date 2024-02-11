import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:medicine/pages/styles.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Situation extends StatefulWidget {
  const Situation({super.key});

  @override
  State<Situation> createState() => _SituationState();
}
dynamic arrSituation = ['Студент-первокурсник на практике изучал компьютерную томограмму позвоночника и заметил, что позвоночные отверстия в шейном и поясничном отделах крупнее, чем в грудном. Как бы вы объяснили данный феномен?',
'В шейном и поясничном отделах толще спинной мозг, так как здесь от него отходят нервы к руке и ноге. В соответствии с толщиной спинного будут толще и позвоночные отверстия',
'В шейном и поясничном отделах толще спинной мозг, так как здесь от него отходят нервы к руке и ноге. В соответствии с толщиной спинного будут толще и позвоночные отверстия',
  'Что делать, если ничего делать не хочется'];

class _SituationState extends State<Situation> {
  final controller = CarouselController();
  int currentIndex = 0;
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
        title: Text('Ситуационные задачи'),
        actions: [
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: IconButton(
              onPressed: () {

              },
              icon: Icon(Icons.favorite_border, size: 30),
            ),
          )
        ],
      ),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  buildIndicator(),
                   CarouselSlider.builder(
                        itemCount: arrSituation.length,
                        itemBuilder: (context, index, realIndex) {
                          //final item = arrSituation[index];
              
                          return buildText(index);
                        },
                        carouselController: controller,
                        options: CarouselOptions(
                          height: 450,
                          initialPage: 0,
                          viewportFraction: 1,
                          enableInfiniteScroll: false,
                          enlargeCenterPage: true,
                          onPageChanged: (index, reason) {
                            setState(() {
                              print(reason.toString());
                              currentIndex = index;
                            });
                          }
                        ),
              
                    ),
                  SizedBox(height: 12,),
                  buildButtons(),
              
                ],
              ),
            ),
          ),
      ),
    );
  }


  Widget buildIndicator() => AnimatedSmoothIndicator(
      activeIndex: currentIndex,
      count: arrSituation.length,
      onDotClicked: animateToSlide,
      effect: SlideEffect(
        dotWidth: MediaQuery.of(context).size.width / (arrSituation.length+1),
        dotHeight: 12,
        activeDotColor: Colors.deepOrangeAccent,
        dotColor: Colors.grey.shade200
      ),
  );

  Widget buildButtons({bool stretch = false}) => Column(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Container(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: currentIndex == arrSituation.length-1 ? Colors.grey : Colors.deepOrangeAccent
          ),
              onPressed: next,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Далее', style: TextStyle(color: Colors.white, fontSize: 18),),
              ),
            ),
      ),
      SizedBox(height: 18,),
      Container(
        width: double.infinity,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: currentIndex == 0 ? Colors.grey : Colors.deepOrangeAccent,
          ),
          onPressed: previous,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('Предыдущий', style: TextStyle(color: Colors.white, fontSize: 18),),
          ),
        ),
      ),
    ],
  );
  void next() {
    controller.nextPage();
  }
  void previous() {
    controller.previousPage();
  }
  void animateToSlide(int index) => controller.animateToPage(index);
  
  Widget buildText(int index) => Container(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(arrSituation[index], style: TextStyle(fontSize: 20),),
      ],
    ),
  );
}
