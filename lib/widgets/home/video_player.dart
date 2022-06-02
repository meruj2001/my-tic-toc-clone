import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class AppVideoPlayer extends StatefulWidget {
  const AppVideoPlayer({Key? key}) : super(key: key);

  @override
  _AppVideoPlayerState createState() => _AppVideoPlayerState();
}

class _AppVideoPlayerState extends State<AppVideoPlayer> {
  late VideoPlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.network('https://www.sample-videos.com/video123/mp4/240/big_buck_bunny_240p_5mb.mp4')
      ..initialize().then(
        (_) {
          _controller.play();
          setState(() {});
        },
      );
    _controller.setLooping(true);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: _controller.value.isInitialized
          ? AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              child: VideoPlayer(_controller),
            )
          : Container(
              color: Colors.black,
              child: const CircularProgressIndicator(
                color: Colors.white,
              ),
            ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }
}
