import 'package:engca/wordcard.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
              onPressed: () {
                Get.to(() => const WordCard());
              },
              style: const ButtonStyle(
                elevation: MaterialStatePropertyAll(5),
                shadowColor: MaterialStatePropertyAll(Colors.black),
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                child: const Text(
                  "공부 시작",
                  style: TextStyle(fontSize: 50),
                ),
              )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              OutlinedButton(
                  onPressed: () {},
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: const Text(
                      "단어 추가",
                      style: TextStyle(fontSize: 30),
                    ),
                  )),
              const SizedBox(width: 10),
              OutlinedButton(
                  onPressed: () {},
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: const Text(
                      "단어 목록",
                      style: TextStyle(fontSize: 30),
                    ),
                  )),
              const SizedBox(width: 10),
              OutlinedButton(
                  onPressed: () {},
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: const Text(
                      "이용 방법",
                      style: TextStyle(fontSize: 30),
                    ),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
