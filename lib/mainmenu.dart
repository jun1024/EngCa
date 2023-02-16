import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.light(),
        home: const Scaffold(
          body: Center(child: Buttons()),
        ));
  }
}

class Buttons extends StatefulWidget {
  const Buttons({super.key});

  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Buttons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
            onPressed: () {},
            child: const Text("공부 시작"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                onPressed: () {},
                child: const Text("단어 추가"),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text("단어 목록"),
              ),
              OutlinedButton(
                onPressed: () {},
                child: const Text("이용 방법"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
