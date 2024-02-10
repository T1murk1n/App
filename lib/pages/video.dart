import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayerWidget extends StatefulWidget {
  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {
  late VideoPlayerController _videoPlayerController;

  final FlickManager flickManager = FlickManager(videoPlayerController: VideoPlayerController.asset('assets/video/video-e38952ed73bf4686986d710b0891ca10-V.mp4',
  ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            if (index == 0) {
              Navigator.pushNamed(context, '/');
            }
            if (index == 1) {
              Navigator.pushNamed(context, '/splash');
            }
            if (index == 2) {
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
          title: Text('Видео'),
        ),
        body:
      Center(
        child: AspectRatio(
          aspectRatio: 16/9,
          child: FlickVideoPlayer(flickManager: flickManager,),
        ),
      )
    );
  }
}