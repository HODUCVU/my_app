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
        Center( // use this to center body app
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.signal_wifi_statusbar_connected_no_internet_4_sharp,
            color: Colors.greenAccent,
            size: 100.0),
            ElevatedButton(
              onPressed: () {

              }, 
              child: const Column( 
                children: [
                Text('Click me now!!!'),
                Icon(Icons.bubble_chart),
                ]
              ),
              
            ),
            const SizedBox(height: 30),

            ElevatedButton.icon(
              onPressed: () {}, 
              icon: const Icon(
                Icons.access_alarm_outlined
                ), 
              label: const Text('Alarm'),
              style:ElevatedButton.styleFrom(
                backgroundColor: Colors.blueAccent),
            ),

            const SizedBox(height: 30),

            IconButton(
              onPressed: () {}, 
              icon: const Icon(Icons.mail),
              color: Colors.greenAccent),
          ],
        )
      ),
      floatingActionButton:  FloatingActionButton(onPressed: () {
       
      },
      child: const Text('Click'),),
      backgroundColor: Colors.deepOrange[200],
    );
  }
}
