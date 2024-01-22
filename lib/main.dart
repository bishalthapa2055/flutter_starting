import 'package:demo/pages/first.dart';
import 'package:demo/pages/second.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const TadasAppProject());
}

class TadasAppProject extends StatelessWidget {
  const TadasAppProject({super.key});

  // This widget is the+ root of your application.
  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 6, 129, 33)),
        useMaterial3: true,
      ),
      // home: const MyHomePage(title: 'Bishal Project'),
      debugShowCheckedModeBanner: false,
      routes: {
        "/" : (context) =>const  MyHomePage(title: "title"),
        "/first" : (context) =>const FirstPage(),
        "/second" : (context) =>const SecodnPage()
      },
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
  bool value = false;
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _counter = 10;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text(
          "Navigations",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget> [
            TextButton(onPressed:(){
              Navigator.of(context).push(MaterialPageRoute(builder: (context) => const FirstPage(name : "Bishal Thapa")));
            }
            , child: Text("First Page")),
            // SizedBox(height: ""),
            TextButton(onPressed:(){
              Navigator.pushNamed(context, "/second" , arguments: "thapa");
            }, child: Text("Second Page")),
          ],
        ),
      ),
    );
  }
}
