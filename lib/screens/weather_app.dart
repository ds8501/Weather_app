import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:blur/blur.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  late VideoPlayerController _controller;
  @override
  void initState(){
    super.initState();
    _controller=VideoPlayerController.asset('assests/night.mp4')..initialize().then((_){
      _controller.play();
      _controller.setLooping(true);
      setState(() {});
         });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Stack(
          children: [
            SizedBox.expand(child: FittedBox(
              fit: BoxFit.cover,
              child: SizedBox(
                width: _controller.value.size?.width??0,
                height: _controller.value.size?.height??0,
                child: VideoPlayer(_controller),
              ),
            ),),
            Padding( padding: EdgeInsets.fromLTRB(15, 100,150, 200),
             child: CircleAvatar(
               radius: 50,
               backgroundColor: Colors.white30,
             )
            ),
           // Padding(padding:EdgeInsets.fromLTRB(15, 500, , bottom) ,)
          ],
        )
      ),
    );
  }
}
