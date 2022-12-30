import 'package:flutter/material.dart';

Widget currentweather(String temp, String location, String wind, String humidity, String sunset, String sunrise,String pressure){
  return Column(
    children: [

    Padding(padding: EdgeInsets.fromLTRB(80, 50, 70, 70),
      child: Container(
        height: 50,
        width: 500,
        decoration: BoxDecoration(
          color: Colors.grey,
        ),
        child: Text('           Chennai',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 21),),
      ),),
    Row(
      children: [
        Padding(padding: EdgeInsets.fromLTRB(2, 5,2,700),
          child: Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                color: Colors.white60,),

              child:Column(
                children: [
                  IconButton(onPressed:(){},
                      icon: Icon(Icons.wind_power,size: 20,)),
                  SizedBox(height: 5,),
                  Text('1024 ',style: TextStyle(color: Colors.black,fontSize: 20),),
                  Text('Wind ',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              )
          ),),
       Padding(padding: EdgeInsets.fromLTRB(40, 5, 30, 700),
      child: Container(
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
            color: Colors.white60,
          ),
          child:Column(
            children: [
              IconButton(onPressed:(){},
                  icon: Icon(Icons.airline_stops_sharp,size: 20,)),
              SizedBox(height: 5,),
              Text('1024 ',style: TextStyle(color: Colors.black,fontSize: 20),),
              Text('Pressure ',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
            ],
          )
      ),),
    Padding(padding: EdgeInsets.fromLTRB(10, 5, 5, 700),
      child: Container(
          height: 100,
          width:70,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
            color: Colors.white60,
          ),
          child:Column(
            children: [
              IconButton(onPressed:(){},
                  icon: Icon(Icons.sunny,size: 30,)),
              SizedBox(height: 5,),
              Text('1024 ',style: TextStyle(color: Colors.black,fontSize: 20),),
              Text('Sunrise ',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
            ],
          )
      ),), ],
    ),
    Row(
      children: [
        Padding(padding: EdgeInsets.fromLTRB(5, 43, 70, 40),
          child: Container(
              height: 50,
              width: 50,
              decoration: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(10),
                color: Colors.white60,
              ),
              child:Column(
                children: [
                  IconButton(onPressed:(){},
                      icon: Icon(Icons.water,size: 40,)),
                  SizedBox(height: 20,),
                  Text('62',style: TextStyle(color: Colors.black,fontSize: 20),),
                  Text('Humidity',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
                ],
              )
          ),),
        Padding(padding: EdgeInsets.fromLTRB(25, 5, 100, 40),
      child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
            color: Colors.white60,
          ),
          child:Column(
            children: [
              IconButton(onPressed:(){},
                  icon: Icon(Icons.remove_red_eye_sharp,size: 40,)),
              SizedBox(height: 20,),
              Text('1024 ',style: TextStyle(color: Colors.black,fontSize: 20),),
              Text('Visibility ',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
            ],
          )
      ),),
        Padding(padding: EdgeInsets.fromLTRB(2,2,2,2),
        child: Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.rectangle,
            borderRadius: BorderRadius.circular(10),
            color: Colors.white60,
          ),
          child:Column(
            children: [
              IconButton(onPressed:(){},
                  icon: Icon(Icons.sunny_snowing,size: 20,)),
              SizedBox(height: 5,),
              Text('6:30 ',style: TextStyle(color: Colors.black,fontSize: 20),),
              Text('sunset',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
            ],
          )
      ),),
      ],
    ),

    ],
  );
}