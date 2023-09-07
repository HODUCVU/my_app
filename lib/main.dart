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

      body: //const Text('OK, I\'m right'),
      const Center( // use this to center body app
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/loli1.png')),
            //SizedBox(height: 20), // Add some spacing between the image and text
            Text('OK, I\'m right',
              style: TextStyle(
              fontSize: 30.0,
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.cyan,
              fontFamily: 'Itim', // added fonts/Itim-Regular.ttf and revise pubspec.yaml about fonts.
              ),
            ), //must add child: to use its parents
          ],
        )
      ),
      floatingActionButton:  FloatingActionButton(onPressed: () {
        print('Clicked');
      },
      child: const Text('Click'),),
      backgroundColor: Colors.deepOrange[200],
    );
  }
}
