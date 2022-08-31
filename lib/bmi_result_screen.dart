import 'package:flutter/material.dart';

class BMIResultScreen extends StatefulWidget {
  final bool isMale;
  final double result;
  final int age;


  const BMIResultScreen({Key? key,  required this.isMale, required this.result, required this.age}) : super(key: key);

  @override
  State<BMIResultScreen> createState() => _BMIResultScreenState();
}

class _BMIResultScreenState extends State<BMIResultScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff041426),
      appBar: AppBar(
        title: const Text("Bmi Calculator"),
        centerTitle: true,
        backgroundColor: const Color(0xff041426),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Gender : ${widget.isMale? "Male" : "Female"}",style: TextStyle(fontSize: 24,color: Colors.white),),
            Text("Result : ${widget.result.round()}",style: TextStyle(fontSize: 24,color: Colors.white),),
            Text("Age : ${widget.age}",style: TextStyle(fontSize: 24,color: Colors.white),),
          ],
        ),
      ),
    );
  }
}
