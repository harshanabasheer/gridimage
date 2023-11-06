import 'package:flutter/material.dart';
import 'package:gridimage/model/gridimagemodel.dart';

class Grid extends StatefulWidget {
  const Grid({super.key});

  @override
  State<Grid> createState() => _GridState();
}

class _GridState extends State<Grid> {
  List items =[
    GridImageModel(img:'images/images1.jpeg',text: "Delhi"),
    GridImageModel(img:'images/images2.jpeg',text: "Landon"),
    GridImageModel(img:'images/images3.jpeg',text: "Vancour"),
    GridImageModel(img:'images/images4.jpeg',text: "Newyork"),
    GridImageModel(img:'images/images5.jpeg',text: "Kashmir"),
    GridImageModel(img:'images/images6.jpeg',text: "Dubai"),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GridView"),
        backgroundColor: Colors.brown,
      ),
      backgroundColor: Colors.black,
      body: Container(
        padding: EdgeInsets.all(12.0),
        child: GridView.builder(
          itemCount: items.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 4.0,
            mainAxisSpacing: 4.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            return GridTile(
              child: Image.asset(items[index].img, fit: BoxFit.cover,),
              footer: Container(
                color: Colors.black.withOpacity(0.5),
                padding: EdgeInsets.all(4.0),
                child: Text(items[index].text, style: TextStyle(color: Colors.white, fontSize: 16.0,)),
              ),
            );
          },
        ),
      ),
    );
  }
}