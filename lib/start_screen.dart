import "package:flutter/material.dart";

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/quiz-logo.png",
          width: 300,
          color: const Color.fromARGB(255, 249, 214, 255),
        ),
        const SizedBox(height: 80),
        const Text("Let's start the quiz!",
            style: TextStyle(
                fontSize: 30, color: Color.fromARGB(255, 249, 214, 255))),
        const SizedBox(height: 30),
        OutlinedButton.icon(
            onPressed: () {
              startQuiz();
            },
            style: OutlinedButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 249, 214, 255),
              side: const BorderSide(
                color: Color.fromARGB(255, 249, 214, 255),
              ),
            ),
            icon: const Icon(Icons.play_arrow),
            label: const Text("Start Quiz"))
      ],
    ));
  }
}
