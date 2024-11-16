import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.rollDice, {super.key});

  final void Function() rollDice;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 150,
        ),
        Image.asset(
          'assets/images/titan-3.JPG',
          width: 170,
        ),
        const SizedBox(
          height: 20,
        ),
        Image.asset(
          'assets/images/titan-1.JPG',
          width: 400,
        ),
        const SizedBox(
          height: 30,
        ),
        Image.asset(
          'assets/images/titan-2.JPG',
          width: 60,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.pink),
          onPressed: rollDice,
          child: const Text(
            'Begin Quest!',
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Image.asset(
                'assets/images/titan-4.JPG',
                width: 100,
              ),
              const SizedBox(width: 180),
              Image.asset(
                'assets/images/titan-5.JPG',
                width: 110,
              )
            ],
          ),
        ),
      ],
    );
  }
}
