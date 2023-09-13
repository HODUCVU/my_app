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
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text('Column 1'),
                /*
                ElevatedButton(onPressed: () {}, 
                child: const Text('Click1'),
                )
                */
                Image(image: AssetImage('assets/loli3.png')),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
             // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Column2'),
                Image(image: AssetImage('assets/loli1.png')),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              //crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('Column2'),
                Image(image: AssetImage('assets/loli2.png')),
      
              ],
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
