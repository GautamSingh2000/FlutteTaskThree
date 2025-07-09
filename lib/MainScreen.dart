import 'package:flutter/material.dart';
import 'dart:math';


class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int count = 0;
  Color bgColor = Colors.white;

  Color get randomColor {
    Random random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          color: bgColor,
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      count++;
                      bgColor = randomColor;
                    });
                  },
                  icon: const Icon(Icons.keyboard_arrow_up_rounded),
                  iconSize: 40,
                ),
                const SizedBox(height: 10),
                Text(
                  "$count",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black87,
                  ),
                ),
                const SizedBox(height: 10),
                IconButton(
                  onPressed: () {
                    if (count > 0) {
                      setState(() {
                        count--;
                        bgColor = randomColor;
                      });
                    }
                  },
                  icon: const Icon(Icons.keyboard_arrow_down_rounded),
                  iconSize: 40,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
