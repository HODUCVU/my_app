import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: Home(),
  ));
}

//StatelessWidget cann't changes
//StatefulWidget can changes
class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  AppBar(
        title: const Text('My First App'),
        centerTitle: true, //center title in appbar
        backgroundColor: Colors.deepOrange.shade700,
      ),

      body: 
      
        Container(
          padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 30.0),// can chinh childs. all(),...
          margin: const EdgeInsets.all(30.0), //can chinh vi tri Container
          color: Colors.white,
          child: const Text('Xin chao!!', selectionColor: Colors.amber,),
        )
      ,
      /*
      const Padding(
        padding: EdgeInsets.all(50.0),
        child: Text('XIN CHAO'),
        )
      ,
      */
      floatingActionButton:  FloatingActionButton(
        onPressed: () {
        
        },
        child: const Text('Click'),
        ),
        backgroundColor: Colors.deepOrange[200],
    );
  }
}
