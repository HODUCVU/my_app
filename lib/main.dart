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
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            const Text('Hello World!!'),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Click'),
              
              
            ),
            Container(
              padding: EdgeInsets.all(20.0),
              child: Text("Container"),
              color: Colors.red,
            )
          ],
        )
      ,
      floatingActionButton:  FloatingActionButton(
        onPressed: () {
        
        },

        child: const Text('Click'),
        ),
        backgroundColor: Colors.deepOrange[200],
    );
  }
}
