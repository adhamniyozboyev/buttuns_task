import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Mytask(),
  ));
}

class Mytask extends StatefulWidget {
  const Mytask({Key? key}) : super(key: key);
  @override
  State<Mytask> createState() => _MytaskState();
}

class _MytaskState extends State<Mytask> {
  int index = 0;
  List path = [
    'image/windows2.jpg',
    'image/windows3.jpg',
    'image/windows4.jpg',
    'image/windows5.jpg'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
          height: 700,
          child: Image.asset(path[index%4],fit: BoxFit.contain,),
        ),
        Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
                onPressed: () {
           
                  setState(() {
                 index--;
                  });
                },
                child: Icon(Icons.arrow_back_ios)),
                 Container(
                  alignment: Alignment.center,
                  height: 40,
                  width: 150,
                  color: Colors.blue,
                  child: Text('Image :$index',style: TextStyle(color: Colors.white,fontSize: 20),)),
        TextButton(onPressed: (){
          
          setState(() {
            index++;
          });
        }, child: Icon(Icons.arrow_forward_ios)),
          ],
        ),
       

      ]),
    );
  }
}
