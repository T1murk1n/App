import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {

  List<FlickManager> videos = [
    FlickManager(videoPlayerController: VideoPlayerController.asset('assets/video/video1.mp4',),),
    FlickManager(videoPlayerController: VideoPlayerController.asset('assets/video/video2.mp4',),),
    FlickManager(videoPlayerController: VideoPlayerController.asset('assets/video/video3.mp4',),)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            if (index == 0) {
              Navigator.pushNamedAndRemoveUntil(context, '/', (route) => false);
            }
            if (index == 1) {
              Navigator.pushNamedAndRemoveUntil(context, '/splash', (route) => false);
            }
            if (index == 2) {
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
          title: Text('Видео'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
                  itemCount: videos.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        AspectRatio(
                          aspectRatio: 16/9,
                          child: FlickVideoPlayer(flickManager: videos[index]),
                        ),
                        SizedBox(height: 25,)
                      ],
                    );
                  }
              ),
        ),



    );
  }
}