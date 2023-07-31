import 'package:flutter/material.dart';

import 'package:hello_world_app/presentation/screens/screens.dart';

void main() {

// widget init
  runApp(MyApp());


}



class MyApp extends StatelessWidget {
  
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      home: CounterFunctionScreen(),
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.orange 
      ),
    );
  }
}