import 'package:flick_video_player/flick_video_player.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:medicine/pages/styles.dart';

class VideoPlayerWidget extends StatefulWidget {
  @override
  State<VideoPlayerWidget> createState() => _VideoPlayerWidgetState();
}

class _VideoPlayerWidgetState extends State<VideoPlayerWidget> {

  List<String> videosTitles = [
    "Axis", "Поясничный позвонок (vertebrae lumbalis)", "Крестец (sacrum)", "Atlas", ""
  ];

  List<FlickManager> videos = [
    FlickManager(videoPlayerController: VideoPlayerController.asset('assets/video/axis.mp4',),),
    FlickManager(videoPlayerController: VideoPlayerController.asset('assets/video/lumbalis.mp4',),),
    FlickManager(videoPlayerController: VideoPlayerController.asset('assets/video/sacrum.mp4',),),
    FlickManager(videoPlayerController: VideoPlayerController.asset('assets/video/atlas.mp4',),),
    FlickManager(videoPlayerController: VideoPlayerController.asset('assets/video/video.mp4',),),
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
          title: const Text('Видео'),
          actions: [
            Padding(
              padding: const EdgeInsets.only(left: 12.0, right: 12.0),
              child: IconButton(
                onPressed: () {

                },
                icon: Icon(Icons.favorite_border, size: 30),
              ),
            )
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: ListView.builder(
                  itemCount: videos.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Column(
                      children: [
                        Text('${videosTitles[index]}', style: titleText,),
                        SizedBox(height: 10,),
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