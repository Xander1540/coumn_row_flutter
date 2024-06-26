import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(

        title: Text('Columns and Rows'),
      ),
      body: Container(
          height: 300,
          width: 300,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text('A', style: TextStyle(fontSize: 25)),
                      Text('B', style: TextStyle(fontSize: 25)),
                      Text('C', style: TextStyle(fontSize: 25)),
                      Text('D', style: TextStyle(fontSize: 25)),
                      Text('E', style: TextStyle(fontSize: 25)),
                      ElevatedButton(
                        child: Text('Button'),
                        onPressed: (){
                          print('Button clicked!!');
                        },
                      )
                    ],
                  ),
                  Text('A', style: TextStyle(fontSize: 25)),
                  Text('B', style: TextStyle(fontSize: 25)),
                  Text('C', style: TextStyle(fontSize: 25)),
                  Text('D', style: TextStyle(fontSize: 25)),
                  Text('E', style: TextStyle(fontSize: 25)),
                ],
          ),
        ),
    );
  }
}
