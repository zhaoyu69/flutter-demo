import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';
import 'package:video_player/video_player.dart';

class VideoExample extends StatefulWidget {
  //https://nico-android-apk.oss-cn-beijing.aliyuncs.com/landscape.mp4
  final String title;
  const VideoExample(this.title);

  @override
  _ChewieVideoWidget1State createState() => _ChewieVideoWidget1State();
}

class _ChewieVideoWidget1State extends State<VideoExample> {
  VideoPlayerController _videoPlayerController;
  ChewieController _chewieController;

  @override
  void initState() {
    super.initState();
    _videoPlayerController = VideoPlayerController.network(
      "https://nico-android-apk.oss-cn-beijing.aliyuncs.com/landscape.mp4"
    );
    _chewieController = ChewieController(
      videoPlayerController: _videoPlayerController,
      autoPlay: true,
      fullScreenByDefault: true,
      looping: true,
      //aspectRatio: 3 / 2.0,
      //customControls: CustomControls(),
    );
  }

  @override
  void dispose() {
    _videoPlayerController.dispose();
    _chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Chewie(controller: _chewieController,),
    );
  }
}
