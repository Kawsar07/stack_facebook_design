import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main (){
  runApp(MaterialApp(home : MyApp(),debugShowCheckedModeBanner: false,));
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Stack Flutter'),
      centerTitle: true,
      ),
     body: Column(
       children: [
         Stack(
           clipBehavior: Clip.none,
           alignment: Alignment.center,
           children: [
             Container(
               height: 200,
               decoration: BoxDecoration(
                 border: Border.all(
                   color: Colors.white,
                   width: 5.0,
                 ),
                 //color: Colors.orange,
                 image: DecorationImage(
                   image: AssetImage('assets/1.png'), fit: BoxFit.cover,
                 )
               ),
             ),
             Positioned(
               bottom: -60.0,
               child: Container(
                 height: 150,
                 width: 150,

                 decoration: BoxDecoration(
                   shape: BoxShape.circle,
                   //color: Colors.orange,
                     image: DecorationImage(
                       image: AssetImage('assets/img.png'), fit: BoxFit.cover,
                     ),
                 ),
               ),
             )
           ],
         ),
         SizedBox(
           height: 50.0,
         ),
         Text('Kawsar Anam Plabon', style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),),
         Text('App Developer', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),)
       ],
     ),
    );
  }
}

