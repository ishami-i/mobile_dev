import 'package:flutter/material.dart';
import 'package:dice_app/app_utils/generate_random_value.dart';

class RollDice extends StatefulWidget {
  const RollDice({super.key});

  @override
  State<RollDice> createState() => _RollDiceState();
}

class _RollDiceState extends State<RollDice> {
  int number = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Let's play", style: TextStyle(fontSize: 50.0, fontWeight: FontWeight.bold, color: Colors.white),),
            Image.asset("assets/dice-$number.png"),
            TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Colors.purpleAccent,
              ),
              onPressed: (){
                setState(() {
                  number=randomNumber();
                });
                
              }, 
              child: Text("Roll dice", style: TextStyle(color:  Colors.white, fontSize: 35.0),),
              
          )
          ],
        ),
      ),
    );
  }
}