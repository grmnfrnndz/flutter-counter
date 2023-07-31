import 'package:flutter/material.dart';


class CounterFunctionScreen extends StatefulWidget {

  const CounterFunctionScreen({super.key});

  @override
  State<CounterFunctionScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterFunctionScreen> {

  int clickCounter = 0;


  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: const Text('Counter Functions'),
          actions: [
            IconButton(onPressed: () {
              setState(() {
                clickCounter = 0;
              });
            },icon: const Icon(Icons.refresh_rounded)),
          ] 
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('$clickCounter', style: const TextStyle(fontSize: 100, fontWeight: FontWeight.w100)),
              Text((clickCounter > 1) ? "Clicks" : "Click", style: const TextStyle(fontSize: 25)),
            ],)
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
              CustomButton(icon: Icons.refresh_rounded, onPress: () {
                setState(() {
                  clickCounter = 0;
                });
              },),
              const SizedBox(height: 10,),
              CustomButton(icon: Icons.exposure_minus_1_outlined, onPress: () {
                setState(() {
                  if (clickCounter == 0) return;
                  clickCounter--;
                });
              }),
              const SizedBox(height: 10,),
              CustomButton(icon: Icons.plus_one_outlined, onPress: () {
                setState(() {
                  clickCounter++;
                });
              }),
          ],
        )
      );
  }
}

class CustomButton extends StatelessWidget {

  final IconData icon;
  final VoidCallback? onPress;


  const CustomButton({
    super.key,
    required this.icon, 
    this.onPress
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      enableFeedback: true,
      elevation: 5,
      backgroundColor: Colors.blueGrey,
      onPressed: onPress,
      child: Icon(icon)
    );
  }
}