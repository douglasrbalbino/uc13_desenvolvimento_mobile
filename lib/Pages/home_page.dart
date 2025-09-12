import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,

        title: Text(widget.title),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 50, top: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.person, size: 15),
                Text("Nome:", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            Text("Super Ronaldo"),
            SizedBox(height: 20),

            Row(
              children: [
                Icon(Icons.calendar_today, size: 15),
                Text("Idade:", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            Text("59"),
            SizedBox(height: 20),

            Row(
              children: [
                Icon(Icons.person, size: 15),
                Text("Email:", style: TextStyle(fontWeight: FontWeight.bold)),
              ],
            ),
            Text("meunomeehronaldo@gmail.com"),
            SizedBox(height: 20),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'É um botão',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
