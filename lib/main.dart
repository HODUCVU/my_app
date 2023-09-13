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
        Row(
          children: [
            const Expanded(
              flex: 5,
              child: Image(image: AssetImage('assets/loli1.png')),
            ),
            Expanded( //expand object for full screen ~
              flex: 1, //length or similar
              child: Container(
                padding: const EdgeInsets.all(30.0),
                color: Colors.blueGrey,
                child: const Text('1'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(30.0),
                color: Colors.cyan,
                child: const Text('2'),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                padding: const EdgeInsets.all(30.0),
                color: Colors.lightGreen,
                child: const Text('3'),
              ),
            ),
          ],
        )
      ,
      floatingActionButton:  FloatingActionButton(
        onPressed: () {
        
        },

        child: const Text('Click'),
        ),
        backgroundColor: Colors.white,
    );
  }
}
