import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:weather1_app/screens/current_weather.dart';
import 'package:weather1_app/services/weather_api.dart';

class homepage extends StatefulWidget {
  const homepage({Key? key}) : super(key: key);
  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  late VideoPlayerController _controller;
  weatherclient client=weatherclient();
  @override
  void initState(){
    super.initState();
    _controller=VideoPlayerController.asset('assests/night.mp4')..initialize().then((_){
      _controller.play();
      _controller.setLooping(true);
      setState(() {});
         });
    client.getcurrentweather('lucknow');
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
            currentweather('10', 'chennai','45','456','458','856','7892'),



            // Padding(padding: EdgeInsets.fromLTRB(80, 43, 70, 70),
            //   child: Container(
            //     height: 50,
            //     width: 500,
            //     decoration: BoxDecoration(
            //       color: Colors.grey,
            //     ),
            //     child: Text('           Chennai',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 21),),
            //   ),),
            // Padding(padding: EdgeInsets.only(right: 100,top:280),
            //   child: Container(
            //     height: 100,
            //     width: 100,
            //     decoration: BoxDecoration(
            //       color: Colors.transparent,
            //     ),
            //
            //   ),),
            // Padding(padding: EdgeInsets.fromLTRB(5, 430, 180, 50),
            //   child: Container(
            //     height: 120,
            //     width: 110,
            //     decoration: BoxDecoration(
            //       shape: BoxShape.rectangle,
            //       borderRadius: BorderRadius.circular(10),
            //       color: Colors.white60,),
            //
            //       child:Column(
            //         children: [
            //           IconButton(onPressed:(){},
            //               icon: Icon(Icons.wind_power,size: 40,)),
            //           SizedBox(height: 20,),
            //           Text('1024 ',style: TextStyle(color: Colors.black,fontSize: 20),),
            //           Text('Wind ',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
            //         ],
            //       )
            //   ),),
            // Padding(padding: EdgeInsets.fromLTRB(130, 430, 80, 50),
            //   child: Container(
            //     height: 120,
            //     width: 110,
            //     decoration: BoxDecoration(
            //       shape: BoxShape.rectangle,
            //       borderRadius: BorderRadius.circular(10),
            //       color: Colors.white60,
            //     ),
            //       child:Column(
            //         children: [
            //           IconButton(onPressed:(){},
            //               icon: Icon(Icons.airline_stops_sharp,size: 40,)),
            //           SizedBox(height: 20,),
            //           Text('1024 ',style: TextStyle(color: Colors.black,fontSize: 20),),
            //           Text('Pressure ',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
            //         ],
            //       )
            //   ),),
            // Padding(padding: EdgeInsets.fromLTRB(250, 430, 5, 50),
            //   child: Container(
            //     height: 120,
            //     width: 100,
            //     decoration: BoxDecoration(
            //       shape: BoxShape.rectangle,
            //       borderRadius: BorderRadius.circular(10),
            //       color: Colors.white60,
            //     ),
            //       child:Column(
            //         children: [
            //           IconButton(onPressed:(){},
            //               icon: Icon(Icons.sunny,size: 40,)),
            //           SizedBox(height: 20,),
            //           Text('1024 ',style: TextStyle(color: Colors.black,fontSize: 20),),
            //           Text('Sunrise ',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
            //         ],
            //       )
            //   ),),
            // Padding(padding: EdgeInsets.fromLTRB(250, 560, 5, 50),
            //   child: Container(
            //     height: 120,
            //     width: 100,
            //     decoration: BoxDecoration(
            //       shape: BoxShape.rectangle,
            //       borderRadius: BorderRadius.circular(10),
            //       color: Colors.white60,
            //     ),
            //       child:Column(
            //         children: [
            //           IconButton(onPressed:(){},
            //               icon: Icon(Icons.water,size: 40,)),
            //           SizedBox(height: 20,),
            //           Text('62',style: TextStyle(color: Colors.black,fontSize: 20),),
            //           Text('Humidity',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
            //         ],
            //       )
            //   ),),
            // Padding(padding: EdgeInsets.fromLTRB(130, 560, 80, 50),
            //   child: Container(
            //     height: 120,
            //     width: 110,
            //     decoration: BoxDecoration(
            //       shape: BoxShape.rectangle,
            //       borderRadius: BorderRadius.circular(10),
            //       color: Colors.white60,
            //     ),
            //       child:Column(
            //         children: [
            //           IconButton(onPressed:(){},
            //               icon: Icon(Icons.remove_red_eye_sharp,size: 40,)),
            //           SizedBox(height: 20,),
            //           Text('1024 ',style: TextStyle(color: Colors.black,fontSize: 20),),
            //           Text('Visibility ',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
            //         ],
            //       )
            //   ),),
            // Padding(padding: EdgeInsets.fromLTRB(5, 560, 180, 50),
            //   child: Container(
            //     height: 120,
            //     width: 110,
            //     decoration: BoxDecoration(
            //       shape: BoxShape.rectangle,
            //       borderRadius: BorderRadius.circular(10),
            //       color: Colors.white60,
            //     ),
            //       child:Column(
            //         children: [
            //           IconButton(onPressed:(){},
            //               icon: Icon(Icons.sunny_snowing,size: 40,)),
            //           SizedBox(height: 20,),
            //           Text('6:30 ',style: TextStyle(color: Colors.black,fontSize: 20),),
            //           Text('sunset',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
            //         ],
            //       )
            //   ),),
            // Padding(padding: EdgeInsets.fromLTRB(5, 700, 5, 5),
            //   child: Container(
            //     height: 70,
            //     width: 400,
            //     decoration: BoxDecoration(
            //       shape: BoxShape.rectangle,
            //       borderRadius: BorderRadius.circular(20),
            //       color: Colors.white,
            //     ),
            //     child: Row(
            //       children: [
            //         IconButton(onPressed: (){}, icon: Icon(Icons.abc_outlined,size: 45,)),
            //         SizedBox(width:90),
            //         IconButton(onPressed: (){}, icon: Icon(Icons.ac_unit_rounded,size: 45,)),
            //         SizedBox(width: 110),
            //         IconButton(onPressed: (){}, icon: Icon(Icons.access_alarm_sharp,size: 45,)),
            //       ],
            //     )
            //   ),),

          ],
        )
      ),
    );
  }
}
