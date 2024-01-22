import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {

  final String? name ;
  const FirstPage({super.key , this.name  }); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(title: Text("Hola, $name")),
      body: Center(
        child: Column(children: [
          TextButton(onPressed: (){
            Navigator.of(context).pop();
          }, child: Text("Pop")),
          Text("hellofrom first Page")
        ]),
      ),
    );
  }
}