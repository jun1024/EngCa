import 'package:flutter/material.dart';

class WordCard extends StatefulWidget {
  const WordCard({super.key});

  @override
  State<WordCard> createState() => _WordCardState();
}

class _WordCardState extends State<WordCard> {
  @override
  Widget build(BuildContext context) {
    List<String> wordExample = [
      "apple",
      "bear",
      "cat",
      "dog",
      "elephant",
      "fish",
      "giraffe",
      "horse"
    ];

    return Material(
        child: Scaffold(
            body: PageView.builder(
                controller: PageController(initialPage: 0, viewportFraction: 1),
                itemCount: wordExample.length,
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      alignment: Alignment.center,
                      color: Colors.blue.withOpacity(index * 0.1),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        elevation: 10,
                        child: Container(
                          padding: const EdgeInsets.symmetric(
                              vertical: 100, horizontal: 200),
                          child: Text(
                            wordExample[index],
                            style: const TextStyle(fontSize: 50),
                          ),
                        ),
                      ));
                })));
  }
}
