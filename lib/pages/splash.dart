import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:blur/blur.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState() {

    super.initState();
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
    
    Future.delayed(Duration(seconds: 1), () {
      Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
    });
  }

  void dispose () {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
        overlays: SystemUiOverlay.values);
    super.dispose();
  }

  Widget build(BuildContext context) {
    return
      Stack(
        children:
        [
          Scaffold(
              backgroundColor: Colors.white,
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child:
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Медицинский',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                fontSize: 32
                            ),
                          )
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('компас',
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.bold,
                                fontSize: 32
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 16),
                      Text('Учи медицину с помощью',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            fontSize: 16
                        ),
                      ),
                      Text('краткой теории, тестов, видео',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            fontSize: 16
                        ),
                      ),
                      Text('и ситуационных задач',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontWeight: FontWeight.w400,
                            fontSize: 16
                        ),
                      ),
                      SizedBox(height: 52),
                      Image(image: AssetImage('assets/logo.png')),

                    ],
                  ),
                ),
              )
          ),
          Positioned(
            left: -85,
            bottom: -140,
            child:
            Blur(
              blur: 0.5,
              child: Opacity(
                opacity: 0.2,
                child: Container(
                width: 500,
                height: 500,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(250),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.purple.shade100,
                        Colors.indigo.shade100
                      ],
                    )
                  ),
                ),
              ),
            )
            ),
          Positioned(
                right: -150,
                top: -180,
                child:
                Blur(
                  blur: 0.3,
                  child: Opacity(
                    opacity: 0.2,
                    child: Container(
                      width: 400,
                      height: 400,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(200),
                          gradient: LinearGradient(
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                            colors: [
                              Colors.yellow.shade50,
                              Colors.indigo.shade100
                            ],
                          )
                      ),
                    ),
                  ),
                )
            ),
        ]
      );
  }
}