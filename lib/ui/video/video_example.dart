import 'package:flutter/material.dart';
import 'package:chewie/chewie.dart';

class VideoExample extends StatelessWidget {
  final String title;

  const VideoExample(this.title);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children: <Widget>[

        ],
      ),
    );
  }
}
